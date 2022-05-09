# tec-RELAY

TE 11-50, issue 11 page 50

"The TEC-1 Relay Board has been designed to give the TEC-1 an interface with the real world. " Its designed to give the TEC-1 an interface with the real world. It can be used in such applications as the control of model railways or complex light sequencers. It can also be used to implement timing and control functions for machinery. The project will drive 8 on-board relays or external relays with suitable coil resistances and/or it is possible to drive small low-voltage lamps directly.

The RELAY BOARD can be used to control the real world. It can be used to turn lights, motors and other equipment on and off. The only limitations are very heavy currents and high voltages. The RELAY BOARD takes up to 8 relays and these can be turned ON and OFF in absolutely ANY order, by the program we have developed.

The latch board allows the Z80 microprocessor to control up to 40 relays by latching the data bus onto a positive-edge triggered device. The port which is to receive the data is selected by the 74LS138, according to the information on the address bus. Up to 5 boards can be added to the TEC-1. These are stacked on top of each other and accessed via ports 03, 04, 05, 06, and 07.

The Mon 1A EPROM provides a way to control relays in order to produce delay routines of varying length. The RELAY BOARD takes up to 8 relays and these can be turned ON and OFF in absolutely ANY order, by the program developed. The only limitations are very heavy currents and high voltages. With this RELAY BOARD, the TEC-1 can access the REAL WORLD.

The program we have developed for this project controls the 8 outputs and will switch them ON and OFF in any combination, as per the program. It is merely a matter of changing the data at 0A00 to produce the required sequence. The data governs the time of the delay between each operation and this can be set for a millisecond delay or up to a 100-hour delay. To do this requires 4 bytes of information. The next byte governs how many relays are activated at the end of each delay. These 5 bytes form a 'UNIT' or 'STEP'. The theory of operation of this program is quite complex. It will take two or more chapters before we are up to describing its features. In the meantime we will describe it in a simplified way. The program is designed to be 'event driven', it is constantly looking for something to happen. When it sees that something has happened, it reacts to it.



- https://easyeda.com/editor#id=b6f81ea490e140b69059f1e1deb4ee8f



## Iterate
- Using asm code measure the response time of various mechanical relays and solid state relays. 
- Convert asm code to MINT code and repeat test. Table the differences. .
- Connect relays to other projects and see how well they perform, eg; cnc, globe, robot arm etc.

## Ref
