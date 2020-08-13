
module pcmcia_sram(
    input _CE1,
    input _CE2,
    input _REG,
    input _OE,
    input _WE,
    input A0,
    input A21,
    inout D15,

    input DISK_RAM, // 0=DISK ; 1=RAM
    input RAM_SIZE, // 0=4Mb ; 1=2Mb

    output CE_HIGH,
    output CE_LOW,
    output CE_SINGLE,
    inout D15_A0,
    output _BYTE,

    input [5:1] A,
    output [7:0] D
    );

wire [4:0] addr = A[5:1]; //TODO : might not be necessary ? Just to be sure that the address index is shifted correctly
reg [7:0] datout;
wire CIS;

assign CE_LOW = _REG & !A21; // lower 2Mb and not in config mode
assign CE_HIGH = _REG & A21 & !RAM_SIZE; // higher 2Mb and not in config mode
assign CE_SINGLE = _REG & ( !A21 | !RAM_SIZE); // full 4Mb
assign CIS = !_REG & !_CE1 & ( !_CE2 | (_CE2 & !A0) ) & !_OE; // Config rom mode
assign _BYTE = 1'bZ; //!( !_CE1 & _CE2 & A0 ); // (not) 8bit mode
assign D15 = 1'bZ; //(_OE | _BYTE | !_REG) ? 1'bZ : D15_A0 ; // transfer D15 to host when read in 16 bit mode
assign D15_A0 = 1'bZ; //_BYTE ? ( _WE ? 1'bZ : D15 ) : 1'b1; // address high byte when in 8bit mode ; else transfer D15 to RAM when write in 16bit mode
assign D = CIS ? datout : 8'bZ; // set configuration data to data bus

always @(posedge CIS) begin
   if (DISK_RAM) begin //RAM

		case(addr)
			0 : datout <= 8'b00000001; // CISTPL_DEVICE
			1 : datout <= 8'b00000011; // tuple: link to next
			2 : datout <= 8'b01100100; // SRAM 100 ns
 //  cis_rom_ram[3] = 8'b00001110; // 4MB= 00001110 ; 2MB= 00000110
			3 : datout <= RAM_SIZE ? 8'b00000110: 8'b00001110; // 4MB= 00001110 ; 2MB= 00000110
			4 : datout <= 8'b11111111; // tuple: end
 			5 : datout <= 8'b00010101; // CISTPL_VERS_1
			6 : datout <= 8'b00001101; // tuple: link to next
			7 : datout <= 8'b00000100; // PCMCIA 1.x
			8 : datout <= 8'b00000001; // PCMCIA 1.1
			9 : datout <= 8'b01000110; // F
			10: datout <= 8'b01001100; // L
			11: datout <= 8'b01000001; // A
			12: datout <= 8'b01000011; // C
			13: datout <= 8'b01001111; // O
			14: datout <= 8'b00000000; // NULL delimeter
			15: datout <= 8'b00110001; // 1
			16: datout <= 8'b00000000; // NULL delimeter
			17: datout <= 8'b00000000; // NULL delimeter
			18: datout <= 8'b11111111; // tuple: end
			19: datout <= 8'b11111111; // tuple: end of chain
			20: datout <= 8'b11111111; // CISTPL_END
			default: datout <= 8'b11111111;
		endcase
	end else begin //ROM
		datout <= (addr<=20)? 8'b00000000 : 8'b11111111 ;
//		case(addr)
//			0 : datout <= 8'b00000000; // CISTPL_DEVICE
//			1 : datout <= 8'b00000000; // tuple: link to next
//			default: datout <= 8'b11111111;
//		endcase
	end
end


//reg [7:0] cis_rom_ram[31:0];
//reg [7:0] cis_rom_disk[31:0];
//assign D = CIS ? (DISK_RAM ? cis_rom_ram[addr] : cis_rom_disk[addr]) : 8'bZ; // set configuration data to data bus

