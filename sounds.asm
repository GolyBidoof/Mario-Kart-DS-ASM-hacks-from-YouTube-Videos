.arm
KartSoundsTable:
    CMP r0, KartCount+1
    MOV R1, #3
    ADDLS PC, PC, R0, LSL#2
    B endSwitch
    B sounds0 ;0
    B sounds2
    B sounds1
    B sounds0
    B sounds3
    B sounds3
    B sounds0
    B sounds2
    B sounds1
    B sounds0
    B sounds3 ;10
    B sounds3
    B sounds0
    B sounds1
    B sounds1
    B sounds0
    B sounds3
    B sounds3
    B sounds0
    B sounds2
    B sounds1 ;20
    B sounds0
    B sounds2
    B sounds1
    B sounds0
    B sounds1
    B sounds2
    B sounds0
    B sounds1
    B sounds2
    B sounds0 ;30
    B sounds1
    B sounds2
    B sounds0
    B sounds2
    B sounds2
    B sounds3 ;36
sounds0:
    MOV     R1, #0
    B       endSwitch
sounds1:
    MOV     R1, #0
    B       endSwitch
sounds2:
    MOV     R1, #1
    B       endSwitch
sounds3:
    MOV     R1, #2
endSwitch:
    MOV     R0, R1
    BX      LR