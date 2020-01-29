.nds

CustomStuffRegion equ 0x21DA340
Offset equ CustomStuffRegion-DefaultCustomDataStart
DefaultCustomDataStart equ 0x21773C0
KartCount equ #0x25

.open "arm9.bin",0x02000000

.thumb
; List of hooks
.org 0x2025EA8
    dcd DefaultKartOrder

.org 0x2025E30
    dcd MenuKartIDOrder

.org 0x2025E5C
    dcd MenuKartIDOrder

; Reading kart_appear longer
.org 0x2025E18 
    cmp r4, KartCount

; Loading one more character slot
.org 0x2025DDE
    CMP R4, KartCount

.org 0x2025E3C
    CMP R4, KartCount

.org 0x2025E50
    CMP R4, KartCount

; Arrow left
.org 0x202925A 
    mov R5, KartCount-1

.org 0x202929A
    MOV R5, KartCount-1

; Arrow right
.org 0x20292CA
   CMP R5, KartCount

.org 0x202930A
    CMP R5, KartCount

.org 0x2025DA0
    dcd KartNameReferenceList

.arm
.org 0x2071B3C
    bl kartSoundsTable

.include "autoloadtableregen.asm"
.close


.open "arm9.bin",0x02000000+Offset
.skip DefaultCustomDataStart-0x2000000
ExtraDataStartingPosition:

.include "defaultkartorder.asm"
.include "menukartidorder.asm"
.include "kartnamereferencelist.asm"
.include "sounds.asm"

LengthOfTheFile:
.close