//always @(negedge CIS) begin
//   D = 8'bZ;
//end
//   if (DISK_RAM=1) begin
/*
always @(posedge CIS) begin
   cis_rom_ram[0] = 8'b00000001; // CISTPL_DEVICE
   cis_rom_ram[1] = 8'b00000011; // tuple: link to next
   cis_rom_ram[2] = 8'b01100100; // SRAM 100 ns
 //  cis_rom_ram[3] = 8'b00001110; // 4MB= 00001110 ; 2MB= 00000110
	cis_rom_ram[3] = RAM_SIZE ? 8'b00000110: 8'b00001110; // 4MB= 00001110 ; 2MB= 00000110
   cis_rom_ram[4] = 8'b11111111; // tuple: end
   cis_rom_ram[5] = 8'b00010101; // CISTPL_VERS_1
   cis_rom_ram[6] = 8'b00001110; // tuple: link to next
   cis_rom_ram[7] = 8'b00000100; // PCMCIA 1.x
   cis_rom_ram[8] = 8'b00000001; // PCMCIA 1.1
   cis_rom_ram[9] = 8'b01010011; // S
   cis_rom_ram[10] = 8'b01000001; // A
   cis_rom_ram[11] = 8'b01001011; // K
   cis_rom_ram[12] = 8'b01010101; // U
   cis_rom_ram[13] = 8'b01010010; // R
   cis_rom_ram[14] = 8'b01000001; // A
   cis_rom_ram[15] = 8'b00000000; // NULL delimeter
   cis_rom_ram[16] = 8'b00110001; // 1
   cis_rom_ram[17] = 8'b00000000; // NULL delimeter
   cis_rom_ram[18] = 8'b00000000; // NULL delimeter
   cis_rom_ram[19] = 8'b11111111; // tuple: end
   cis_rom_ram[20] = 8'b11111111; // tuple: end of chain
   cis_rom_ram[21] = 8'b11111111; // CISTPL_END
   cis_rom_ram[22] = 8'b11111111;
   cis_rom_ram[23] = 8'b11111111;
   cis_rom_ram[24] = 8'b11111111;
   cis_rom_ram[25] = 8'b11111111;
   cis_rom_ram[26] = 8'b11111111;
   cis_rom_ram[27] = 8'b11111111;
   cis_rom_ram[28] = 8'b11111111;
   cis_rom_ram[29] = 8'b11111111;
   cis_rom_ram[30] = 8'b11111111;
   cis_rom_ram[31] = 8'b11111111;

   cis_rom_disk[0] = 8'b00000000;
   cis_rom_disk[1] = 8'b00000000;
   cis_rom_disk[2] = 8'b00000000;
   cis_rom_disk[3] = 8'b00000000;
   cis_rom_disk[4] = 8'b00000000;
   cis_rom_disk[5] = 8'b00000000;
   cis_rom_disk[6] = 8'b00000000;
   cis_rom_disk[7] = 8'b00000000;
   cis_rom_disk[8] = 8'b00000000;
   cis_rom_disk[9] = 8'b00000000;
   cis_rom_disk[10] = 8'b00000000;
   cis_rom_disk[11] = 8'b00000000;
   cis_rom_disk[12] = 8'b00000000;
   cis_rom_disk[13] = 8'b00000000;
   cis_rom_disk[14] = 8'b00000000;
   cis_rom_disk[15] = 8'b00000000;
   cis_rom_disk[16] = 8'b00000000;
   cis_rom_disk[17] = 8'b00000000;
   cis_rom_disk[18] = 8'b00000000;
   cis_rom_disk[19] = 8'b00000000;
   cis_rom_disk[20] = 8'b00000000;
   cis_rom_disk[21] = 8'b11111111;
   cis_rom_disk[22] = 8'b11111111;
   cis_rom_disk[23] = 8'b11111111;
   cis_rom_disk[24] = 8'b11111111;
   cis_rom_disk[25] = 8'b11111111;
   cis_rom_disk[26] = 8'b11111111;
   cis_rom_disk[27] = 8'b11111111;
   cis_rom_disk[28] = 8'b11111111;
   cis_rom_disk[29] = 8'b11111111;
   cis_rom_disk[30] = 8'b11111111;
   cis_rom_disk[31] = 8'b11111111;
	
	datout = DISK_RAM ? cis_rom_ram[addr] : cis_rom_disk[addr];
//   end
end
*/

endmodule


