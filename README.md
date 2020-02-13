# tec-RELAY

"The TEC-1 Relay Board has been designed to give the TEC-1 an interface with the real world. "

https://easyeda.com/editor#id=b6f81ea490e140b69059f1e1deb4ee8f


## TE 11-50

![](https://github.com/SteveJustin1963/tec-RELAY/blob/master/TE%20circuit.png)

The TEC-1 Relay Board has been designed to give the TEC-1 an interface with the real world. It can be used in such applications as the control of model railways or complex light sequencers. It can also be used to implement timing and control functions for machinery. The project will drive 8 on-board relays or external relays with suitable coil resistances and/or it is possible to drive small low-voltage lamps directly. We do not recommend switching 240v via the relays on the PC board as the terminations are very near the other TEC-1 components. If you require to switch 240v, the onboard relay can become a slave to power the higer-voltage relay. Each of the relay contacts has been brought to the edge of the PC board where it is labelled 'NO' for Normally Open contact and 'NC' for Normally Closed contact. The centre 'C' is the Common contact. The Hexadecimal value for each relay has also been printed on the board to make programming easier. If relays are not required, small light bulbs can be connected between the two holes normally used for the relay coil.

## CONSTRUCTION 
Three types of latch chips can be used on the board. These are: 74LS273, 74LS374, or 74LS377. Each chip is capable of performing the latch fUnction and the only pin which requires a different logic level is pin 1. On the 74LS273, pin 1 is master RESET, active LOW. So this pin must be tied HIGH to stop this chip from remaining in the reset condition.  On the 74LS374, pin 1 is an output  enable, active LOW. When pin 1 is HIGH, the outputs will go to a high impedance state, effectively disconnecting them from circuit. When pin 1 is LOW, the outputs are normal, being either HIGH or LOW, depending on the contents of the latch. Pin 1 on the 74LS377 is an ENABLE, active LOW. When this pin is HIGH, the contents of the latch cannot be changed by any of the input signals. When the pin is LOW, the latch operates as normal. None of these special funtions are required on our project so pin 1 can be tied HIGH or LOW and remain in this condition. For the 74LS273, pin 1 is tied HIGH and this requires a very short jumper as shown on the overlay. For the 74LS374 and 74LS377, pin 1 is tied LOW and this requires a jumper link the full length of the IC as shown on the overlay. Solder in the necessary link for pin 1 and another link on the other side of the IC. Next fit the eight 1k resistors, the eight NPN transistors and eight protection diodes. A 100n decoupling capacitor fits above the input socket. The board is designed to take two types of relays. They are both single pole double throw types and one has a contact rating of 1 amp, while the other has a 3amp contact rating. Select the type your require and install them. This unit is designed to plug into the EXPANSION PORT SOCKET on the TEC-1 and there is two methods of connecting them together. One is to individually wire the leads onto a dip header or dip plug and plug it into the expansions socket. The other is to use a wire wrap socket. The socket is inserted into the holes on the PC board and pushed home. The pins are now carefully soldered. Next a dip header is soldered to the end of the long leads of the wire-wrap socket. Solder the corner pins first, then align the rest of the pins and solder them. Care must be taken not to over-heat the dip header as the plastic melts easily. Finally insert a 20 pin IC socket and fit the latch IC. Two jumper wires are also needed to complete the wiring. These are taken from the 'STROBE' hole and the UNREGULATED POSITIVE IN hole. The Unregulated IN line goes to the INPUT terminal of the 7805 regulator as 12v is needed to operate the relays. The other line, from the STROBE hole, is taken to pin 12 of the 74LS138 IN-OUT decoder nearest the 74C923 chip. This is output 03. Solder a 24 pin IC socket to the EXPANSION PORT on the TEC-1 and plug the RELAY BOARD dip header socket into this expansion port socket. The board should fit neatly above the TEC-1. The printing on the RELAY board will be up-side-down because all wiring to the relays is done from the back. The unit is now ready for use.  

## HOW IT WORKS
The latch board works in the same manner as the display latches and displays. Look at the timing diagram for the Z80 INPUT/OUTPUT cycle.

![](https://github.com/SteveJustin1963/tec-RELAY/blob/master/timing.png)

Compare the IORQ signal to the DATA BUS signal. It can be seen that the DATA BUS stabilizes first, then the IORQ signal goes LOW and HIGH again. During this the DATA BUS has remained stable and now that the cycle is complete, it is no longer required. The latch used is a positive-edgetriggered device. It can be seen that the positive-going edge of the IORQ, which is passed to the latch via the 74LS138, comes late in the cycle, but as the data is still stable, the latch is able to record this information and energise a relay. The port which is to receive the data is selected by the 74LS138, according to the information on the address bus. There are 256 ports addressable by the Z80, but only 8 are decoded on the TEC-1. This still gives us the availablility of using 40 relays! Up to 5 boards can be added to the TEC-1. These are stacked on top of each other and accessed via ports 03, 04, 05, 06, and 07. Ports 00, 01 and 02 are used by the TEC-1 for the keyboard, and displays. 

## HOW TO USE THE RELAY BOARD
If you have a Mon 1A EPROM, try the following:

Start at address 0800, program the following: 

01, 02, 04, 08, 10, 20, 40, 80, FF ADdress 0580, GO, GO. 

The relays will sequence in order. 

If you have the MON-1 EPROM, enter the following at 0800: 

3E, 01, D3, 03, C7. RESET, GO. 

The first relay will switch on and the computer will reset. Substitute different values for 01 in the program and watch the operation of the relay or relays. With this RELAY BOARD your TEC-1 can access the REAL WORLD. We will now show you how to use it and produce delay routines of varying length so that you can turn lights, motors and pieces of equipment on and off. 

## PARTS LIST
* 8 1k 1/4 watt
* 1 100n greencap
* 8 BC 547 or BC 338 transistors
* 8 1N 4002 diodes
* 8 - relays SPDT type S 4060
* 1 - 74LS273 Latch IC
* 1 - wire-wrap socket 24 pin
* 1 - dip header 24 pin
* 1 - 20 pin IC socket

The RELAY BOARD takes up to 8 relays and these can be turned ON and OFF in absolutely ANY order, by the program we have developed. The only limitations are very heavy currents and high voltages. The relays are somewhat exposed and are close to the components on the TEC1, so we do not suggest 240v switching. Secondly the relays are designed for 1 amp operation and should be limited to around this value for reliable operation. We suggest only low voltage operation (12v) with currents up to 1 amp for the relays and transistors. We have a high current version (3 amp), S 4066 and this will enable loads up to 36 watts to be handled by each output. This is quite considerable in electronic terms. Higher currents and voltages will have to be handled via a relay which is remotely positioned so that it can be provided with the insulation it needs. Don't forget, - any relays switching high voltages can still have a 12v coil. This means that you can combine relays and transistors on the one RELAY BOARD. For fast sequencing, a set of transistors will be the best choice as relays have a low operating frequency. The choice of using a relay or transistor will depend on the type of load you are driving. You will need to know such factors as current requirements, voltage, speed of operation and if any spikes are present. Our main concern at this stage is to test the RELAY BOARD and get it working. To do this you will will need some form of indication on each of the outputs to show when they are operating. This can be a miniature lamp or a light emitting diode. Fit 8 of these and keep them near each relay to show which relay they are indicating. The program that we have developed for this project controls the 8 outputs and will switch them ON and OFF in any combination, as per the program. It is merely a matter of changing the data at 0A00 to produce the required sequence. The data governs the time of the delay between each operation and this can be set for a millisecond delay or up to a 100-hour delay. To do this requires 4 bytes of information. The next byte governs how many relays are activated at the end of each delay. These 5 bytes form a 'UNIT' or 'STEP'. The theory of operation of this program is quite complex. It will take two or more chapters before we are up to describing its features. In the meantime we will describe it in a simplified way.

![](https://github.com/SteveJustin1963/tec-RELAY/blob/master/plug.png)

The above diagram shows a close-up of the plug which connects the relay board to the TEC-1. It is made up of a wire-wrap socket and a dip-header plug. The wirewrap socket is mounted on the components side of the board with its long leads extending out the side shown in the photo. The dip plug is soldered onto these 'thick' leads, effectively turning them into thin pins suitable for inserting into the EXPANSION PORT socket.

Program listing

https://github.com/SteveJustin1963/tec-RELAY/blob/master/program%2011-53

![](https://github.com/SteveJustin1963/tec-RELAY/blob/master/DOES.png)




