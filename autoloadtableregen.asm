; Regenerate autoload tables, make sure not to remove this.
AutoloadTableGeneration:
.org 0x2000B4C
    dcd 0x2000E00
    dcd 0x2000E24

.org 0x200F01C
    dcd CustomStuffRegion+LengthOfTheFile-ExtraDataStartingPosition

.org 0x2000E00
    dcd 0x1FF8000
    dcd 0x7FA0
    dcd 0x0
    dcd 0x27E0000
    dcd 0xE0
    dcd 0x0
    dcd CustomStuffRegion
    .area 4,0
        dcd 0x0+LengthOfTheFile-ExtraDataStartingPosition
    .endarea