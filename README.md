# tec-RELAY

"The TEC-1 Relay Board has been designed to give the TEC-1 an interface with the real world. "

https://easyeda.com/editor#id=b6f81ea490e140b69059f1e1deb4ee8f


## TE 11-50

![](https://github.com/SteveJustin1963/tec-RELAY/blob/master/TE%20circuit.png)

The TEC-1 Relay Board has been designed to give the TEC-1 an interface with the real world. It can be used in such applications as the control of model railways or complex light sequencers. It can also be used to implement timing and control functions for machinery. The project will drive 8 on-board relays or external relays with suitable coil resistances and/or it is possible to drive small low-voltage lamps directly. We do not recommend switching 240v via the relays on the PC board as the terminations are very near the other TEC-1 components. If you require to switch 240v, the onboard relay can become a slave to power the higer-voltage relay. Each of the relay contacts has been brought to the edge of the PC board where it is labelled 'NO' for Normally Open contact and 'NC' for Normally Closed contact. The centre 'C' is the Common contact. The Hexadecimal value for each relay has also been printed on the board to make programming easier. If relays are not required, small light bulbs can be connected between the two holes normally used for the relay coil.

## CONSTRUCTION 
Three types of latch chips can be used on the board. These are: 74LS273, 74LS374, or 74LS377. Each chip is capable of performing the latch fUnction and the only pin which requires a different logic level is pin 1. On the 74LS273, pin 1 is master RESET, active LOW. So this pin must be tied HIGH to stop this chip from remaining in the reset condition.  On the 74LS374, pin 1 is an output  enable, active LOW. When pin 1 is HIGH, the outputs will go to a high impedance state, effectively disconnecting them from circuit. When pin 1 is LOW, the outputs are normal, being either HIGH or LOW, depending on the contents of the latch. Pin 1 on the 74LS377 is an ENABLE, active LOW. When this pin is HIGH, the contents of the latch cannot be changed by any of the input signals. When the pin is LOW, the latch operates as normal. None of these special funtions are required on our project so pin 1 can be tied HIGH or LOW and remain in this condition. For the 74LS273, pin 1 is tied HIGH and this requires a very short jumper as shown on the overlay. For the 74LS374 and 74LS377, pin 1 is tied LOW and this requires a jumper link the full length of the IC as shown on the overlay. Solder in the necessary link for pin 1 and another link on the other side of the IC. Next fit the eight 1k resistors, the eight NPN transistors and eight protection diodes. A 100n decoupling capacitor fits above the input socket. The board is designed to take two types of relays. They are both single pole double throw types and one has a contact rating of 1 amp, while the other has a 3amp contact rating. Select the type your require and install them. This unit is designed to plug into the EXPANSION PORT SOCKET on the TEC-1 and there is two methods of connecting them together. One is to individually wire the leads onto a dip header or dip plug and plug it into the expansions socket. The other is to use a wire wrap socket. The socket is inserted into the holes on the PC board and pushed home. The pins are now carefully soldered. Next a dip header is soldered to the end of the long leads of the wire-wrap socket. Solder the corner pins first, then align the rest of the pins and solder them. Care must be taken not to over-heat the dip header as the plastic melts easily. Finally insert a 20 pin IC socket and fit the latch IC. Two jumper wires are also needed to complete the wiring. These are taken from the 'STROBE' hole and the UNREGULATED POSITIVE IN hole. The Unregulated IN line goes to the INPUT terminal of the 7805 regulator as 12v is needed to operate the relays. The other line, from the STROBE hole, is taken to pin 12 of the 74LS138 IN-OUT decoder nearest the 74C923 chip. This is output 03. Solder a 24 pin IC socket to the EXPANSION PORT on the TEC-1 and plug the RELAY BOARD dip header socket into this expansion port socket. The board should fit neatly above the TEC-1. The printing on the RELAY board will be up-side-down because all wiring to the relays is done from the back. The unit is now ready for use.  

