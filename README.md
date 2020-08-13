# PCMCIA SRAM
This project is a 4MB or 2MB PCMCIA SRAM for Amiga 600 and 1200, using components available in 2020.

Second hand commercial PCMCIA SRAM cards are rare and expensive. Sakura-IT once created new devices, then published their designs when production was discontinued : https://github.com/Sakura-IT/ppa-pcmcia-sram ; thank you. The idea and CPLD CIS code is inspired from it.

About the project :
- It works in A600 and A1200. It is not tested with any other device. It is 16bit only and does not implement 8bit mode that is required to be compliant to the PCMCIA standard.
- It might work as storage, but is not tested. If you need storage you should just use a CF card and adapter anyway. These days nobody would lose their time fitting a battery in a RAM card.
- It is shorter than a regular PCMCIA card, to be more convenient in our Amiga comuters. It is thin enough to fit a standard PCMCIA case. You can fit it in the case and connector of a cheap and available PCMCIA CF adapter. 
- It uses components available in 2020. This is important since there have been several designs but many are already obsolete. Reusing the connector of the aforementioned adapter could be important since they are not so common.
- It uses a 5V SRAM chip to get rid of the level converters. These converters take PCB space, have a cost, and need time to solder. The RAM chip is pricey however, so you might chose to make a 2MB card using just one of it.
- The SRAM chip is fast and the CIS advertise the fastest speed possible. Thanks to this the A600 and A1200 runs faster : they benefit from the added RAM with direct access for the CPU, at least for 16bit applications on the A1200. 

About PCMCIA in amiga computers, you should already know that its address space is sometimes used by internal accelerators and cannot be used at the same time. If you have such an accelerator, you might not be interersted to use this project in the same computer anyway. 

# Disclaimer
This is a hobbyist project, it comes with no warranty and no support. Also remember that the Amiga machines are about 30 years old and may fail because of such hardware expansions.

This version is not connected to Sakura-IT, please don't bother them with issues you might have because of it.

I publish this work using the CC-BY-SA license.

If you find it useful and want to reward me : I am always looking for Amiga/Amstrad CPC hardware to repair and hack, please contact me.

# BOM
- 1x or 2x CY62167ELL-45ZXI 5V SRAM (do not use 3.3V CY6167EV !) or 1x CY62177ESL--55ZXI 5V SRAM (not tested by me, tell me if this works for you)
- 1x XC9536XL CPLD
- 1x SPX3819M5-L-3-3 3.3v LDO
- 2x 1uF (or more) 0805 capacitors
- 4x or 5x 100nF 0805 capacitors
- 1x female 68pin PCMCIA connector, or a PCMCIA CF adapter from which you will reuse the connector and case

# Making it
I recommend 0.6mm or 0.8mm PCB since it needs to accomodate the PCMCIA connector and height.

Components are SMD, and TSOP RAM have thin pin pitch. You need to know what you are doing.

Check for shorts at least between 5V, 3.3V, and GND traces before applying power !

The programming port does not need to be soldered since it needs to be programmed just once : you can just hold it in place during the few seconds required for programming.

CPLD code is generated using Xilinx ISE 14.7. There are several methods to program the XC9536XL. I personally use xsvfduino : https://github.com/wschutzer/xsvfduino

NOTE : There are solder pads on the PCB that could be used to implement 8/16bit mode and the "high byte on low pins" feature. Cypress replied that the BYTE mode cannot be used dynamically so it might not work. Amiga computers do not and can not use it anyway.

# Case
To reuse a PCMCIA CF adapter case and connector you first need to disassemble the two metal parts from the plastic body.
- The metal parts are identical and held together by hooks every cm on their long sides. Place the adapter vertically with the long side on the bench. Insert a knife blade between the platic and the metal on the side of the CF opening, cut the glue, and push down to remove the first hook. The hooks on each side are alternated, so after opening one one the left you need to open the next from the right, and so on. Do the same on the other log side. The two remaining hooks are on the short side besides the PCMCIA connector, and the metal part is glued to the PCMCIA connector.
- To desolder the connector from the PCB : lift each pin carefully. Use flux.
- Before soldering the PCMCIA connector to your PCB, bend the pins back to their original place so they will make contact to the PCB. Make sure the board and connector are correctly lined up.
- Cut the indent in the plastic body so you can place the board with soldered connector inside. Cut the plastic body 1 or 2 mm longer than the PCB end.
- Ensure that the PCB is installed the correct way in the plastic body : the guides on the plastic body are keyed. The component side is the top side. THIS IS VERY IMPORTANT.
- Test your card before closing the case. Use AmigaTestKit (https://github.com/keirf/Amiga-Stuff/tree/master/testkit) to test the full 4Mb. Once you are sure the board is OK then you are ready to enclose it.
- With strong scissors, cut both metal parts about 1mm shorter than the plastic body. You may damage your scissors however the result is far better than using a saw.
- Be sure that the metal parts are in good shape and the hooks are aligned. Place the lower one in the plastic body.
- Insulate the top one with tape, at least where the capacitors may touch it. Then place it in the plastic body : the hooks will close it.
- The rear end with sharp metal edges require a protection for your fingers. I personally seal it with hot glue.

# Using it
- Plug it to the PCMCIA port
- Turn amiga on

If you care about your Amiga, this might be a bad idea to plug or unplug the device while live. However if you want to access the CIS info using PrepCard, you need to plug the card after powering the computer.
