; thumb size: 160 bytes; src size 980 bytes
; assembly: 109 lines
; peep hole pass: 0 instructions removed and 1 updated
; peep hole pass: 0 instructions removed and 0 updated


; start
    .startaddr 0x2fc00
    .hex 708E3B92C615A841C49866C975EE5197 ; magic number
    .hex 95CE725CF2DCDABD ; hex template hash
    .hex CE11290A96CEAB9F ; program hash
    .short 2   ; num. globals
    .short 0 ; patched with number of words resulting from assembly
    .word 0 ; reserved
    .word 0 ; reserved
    .word 0 ; reserved
;
; Function <main>
;
    .section code
    b .themain      
    .balign 4
__main__1_Lit:
    .short 0xffff, 0x0000   ; action literal
    @stackmark litfunc
.themain:
    push {lr}
    push {r5, r6}
    bl _hlp_0
    bl __main__1
    pop {r6, r5}
    pop {pc}
    @stackempty litfunc
.section code
__main__1_bkpt:
    bkpt 1
__main__1:
    @stackmark func
    @stackmark args
    push {lr}
    @stackmark locals
__main__1_locals:
    ldr r0, [r6, #0]
    lsls r0, r0, #30
    bmi __main__1_bkpt
__main__1_bkpt_after:
__brkp_1:
    movs r0, #0
    bl Array_::mk
    push {r0}; tmpstore @1
    ldr r0, [r6, #4]
    bl pxt::decr ; *P1 (raw)
    pop {r0} ; tmpref @1
    str r0, [r6, #4]
    @stackempty locals
__brkp_2:
    movs r0, _img0@hi  ; ldptr
    lsls r0, r0, #8
    adds r0, _img0@lo
    movs r1, #25
lsls r1, r1, #4
    bl basic::showLeds
    @stackempty locals
.ret.1:
    @stackempty locals
    pop {pc}
    @stackempty func
    @stackempty args
    .section code
_hlp_0:
    @stackmark args
    push {lr}
    mov r5, r0
    bl pxtrt::getGlobalsPtr
    mov r6, r0
    pop {pc}
    @stackempty args
_js_end:
.balign 4
_img0:
 .short 0xffff
        .short 5, 5
        .byte 0,0,0,0,0,0,1,0,1,0,0,0,0,0,0,1,0,0,0,1,0,1,1,1,0,42
_program_end:
    .balign 16
    .hex 41140E2FB82FA2BB
    .short 150
    .short 812
    .short 0, 0   ; future use
_stored_program: .string "..."
