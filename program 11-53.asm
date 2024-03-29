;  It loads data from 0A00h into IX, then outputs it to port 3.
;  first loading the values at 0A00h into IX, and then it's loading IX+00 into A. 
;  then doing the same thing for IX+01, IX+03, and IX+04. 
;  then incrementing HL twice. 
;  then outputting A to 03 and calling 0900. 
;  then decrementing B and checking if it's equal to 0. 
;  If it is, it pops AF, BC, and DE off the stack and returns.
 
.org 0800h
  LD  B,00DDh      ;NUMBER OF STEPS
  LD  HL,0A00h
  LD  IX,904h
  LD  A,(HL)
  LD  (IX+00),A
  INC HL
  LD  A,(HL)
  LD  (IX+01),A 
  INC HL
  LD  A,(HL)
  LD  (IX+03),A
  INC HL
  LD  A,(HL)
  LD  (IX+04),A
  INC HL
  LD  A,(HL)
  INC HL
  OUT (03),A
  CALL 0900
  DEC B
  LD A,B
  OR  A
  JP NZ, 0809
  JP 0800
  PUSH  AF
  PUSH  BC
  PUSH DE
  LD BC, 0FFFFh
  LD DE, 0FFFFh
  DEC DE
  LD A,D
  OR E
  JP NZ, 909h
  DEC BC
  LD A,B
  OR C
  JP NZ, 906
  POP DE
  POP BC
  POP AF
  RET
  
  ; DATA at 0A00:
  ; 1C 00 00 00 01
  ; 38 00 00 00 23
  ; 1C 00 00 00 86
  ; 1C 00 00 00 2C
  ; 38 00 00 00 38
  ; 1C 00 00 00 32
  ; 1C 00 00 00 62
  ; 1C 00 00 00 CO
  
  
