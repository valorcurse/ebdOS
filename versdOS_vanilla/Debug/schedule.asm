;******************************************************************************
;* G3 TMS470 C/C++ Codegen                                          PC v4.9.9 *
;* Date/Time created: Tue Dec 10 11:03:53 2013                                *
;******************************************************************************
	.compiler_opts --abi=eabi --arm_vmrs_si_workaround=on --code_state=16 --disable_dual_state --embedded_constants=on --endian=little --float_support=FPv4SPD16 --hll_source=on --object_format=elf --silicon_version=7M4 --symdebug:dwarf --symdebug:dwarf_version=2 
	.thumb

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../src/schedule.c")
	.dwattr $C$DW$CU, DW_AT_producer("G3 TMS470 C/C++ Codegen PC v4.9.9 Copyright (c) 1996-2013 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\Developing\workspace\versdOS\Debug")

$C$DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("pushRegistersToCurrentPSP")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("pushRegistersToCurrentPSP")
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_decl_file("..\src\schedule.h")
	.dwattr $C$DW$1, DW_AT_decl_line(0x16)
	.dwattr $C$DW$1, DW_AT_decl_column(0x06)
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$10)
	.dwendtag $C$DW$1


$C$DW$3	.dwtag  DW_TAG_subprogram, DW_AT_name("popRegistersFromCurrentPSP")
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("popRegistersFromCurrentPSP")
	.dwattr $C$DW$3, DW_AT_declaration
	.dwattr $C$DW$3, DW_AT_external
	.dwattr $C$DW$3, DW_AT_decl_file("..\src\schedule.h")
	.dwattr $C$DW$3, DW_AT_decl_line(0x17)
	.dwattr $C$DW$3, DW_AT_decl_column(0x06)
$C$DW$4	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$10)
	.dwendtag $C$DW$3


$C$DW$5	.dwtag  DW_TAG_subprogram, DW_AT_name("readPSP")
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("readPSP")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$5, DW_AT_declaration
	.dwattr $C$DW$5, DW_AT_external
	.dwattr $C$DW$5, DW_AT_decl_file("..\src\schedule.h")
	.dwattr $C$DW$5, DW_AT_decl_line(0x18)
	.dwattr $C$DW$5, DW_AT_decl_column(0x08)
$C$DW$6	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$10)
	.dwendtag $C$DW$5


$C$DW$7	.dwtag  DW_TAG_subprogram, DW_AT_name("writePSP")
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("writePSP")
	.dwattr $C$DW$7, DW_AT_declaration
	.dwattr $C$DW$7, DW_AT_external
	.dwattr $C$DW$7, DW_AT_decl_file("..\src\schedule.h")
	.dwattr $C$DW$7, DW_AT_decl_line(0x19)
	.dwattr $C$DW$7, DW_AT_decl_column(0x06)
$C$DW$8	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$3)
	.dwendtag $C$DW$7


$C$DW$9	.dwtag  DW_TAG_subprogram, DW_AT_name("readMSP")
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("readMSP")
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$9, DW_AT_declaration
	.dwattr $C$DW$9, DW_AT_external
	.dwattr $C$DW$9, DW_AT_decl_file("..\src\schedule.h")
	.dwattr $C$DW$9, DW_AT_decl_line(0x1a)
	.dwattr $C$DW$9, DW_AT_decl_column(0x08)
$C$DW$10	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$10)
	.dwendtag $C$DW$9

$C$DW$11	.dwtag  DW_TAG_variable, DW_AT_name("taskList")
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("taskList")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$11, DW_AT_declaration
	.dwattr $C$DW$11, DW_AT_external
	.dwattr $C$DW$11, DW_AT_decl_file("../src/schedule.c")
	.dwattr $C$DW$11, DW_AT_decl_line(0x14)
	.dwattr $C$DW$11, DW_AT_decl_column(0x0d)
	.global	currentTask
	.bss	currentTask,4,4
$C$DW$12	.dwtag  DW_TAG_variable, DW_AT_name("currentTask")
	.dwattr $C$DW$12, DW_AT_TI_symbol_name("currentTask")
	.dwattr $C$DW$12, DW_AT_location[DW_OP_addr currentTask]
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$12, DW_AT_external
	.dwattr $C$DW$12, DW_AT_decl_file("../src/schedule.c")
	.dwattr $C$DW$12, DW_AT_decl_line(0x17)
	.dwattr $C$DW$12, DW_AT_decl_column(0x08)
	.global	taskToExecute
	.bss	taskToExecute,4,4
$C$DW$13	.dwtag  DW_TAG_variable, DW_AT_name("taskToExecute")
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("taskToExecute")
	.dwattr $C$DW$13, DW_AT_location[DW_OP_addr taskToExecute]
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$13, DW_AT_external
	.dwattr $C$DW$13, DW_AT_decl_file("../src/schedule.c")
	.dwattr $C$DW$13, DW_AT_decl_line(0x18)
	.dwattr $C$DW$13, DW_AT_decl_column(0x08)
	.global	iTempRegister
	.data
	.align	4
	.elfsym	iTempRegister,SYM_SIZE(4)
iTempRegister:
	.bits	0,32			; iTempRegister @ 0

$C$DW$14	.dwtag  DW_TAG_variable, DW_AT_name("iTempRegister")
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("iTempRegister")
	.dwattr $C$DW$14, DW_AT_location[DW_OP_addr iTempRegister]
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$14, DW_AT_external
	.dwattr $C$DW$14, DW_AT_decl_file("../src/schedule.c")
	.dwattr $C$DW$14, DW_AT_decl_line(0x1e)
	.dwattr $C$DW$14, DW_AT_decl_column(0x05)
	.data
	.align	4
	.elfsym	i$1,SYM_SIZE(4)
i$1:
	.bits	0,32			; i$1 @ 0

;	C:\ti\ccsv5\tools\compiler\arm_4.9.9\bin\acpia470.exe -@C:\\TEMP\\0529612 
	.sect	".text:SystickISR"
	.clink
	.thumbfunc SystickISR
	.thumb
	.global	SystickISR

$C$DW$15	.dwtag  DW_TAG_subprogram, DW_AT_name("SystickISR")
	.dwattr $C$DW$15, DW_AT_low_pc(SystickISR)
	.dwattr $C$DW$15, DW_AT_high_pc(0x00)
	.dwattr $C$DW$15, DW_AT_TI_symbol_name("SystickISR")
	.dwattr $C$DW$15, DW_AT_external
	.dwattr $C$DW$15, DW_AT_TI_begin_file("../src/schedule.c")
	.dwattr $C$DW$15, DW_AT_TI_begin_line(0x26)
	.dwattr $C$DW$15, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$15, DW_AT_decl_file("../src/schedule.c")
	.dwattr $C$DW$15, DW_AT_decl_line(0x26)
	.dwattr $C$DW$15, DW_AT_decl_column(0x06)
	.dwattr $C$DW$15, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "../src/schedule.c",line 39,column 1,is_stmt,address SystickISR

	.dwfde $C$DW$CIE, SystickISR
;----------------------------------------------------------------------
;  38 | void SystickISR(void)                                                  
;----------------------------------------------------------------------

;*****************************************************************************
;* FUNCTION NAME: SystickISR                                                 *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V9,SP,LR,SR,D0,D0_hi,D1,D1_hi,D2,D2_hi, *
;*                           D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,D6_hi,D7,D7_hi,   *
;*                           FPEXC,FPSCR                                     *
;*   Regs Used         : A1,A2,A3,A4,V9,SP,LR,SR,D0,D0_hi,D1,D1_hi,D2,D2_hi, *
;*                           D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,D6_hi,D7,D7_hi,   *
;*                           FPEXC,FPSCR                                     *
;*   Local Frame Size  : 0 Args + 0 Auto + 4 Save = 4 byte                   *
;*****************************************************************************
SystickISR:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwcfi	save_reg_to_reg, 84, 14
        PUSH      {A4, LR}              ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 4
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	cfa_offset, 8
	.dwcfi	save_reg_to_mem, 3, -8
	.dwcfi	cfa_offset, 8
	.dwpsn	file "../src/schedule.c",line 40,column 2,is_stmt
;----------------------------------------------------------------------
;  40 | schedule();                                                            
;----------------------------------------------------------------------
$C$DW$16	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$16, DW_AT_low_pc(0x00)
	.dwattr $C$DW$16, DW_AT_name("schedule")
	.dwattr $C$DW$16, DW_AT_TI_call
        BL        schedule              ; [DPU_3_PIPE] |40| 
        ; CALL OCCURS {schedule }        ; [] |40| 
	.dwpsn	file "../src/schedule.c",line 41,column 1,is_stmt
	.dwcfi	cfa_offset, 8
$C$DW$17	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$17, DW_AT_low_pc(0x00)
	.dwattr $C$DW$17, DW_AT_TI_return
        POP       {A4, PC}              ; [DPU_3_PIPE] 
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$15, DW_AT_TI_end_file("../src/schedule.c")
	.dwattr $C$DW$15, DW_AT_TI_end_line(0x29)
	.dwattr $C$DW$15, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$15

	.sect	".text:PendSVISR"
	.clink
	.thumbfunc PendSVISR
	.thumb
	.global	PendSVISR

$C$DW$18	.dwtag  DW_TAG_subprogram, DW_AT_name("PendSVISR")
	.dwattr $C$DW$18, DW_AT_low_pc(PendSVISR)
	.dwattr $C$DW$18, DW_AT_high_pc(0x00)
	.dwattr $C$DW$18, DW_AT_TI_symbol_name("PendSVISR")
	.dwattr $C$DW$18, DW_AT_external
	.dwattr $C$DW$18, DW_AT_TI_begin_file("../src/schedule.c")
	.dwattr $C$DW$18, DW_AT_TI_begin_line(0x31)
	.dwattr $C$DW$18, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$18, DW_AT_decl_file("../src/schedule.c")
	.dwattr $C$DW$18, DW_AT_decl_line(0x31)
	.dwattr $C$DW$18, DW_AT_decl_column(0x06)
	.dwattr $C$DW$18, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "../src/schedule.c",line 50,column 1,is_stmt,address PendSVISR

	.dwfde $C$DW$CIE, PendSVISR
;----------------------------------------------------------------------
;  49 | void PendSVISR(void)                                                   
;----------------------------------------------------------------------

;*****************************************************************************
;* FUNCTION NAME: PendSVISR                                                  *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V9,SP,LR,SR,D0,D0_hi,D1,D1_hi,D2,D2_hi, *
;*                           D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,D6_hi,D7,D7_hi,   *
;*                           FPEXC,FPSCR                                     *
;*   Regs Used         : A1,A2,A3,A4,V9,SP,LR,SR,D0,D0_hi,D1,D1_hi,D2,D2_hi, *
;*                           D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,D6_hi,D7,D7_hi,   *
;*                           FPEXC,FPSCR                                     *
;*   Local Frame Size  : 0 Args + 4 Auto + 4 Save = 8 byte                   *
;*****************************************************************************
PendSVISR:
;* --------------------------------------------------------------------------*
;----------------------------------------------------------------------
;  52 | //Push {R4-R11} context to PSP                                         
;----------------------------------------------------------------------
	.dwcfi	cfa_offset, 0
	.dwcfi	save_reg_to_reg, 84, 14
        PUSH      {A4, LR}              ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 4
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	cfa_offset, 8
	.dwcfi	save_reg_to_mem, 3, -8
	.dwcfi	cfa_offset, 8
$C$DW$19	.dwtag  DW_TAG_variable, DW_AT_name("msp")
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("msp")
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$19, DW_AT_location[DW_OP_breg13 0]
	.dwpsn	file "../src/schedule.c",line 53,column 2,is_stmt
;----------------------------------------------------------------------
;  53 | pushRegistersToCurrentPSP(iTempRegister);                              
;  55 | //Save the new stack pointer after the push                            
;----------------------------------------------------------------------
        LDR       A1, $C$CON1           ; [DPU_3_PIPE] |53| 
        LDR       A1, [A1, #0]          ; [DPU_3_PIPE] |53| 
$C$DW$20	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$20, DW_AT_low_pc(0x00)
	.dwattr $C$DW$20, DW_AT_name("pushRegistersToCurrentPSP")
	.dwattr $C$DW$20, DW_AT_TI_call
        BL        pushRegistersToCurrentPSP ; [DPU_3_PIPE] |53| 
        ; CALL OCCURS {pushRegistersToCurrentPSP }  ; [] |53| 
	.dwpsn	file "../src/schedule.c",line 56,column 2,is_stmt
;----------------------------------------------------------------------
;  56 | currentTask->stack = readPSP(iTempRegister);                           
;  58 | //we've pushed the registers at least once                             
;  59 | //thus the task becomes initialized                                    
;----------------------------------------------------------------------
        LDR       A1, $C$CON1           ; [DPU_3_PIPE] |56| 
        LDR       A1, [A1, #0]          ; [DPU_3_PIPE] |56| 
$C$DW$21	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$21, DW_AT_low_pc(0x00)
	.dwattr $C$DW$21, DW_AT_name("readPSP")
	.dwattr $C$DW$21, DW_AT_TI_call
        BL        readPSP               ; [DPU_3_PIPE] |56| 
        ; CALL OCCURS {readPSP }         ; [] |56| 
        LDR       A2, $C$CON2           ; [DPU_3_PIPE] |56| 
        LDR       A2, [A2, #0]          ; [DPU_3_PIPE] |56| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |56| 
	.dwpsn	file "../src/schedule.c",line 60,column 2,is_stmt
;----------------------------------------------------------------------
;  60 | currentTask->bInitialized = 1;                                         
;  62 | //Update current task                                                  
;----------------------------------------------------------------------
        LDR       A1, $C$CON2           ; [DPU_3_PIPE] |60| 
        LDR       A1, [A1, #0]          ; [DPU_3_PIPE] |60| 
        MOVS      A2, #1                ; [DPU_3_PIPE] |60| 
        STRB      A2, [A1, #16]         ; [DPU_3_PIPE] |60| 
	.dwpsn	file "../src/schedule.c",line 63,column 2,is_stmt
;----------------------------------------------------------------------
;  63 | currentTask = taskToExecute;                                           
;  65 | //Update the CPU PSP to the newly selected tasks' SP                   
;----------------------------------------------------------------------
        LDR       A1, $C$CON3           ; [DPU_3_PIPE] |63| 
        LDR       A2, $C$CON2           ; [DPU_3_PIPE] |63| 
        LDR       A1, [A1, #0]          ; [DPU_3_PIPE] |63| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |63| 
	.dwpsn	file "../src/schedule.c",line 66,column 2,is_stmt
;----------------------------------------------------------------------
;  66 | writePSP(taskToExecute->stack);                                        
;  68 | //This modifies the Main stack to return                               
;  69 | //to thread mode after the ISR, and thus                               
;  70 | //run our functions.                                                   
;----------------------------------------------------------------------
        LDR       A1, $C$CON3           ; [DPU_3_PIPE] |66| 
        LDR       A1, [A1, #0]          ; [DPU_3_PIPE] |66| 
        LDR       A1, [A1, #0]          ; [DPU_3_PIPE] |66| 
$C$DW$22	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$22, DW_AT_low_pc(0x00)
	.dwattr $C$DW$22, DW_AT_name("writePSP")
	.dwattr $C$DW$22, DW_AT_TI_call
        BL        writePSP              ; [DPU_3_PIPE] |66| 
        ; CALL OCCURS {writePSP }        ; [] |66| 
	.dwpsn	file "../src/schedule.c",line 71,column 8,is_stmt
;----------------------------------------------------------------------
;  71 | int * msp = readMSP(iTempRegister);                                    
;----------------------------------------------------------------------
        LDR       A1, $C$CON1           ; [DPU_3_PIPE] |71| 
        LDR       A1, [A1, #0]          ; [DPU_3_PIPE] |71| 
$C$DW$23	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$23, DW_AT_low_pc(0x00)
	.dwattr $C$DW$23, DW_AT_name("readMSP")
	.dwattr $C$DW$23, DW_AT_TI_call
        BL        readMSP               ; [DPU_3_PIPE] |71| 
        ; CALL OCCURS {readMSP }         ; [] |71| 
        STR       A1, [SP, #0]          ; [DPU_3_PIPE] |71| 
	.dwpsn	file "../src/schedule.c",line 72,column 2,is_stmt
;----------------------------------------------------------------------
;  72 | *((uint32_t*)++msp) = THREAD_RETURN;                                   
;  74 | //Is the task initialized? If it hasn't (run), the software            
;  75 | //context (r4-r11) hasn't been saved yet, and thus shouldn't           
;  76 | //be popped back to the CPU                                            
;----------------------------------------------------------------------
        LDR       A1, [SP, #0]          ; [DPU_3_PIPE] |72| 
        MVN       A2, #2                ; [DPU_3_PIPE] |72| 
        ADDS      A1, A1, #4            ; [DPU_3_PIPE] |72| 
        STR       A1, [SP, #0]          ; [DPU_3_PIPE] |72| 
        STR       A2, [A1, #0]          ; [DPU_3_PIPE] |72| 
	.dwpsn	file "../src/schedule.c",line 77,column 2,is_stmt
;----------------------------------------------------------------------
;  77 | if(taskToExecute->bInitialized)                                        
;  79 |         //Otherwise we can safely pop things :)                        
;----------------------------------------------------------------------
        LDR       A1, $C$CON3           ; [DPU_3_PIPE] |77| 
        LDR       A1, [A1, #0]          ; [DPU_3_PIPE] |77| 
        LDRB      A1, [A1, #16]         ; [DPU_3_PIPE] |77| 
        CBZ       A1, ||$C$L1||         ; [] 
        ; BRANCHCC OCCURS {||$C$L1||}    ; [] |77| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../src/schedule.c",line 80,column 3,is_stmt
;----------------------------------------------------------------------
;  80 | popRegistersFromCurrentPSP(iTempRegister);                             
;----------------------------------------------------------------------
        LDR       A1, $C$CON1           ; [DPU_3_PIPE] |80| 
        LDR       A1, [A1, #0]          ; [DPU_3_PIPE] |80| 
$C$DW$24	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$24, DW_AT_low_pc(0x00)
	.dwattr $C$DW$24, DW_AT_name("popRegistersFromCurrentPSP")
	.dwattr $C$DW$24, DW_AT_TI_call
        BL        popRegistersFromCurrentPSP ; [DPU_3_PIPE] |80| 
        ; CALL OCCURS {popRegistersFromCurrentPSP }  ; [] |80| 
	.dwpsn	file "../src/schedule.c",line 82,column 1,is_stmt
;* --------------------------------------------------------------------------*
||$C$L1||:    
	.dwcfi	cfa_offset, 8
$C$DW$25	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$25, DW_AT_low_pc(0x00)
	.dwattr $C$DW$25, DW_AT_TI_return
        POP       {A4, PC}              ; [DPU_3_PIPE] 
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$18, DW_AT_TI_end_file("../src/schedule.c")
	.dwattr $C$DW$18, DW_AT_TI_end_line(0x52)
	.dwattr $C$DW$18, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$18

	.sect	".text:schedule"
	.clink
	.thumbfunc schedule
	.thumb
	.global	schedule

$C$DW$26	.dwtag  DW_TAG_subprogram, DW_AT_name("schedule")
	.dwattr $C$DW$26, DW_AT_low_pc(schedule)
	.dwattr $C$DW$26, DW_AT_high_pc(0x00)
	.dwattr $C$DW$26, DW_AT_TI_symbol_name("schedule")
	.dwattr $C$DW$26, DW_AT_external
	.dwattr $C$DW$26, DW_AT_TI_begin_file("../src/schedule.c")
	.dwattr $C$DW$26, DW_AT_TI_begin_line(0x62)
	.dwattr $C$DW$26, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$26, DW_AT_decl_file("../src/schedule.c")
	.dwattr $C$DW$26, DW_AT_decl_line(0x62)
	.dwattr $C$DW$26, DW_AT_decl_column(0x06)
	.dwattr $C$DW$26, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "../src/schedule.c",line 99,column 1,is_stmt,address schedule

	.dwfde $C$DW$CIE, schedule
;----------------------------------------------------------------------
;  98 | void schedule(void)                                                    
;----------------------------------------------------------------------

;*****************************************************************************
;* FUNCTION NAME: schedule                                                   *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V9,SP,LR,SR,D0,D0_hi,D1,D1_hi,D2,D2_hi, *
;*                           D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,D6_hi,D7,D7_hi,   *
;*                           FPEXC,FPSCR                                     *
;*   Regs Used         : A1,A2,A3,A4,V9,SP,LR,SR,D0,D0_hi,D1,D1_hi,D2,D2_hi, *
;*                           D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,D6_hi,D7,D7_hi,   *
;*                           FPEXC,FPSCR                                     *
;*   Local Frame Size  : 0 Args + 0 Auto + 4 Save = 4 byte                   *
;*****************************************************************************
schedule:
;* --------------------------------------------------------------------------*
;----------------------------------------------------------------------
; 100 | //This is our true scheduler function                                  
; 101 | //select a new task to run                                             
;----------------------------------------------------------------------
	.dwcfi	cfa_offset, 0
	.dwcfi	save_reg_to_reg, 84, 14
        PUSH      {A4, LR}              ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 4
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	cfa_offset, 8
	.dwcfi	save_reg_to_mem, 3, -8
	.dwcfi	cfa_offset, 8
	.dwpsn	file "../src/schedule.c",line 102,column 2,is_stmt
;----------------------------------------------------------------------
; 102 | taskToExecute = getNextTask();                                         
; 104 | //Only if the new task isn't equal to the current one,                 
; 105 | //call the context switch                                              
;----------------------------------------------------------------------
$C$DW$27	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$27, DW_AT_low_pc(0x00)
	.dwattr $C$DW$27, DW_AT_name("getNextTask")
	.dwattr $C$DW$27, DW_AT_TI_call
        BL        getNextTask           ; [DPU_3_PIPE] |102| 
        ; CALL OCCURS {getNextTask }     ; [] |102| 
        LDR       A2, $C$CON4           ; [DPU_3_PIPE] |102| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |102| 
	.dwpsn	file "../src/schedule.c",line 106,column 2,is_stmt
;----------------------------------------------------------------------
; 106 | if(taskToExecute != currentTask || taskToExecute->bInitialized==0)     
; 108 |         //States to help the scheduler decide                          
;----------------------------------------------------------------------
        LDR       A2, $C$CON4           ; [DPU_3_PIPE] |106| 
        LDR       A1, $C$CON5           ; [DPU_3_PIPE] |106| 
        LDR       A2, [A2, #0]          ; [DPU_3_PIPE] |106| 
        LDR       A1, [A1, #0]          ; [DPU_3_PIPE] |106| 
        CMP       A1, A2                ; [DPU_3_PIPE] |106| 
        BNE       ||$C$L2||             ; [DPU_3_PIPE] |106| 
        ; BRANCHCC OCCURS {||$C$L2||}    ; [] |106| 
;* --------------------------------------------------------------------------*
        LDR       A1, $C$CON4           ; [DPU_3_PIPE] |106| 
        LDR       A1, [A1, #0]          ; [DPU_3_PIPE] |106| 
        LDRB      A1, [A1, #16]         ; [DPU_3_PIPE] |106| 
        CBNZ      A1, ||$C$L3||         ; [] 
        ; BRANCHCC OCCURS {||$C$L3||}    ; [] |106| 
;* --------------------------------------------------------------------------*
||$C$L2||:    
	.dwpsn	file "../src/schedule.c",line 109,column 3,is_stmt
;----------------------------------------------------------------------
; 109 | currentTask->state       = READY;                                      
;----------------------------------------------------------------------
        LDR       A1, $C$CON5           ; [DPU_3_PIPE] |109| 
        LDR       A1, [A1, #0]          ; [DPU_3_PIPE] |109| 
        MOVS      A2, #1                ; [DPU_3_PIPE] |109| 
        STRB      A2, [A1, #8]          ; [DPU_3_PIPE] |109| 
	.dwpsn	file "../src/schedule.c",line 110,column 3,is_stmt
;----------------------------------------------------------------------
; 110 | taskToExecute->state = RUNNING;                                        
; 112 | //call pendsv interrupt to perform the context switch                  
;----------------------------------------------------------------------
        LDR       A1, $C$CON4           ; [DPU_3_PIPE] |110| 
        LDR       A1, [A1, #0]          ; [DPU_3_PIPE] |110| 
        MOVS      A2, #0                ; [DPU_3_PIPE] |110| 
        STRB      A2, [A1, #8]          ; [DPU_3_PIPE] |110| 
	.dwpsn	file "../src/schedule.c",line 113,column 3,is_stmt
;----------------------------------------------------------------------
; 113 | NVIC_INT_CTRL_R |= (1<<28);                                            
;----------------------------------------------------------------------
        LDR       A2, $C$CON6           ; [DPU_3_PIPE] |113| 
        LDR       A1, [A2, #0]          ; [DPU_3_PIPE] |113| 
        ORR       A1, A1, #268435456    ; [DPU_3_PIPE] |113| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |113| 
	.dwpsn	file "../src/schedule.c",line 114,column 2,is_stmt
;----------------------------------------------------------------------
; 114 | }else{                                                                 
; 115 |         //Clearly no need to switch anything so we                     
; 116 |         //just restore things like they were before the Systick        
;----------------------------------------------------------------------
        B         ||$C$L4||             ; [DPU_3_PIPE] |114| 
        ; BRANCH OCCURS {||$C$L4||}      ; [] |114| 
;* --------------------------------------------------------------------------*
||$C$L3||:    
	.dwpsn	file "../src/schedule.c",line 118,column 3,is_stmt
;----------------------------------------------------------------------
; 118 | currentTask->state       = RUNNING;                                    
;----------------------------------------------------------------------
        LDR       A1, $C$CON5           ; [DPU_3_PIPE] |118| 
        LDR       A1, [A1, #0]          ; [DPU_3_PIPE] |118| 
        MOVS      A2, #0                ; [DPU_3_PIPE] |118| 
        STRB      A2, [A1, #8]          ; [DPU_3_PIPE] |118| 
	.dwpsn	file "../src/schedule.c",line 120,column 1,is_stmt
;* --------------------------------------------------------------------------*
||$C$L4||:    
	.dwcfi	cfa_offset, 8
$C$DW$28	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$28, DW_AT_low_pc(0x00)
	.dwattr $C$DW$28, DW_AT_TI_return
        POP       {A4, PC}              ; [DPU_3_PIPE] 
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$26, DW_AT_TI_end_file("../src/schedule.c")
	.dwattr $C$DW$26, DW_AT_TI_end_line(0x78)
	.dwattr $C$DW$26, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$26

	.sect	".text:getNextTask"
	.clink
	.thumbfunc getNextTask
	.thumb
	.global	getNextTask

$C$DW$29	.dwtag  DW_TAG_subprogram, DW_AT_name("getNextTask")
	.dwattr $C$DW$29, DW_AT_low_pc(getNextTask)
	.dwattr $C$DW$29, DW_AT_high_pc(0x00)
	.dwattr $C$DW$29, DW_AT_TI_symbol_name("getNextTask")
	.dwattr $C$DW$29, DW_AT_external
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$29, DW_AT_TI_begin_file("../src/schedule.c")
	.dwattr $C$DW$29, DW_AT_TI_begin_line(0x80)
	.dwattr $C$DW$29, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$29, DW_AT_decl_file("../src/schedule.c")
	.dwattr $C$DW$29, DW_AT_decl_line(0x80)
	.dwattr $C$DW$29, DW_AT_decl_column(0x08)
	.dwattr $C$DW$29, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../src/schedule.c",line 129,column 1,is_stmt,address getNextTask

	.dwfde $C$DW$CIE, getNextTask
$C$DW$30	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$30, DW_AT_TI_symbol_name("i$1")
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$30, DW_AT_location[DW_OP_addr i$1]
;----------------------------------------------------------------------
; 128 | task * getNextTask(void)                                               
;----------------------------------------------------------------------

;*****************************************************************************
;* FUNCTION NAME: getNextTask                                                *
;*                                                                           *
;*   Regs Modified     : A1,A2,SR                                            *
;*   Regs Used         : A1,A2,LR,SR                                         *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
getNextTask:
;* --------------------------------------------------------------------------*
;----------------------------------------------------------------------
; 130 | static int i=0;                                                        
;----------------------------------------------------------------------
	.dwcfi	cfa_offset, 0
	.dwcfi	save_reg_to_reg, 84, 14
	.dwpsn	file "../src/schedule.c",line 132,column 2,is_stmt
;----------------------------------------------------------------------
; 132 | while(taskList[++i].function == 0)                                     
;----------------------------------------------------------------------
        B         ||$C$L6||             ; [DPU_3_PIPE] |132| 
        ; BRANCH OCCURS {||$C$L6||}      ; [] |132| 
;* --------------------------------------------------------------------------*
||$C$L5||:    
$C$DW$L$getNextTask$2$B:
	.dwpsn	file "../src/schedule.c",line 134,column 3,is_stmt
;----------------------------------------------------------------------
; 134 | if(i==3)                                                               
;----------------------------------------------------------------------
        LDR       A1, $C$CON7           ; [DPU_3_PIPE] |134| 
        LDR       A1, [A1, #0]          ; [DPU_3_PIPE] |134| 
        CMP       A1, #3                ; [DPU_3_PIPE] |134| 
        BNE       ||$C$L6||             ; [DPU_3_PIPE] |134| 
        ; BRANCHCC OCCURS {||$C$L6||}    ; [] |134| 
$C$DW$L$getNextTask$2$E:
;* --------------------------------------------------------------------------*
$C$DW$L$getNextTask$3$B:
	.dwpsn	file "../src/schedule.c",line 136,column 4,is_stmt
;----------------------------------------------------------------------
; 136 | i = -1;                                                                
;----------------------------------------------------------------------
        LDR       A2, $C$CON7           ; [DPU_3_PIPE] |136| 
        MOV       A1, #-1               ; [DPU_3_PIPE] |136| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |136| 
$C$DW$L$getNextTask$3$E:
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L6||
;* --------------------------------------------------------------------------*
||$C$L6||:    
$C$DW$L$getNextTask$4$B:
	.dwpsn	file "../src/schedule.c",line 132,column 8,is_stmt
        LDR       A2, $C$CON7           ; [DPU_3_PIPE] |132| 
        LDR       A1, [A2, #0]          ; [DPU_3_PIPE] |132| 
        ADDS      A1, A1, #1            ; [DPU_3_PIPE] |132| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |132| 
        LSLS      A2, A1, #2            ; [DPU_3_PIPE] |132| 
        ADD       A2, A2, A1, LSL #4    ; [DPU_3_PIPE] |132| 
        LDR       A1, $C$CON8           ; [DPU_3_PIPE] |132| 
        LDR       A1, [A1, +A2]         ; [DPU_3_PIPE] |132| 
        CMP       A1, #0                ; [DPU_3_PIPE] |132| 
        BEQ       ||$C$L5||             ; [DPU_3_PIPE] |132| 
        ; BRANCHCC OCCURS {||$C$L5||}    ; [] |132| 
$C$DW$L$getNextTask$4$E:
;* --------------------------------------------------------------------------*
	.dwpsn	file "../src/schedule.c",line 140,column 2,is_stmt
;----------------------------------------------------------------------
; 140 | return &taskList[i];                                                   
;----------------------------------------------------------------------
        LDR       A1, $C$CON7           ; [DPU_3_PIPE] |140| 
        LDR       A1, [A1, #0]          ; [DPU_3_PIPE] |140| 
        LSLS      A2, A1, #2            ; [DPU_3_PIPE] |140| 
        ADD       A2, A2, A1, LSL #4    ; [DPU_3_PIPE] |140| 
        LDR       A1, $C$CON9           ; [DPU_3_PIPE] |140| 
        ADDS      A1, A1, A2            ; [DPU_3_PIPE] |140| 
	.dwpsn	file "../src/schedule.c",line 141,column 1,is_stmt
$C$DW$31	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$31, DW_AT_low_pc(0x00)
	.dwattr $C$DW$31, DW_AT_TI_return
        BX        LR                    ; [DPU_3_PIPE] 
        ; BRANCH OCCURS                  ; [] 

$C$DW$32	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$32, DW_AT_name("C:\Developing\workspace\versdOS\Debug\schedule.asm:$C$L6:1:1386669833")
	.dwattr $C$DW$32, DW_AT_TI_begin_file("../src/schedule.c")
	.dwattr $C$DW$32, DW_AT_TI_begin_line(0x84)
	.dwattr $C$DW$32, DW_AT_TI_end_line(0x88)
$C$DW$33	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$33, DW_AT_low_pc($C$DW$L$getNextTask$4$B)
	.dwattr $C$DW$33, DW_AT_high_pc($C$DW$L$getNextTask$4$E)
$C$DW$34	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$34, DW_AT_low_pc($C$DW$L$getNextTask$3$B)
	.dwattr $C$DW$34, DW_AT_high_pc($C$DW$L$getNextTask$3$E)
$C$DW$35	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$35, DW_AT_low_pc($C$DW$L$getNextTask$2$B)
	.dwattr $C$DW$35, DW_AT_high_pc($C$DW$L$getNextTask$2$E)
	.dwendtag $C$DW$32

	.dwattr $C$DW$29, DW_AT_TI_end_file("../src/schedule.c")
	.dwattr $C$DW$29, DW_AT_TI_end_line(0x8d)
	.dwattr $C$DW$29, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$29

;******************************************************************************
;* CONSTANT TABLE                                                             *
;******************************************************************************
	.sect	".text:PendSVISR"
	.align	4
||$C$CON1||:	.bits	iTempRegister,32
	.align	4
||$C$CON2||:	.bits	currentTask,32
	.align	4
||$C$CON3||:	.bits	taskToExecute,32
;******************************************************************************
;* CONSTANT TABLE                                                             *
;******************************************************************************
	.sect	".text:schedule"
	.align	4
||$C$CON4||:	.bits	taskToExecute,32
	.align	4
||$C$CON5||:	.bits	currentTask,32
	.align	4
||$C$CON6||:	.bits	-536810236,32
;******************************************************************************
;* CONSTANT TABLE                                                             *
;******************************************************************************
	.sect	".text:getNextTask"
	.align	4
||$C$CON7||:	.bits	i$1,32
	.align	4
||$C$CON8||:	.bits	taskList+4,32
	.align	4
||$C$CON9||:	.bits	taskList,32
;*****************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                             *
;*****************************************************************************
	.global	pushRegistersToCurrentPSP
	.global	popRegistersFromCurrentPSP
	.global	readPSP
	.global	writePSP
	.global	readMSP
	.global	taskList

;******************************************************************************
;* BUILD ATTRIBUTES                                                           *
;******************************************************************************
	.battr "aeabi", Tag_File, 1, Tag_ABI_PCS_wchar_t(2)
	.battr "aeabi", Tag_File, 1, Tag_ABI_FP_rounding(0)
	.battr "aeabi", Tag_File, 1, Tag_ABI_FP_denormal(0)
	.battr "aeabi", Tag_File, 1, Tag_ABI_FP_exceptions(0)
	.battr "aeabi", Tag_File, 1, Tag_ABI_FP_number_model(1)
	.battr "aeabi", Tag_File, 1, Tag_ABI_enum_size(1)
	.battr "aeabi", Tag_File, 1, Tag_ABI_optimization_goals(5)
	.battr "aeabi", Tag_File, 1, Tag_ABI_FP_optimization_goals(2)
	.battr "TI", Tag_File, 1, Tag_Bitfield_layout(2)

;******************************************************************************
;* TYPE INFORMATION                                                           *
;******************************************************************************
$C$DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$3, DW_AT_address_class(0x20)
$C$DW$T$29	.dwtag  DW_TAG_typedef, DW_AT_name("__builtin_va_list")
	.dwattr $C$DW$T$29, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$T$29, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$29, DW_AT_decl_file("../src/schedule.c")
	.dwattr $C$DW$T$29, DW_AT_decl_line(0x8d)
	.dwattr $C$DW$T$29, DW_AT_decl_column(0x01)

$C$DW$T$20	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$20, DW_AT_language(DW_LANG_C)
$C$DW$T$21	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$21, DW_AT_address_class(0x20)
$C$DW$T$4	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$4, DW_AT_encoding(DW_ATE_boolean)
	.dwattr $C$DW$T$4, DW_AT_name("bool")
	.dwattr $C$DW$T$4, DW_AT_byte_size(0x01)
$C$DW$T$5	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$5, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$5, DW_AT_name("signed char")
	.dwattr $C$DW$T$5, DW_AT_byte_size(0x01)
$C$DW$T$34	.dwtag  DW_TAG_typedef, DW_AT_name("int8_t")
	.dwattr $C$DW$T$34, DW_AT_type(*$C$DW$T$5)
	.dwattr $C$DW$T$34, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$34, DW_AT_decl_file("C:/ti/ccsv5/tools/compiler/arm_4.9.9/include/stdint.h")
	.dwattr $C$DW$T$34, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$T$34, DW_AT_decl_column(0x1d)
$C$DW$T$35	.dwtag  DW_TAG_typedef, DW_AT_name("int_least8_t")
	.dwattr $C$DW$T$35, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$T$35, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$35, DW_AT_decl_file("C:/ti/ccsv5/tools/compiler/arm_4.9.9/include/stdint.h")
	.dwattr $C$DW$T$35, DW_AT_decl_line(0x37)
	.dwattr $C$DW$T$35, DW_AT_decl_column(0x17)
$C$DW$T$6	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$6, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$6, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$6, DW_AT_byte_size(0x01)
$C$DW$T$23	.dwtag  DW_TAG_typedef, DW_AT_name("uint8_t")
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$23, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$23, DW_AT_decl_file("C:/ti/ccsv5/tools/compiler/arm_4.9.9/include/stdint.h")
	.dwattr $C$DW$T$23, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$T$23, DW_AT_decl_column(0x1c)
$C$DW$T$36	.dwtag  DW_TAG_typedef, DW_AT_name("uint_least8_t")
	.dwattr $C$DW$T$36, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$36, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$36, DW_AT_decl_file("C:/ti/ccsv5/tools/compiler/arm_4.9.9/include/stdint.h")
	.dwattr $C$DW$T$36, DW_AT_decl_line(0x38)
	.dwattr $C$DW$T$36, DW_AT_decl_column(0x16)
$C$DW$T$7	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$7, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$7, DW_AT_name("wchar_t")
	.dwattr $C$DW$T$7, DW_AT_byte_size(0x02)
$C$DW$T$8	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$8, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$8, DW_AT_name("short")
	.dwattr $C$DW$T$8, DW_AT_byte_size(0x02)
$C$DW$T$37	.dwtag  DW_TAG_typedef, DW_AT_name("int16_t")
	.dwattr $C$DW$T$37, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$T$37, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$37, DW_AT_decl_file("C:/ti/ccsv5/tools/compiler/arm_4.9.9/include/stdint.h")
	.dwattr $C$DW$T$37, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$T$37, DW_AT_decl_column(0x1d)
$C$DW$T$38	.dwtag  DW_TAG_typedef, DW_AT_name("int_least16_t")
	.dwattr $C$DW$T$38, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$T$38, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$38, DW_AT_decl_file("C:/ti/ccsv5/tools/compiler/arm_4.9.9/include/stdint.h")
	.dwattr $C$DW$T$38, DW_AT_decl_line(0x3a)
	.dwattr $C$DW$T$38, DW_AT_decl_column(0x17)
$C$DW$T$9	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x02)
$C$DW$T$39	.dwtag  DW_TAG_typedef, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$39, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$39, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$39, DW_AT_decl_file("C:/ti/ccsv5/tools/compiler/arm_4.9.9/include/stdint.h")
	.dwattr $C$DW$T$39, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$T$39, DW_AT_decl_column(0x1c)
$C$DW$T$40	.dwtag  DW_TAG_typedef, DW_AT_name("uint_least16_t")
	.dwattr $C$DW$T$40, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$T$40, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$40, DW_AT_decl_file("C:/ti/ccsv5/tools/compiler/arm_4.9.9/include/stdint.h")
	.dwattr $C$DW$T$40, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$T$40, DW_AT_decl_column(0x16)
$C$DW$T$10	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$10, DW_AT_name("int")
	.dwattr $C$DW$T$10, DW_AT_byte_size(0x04)
$C$DW$T$19	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$19, DW_AT_address_class(0x20)
$C$DW$T$41	.dwtag  DW_TAG_typedef, DW_AT_name("int32_t")
	.dwattr $C$DW$T$41, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$41, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$41, DW_AT_decl_file("C:/ti/ccsv5/tools/compiler/arm_4.9.9/include/stdint.h")
	.dwattr $C$DW$T$41, DW_AT_decl_line(0x2e)
	.dwattr $C$DW$T$41, DW_AT_decl_column(0x1d)
$C$DW$T$42	.dwtag  DW_TAG_typedef, DW_AT_name("int_fast16_t")
	.dwattr $C$DW$T$42, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$T$42, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$42, DW_AT_decl_file("C:/ti/ccsv5/tools/compiler/arm_4.9.9/include/stdint.h")
	.dwattr $C$DW$T$42, DW_AT_decl_line(0x47)
	.dwattr $C$DW$T$42, DW_AT_decl_column(0x17)
$C$DW$T$43	.dwtag  DW_TAG_typedef, DW_AT_name("int_fast32_t")
	.dwattr $C$DW$T$43, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$T$43, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$43, DW_AT_decl_file("C:/ti/ccsv5/tools/compiler/arm_4.9.9/include/stdint.h")
	.dwattr $C$DW$T$43, DW_AT_decl_line(0x4a)
	.dwattr $C$DW$T$43, DW_AT_decl_column(0x17)
$C$DW$T$44	.dwtag  DW_TAG_typedef, DW_AT_name("int_fast8_t")
	.dwattr $C$DW$T$44, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$T$44, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$44, DW_AT_decl_file("C:/ti/ccsv5/tools/compiler/arm_4.9.9/include/stdint.h")
	.dwattr $C$DW$T$44, DW_AT_decl_line(0x45)
	.dwattr $C$DW$T$44, DW_AT_decl_column(0x17)
$C$DW$T$45	.dwtag  DW_TAG_typedef, DW_AT_name("int_least32_t")
	.dwattr $C$DW$T$45, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$T$45, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$45, DW_AT_decl_file("C:/ti/ccsv5/tools/compiler/arm_4.9.9/include/stdint.h")
	.dwattr $C$DW$T$45, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$T$45, DW_AT_decl_column(0x17)
$C$DW$T$46	.dwtag  DW_TAG_typedef, DW_AT_name("intptr_t")
	.dwattr $C$DW$T$46, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$46, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$46, DW_AT_decl_file("C:/ti/ccsv5/tools/compiler/arm_4.9.9/include/stdint.h")
	.dwattr $C$DW$T$46, DW_AT_decl_line(0x52)
	.dwattr $C$DW$T$46, DW_AT_decl_column(0x1a)
$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x04)
$C$DW$T$24	.dwtag  DW_TAG_typedef, DW_AT_name("uint32_t")
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$24, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$24, DW_AT_decl_file("C:/ti/ccsv5/tools/compiler/arm_4.9.9/include/stdint.h")
	.dwattr $C$DW$T$24, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$T$24, DW_AT_decl_column(0x1c)
$C$DW$T$48	.dwtag  DW_TAG_typedef, DW_AT_name("uint_fast16_t")
	.dwattr $C$DW$T$48, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$48, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$48, DW_AT_decl_file("C:/ti/ccsv5/tools/compiler/arm_4.9.9/include/stdint.h")
	.dwattr $C$DW$T$48, DW_AT_decl_line(0x48)
	.dwattr $C$DW$T$48, DW_AT_decl_column(0x16)
$C$DW$T$49	.dwtag  DW_TAG_typedef, DW_AT_name("uint_fast32_t")
	.dwattr $C$DW$T$49, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$49, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$49, DW_AT_decl_file("C:/ti/ccsv5/tools/compiler/arm_4.9.9/include/stdint.h")
	.dwattr $C$DW$T$49, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$T$49, DW_AT_decl_column(0x16)
$C$DW$T$50	.dwtag  DW_TAG_typedef, DW_AT_name("uint_fast8_t")
	.dwattr $C$DW$T$50, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$50, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$50, DW_AT_decl_file("C:/ti/ccsv5/tools/compiler/arm_4.9.9/include/stdint.h")
	.dwattr $C$DW$T$50, DW_AT_decl_line(0x46)
	.dwattr $C$DW$T$50, DW_AT_decl_column(0x16)
$C$DW$T$51	.dwtag  DW_TAG_typedef, DW_AT_name("uint_least32_t")
	.dwattr $C$DW$T$51, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$51, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$51, DW_AT_decl_file("C:/ti/ccsv5/tools/compiler/arm_4.9.9/include/stdint.h")
	.dwattr $C$DW$T$51, DW_AT_decl_line(0x3d)
	.dwattr $C$DW$T$51, DW_AT_decl_column(0x16)
$C$DW$T$52	.dwtag  DW_TAG_typedef, DW_AT_name("uintptr_t")
	.dwattr $C$DW$T$52, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$52, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$52, DW_AT_decl_file("C:/ti/ccsv5/tools/compiler/arm_4.9.9/include/stdint.h")
	.dwattr $C$DW$T$52, DW_AT_decl_line(0x53)
	.dwattr $C$DW$T$52, DW_AT_decl_column(0x1a)
$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x04)
$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x04)
$C$DW$T$14	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$14, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$14, DW_AT_name("long long")
	.dwattr $C$DW$T$14, DW_AT_byte_size(0x08)
$C$DW$T$55	.dwtag  DW_TAG_typedef, DW_AT_name("int64_t")
	.dwattr $C$DW$T$55, DW_AT_type(*$C$DW$T$14)
	.dwattr $C$DW$T$55, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$55, DW_AT_decl_file("C:/ti/ccsv5/tools/compiler/arm_4.9.9/include/stdint.h")
	.dwattr $C$DW$T$55, DW_AT_decl_line(0x32)
	.dwattr $C$DW$T$55, DW_AT_decl_column(0x21)
$C$DW$T$56	.dwtag  DW_TAG_typedef, DW_AT_name("int_fast64_t")
	.dwattr $C$DW$T$56, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$T$56, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$56, DW_AT_decl_file("C:/ti/ccsv5/tools/compiler/arm_4.9.9/include/stdint.h")
	.dwattr $C$DW$T$56, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$T$56, DW_AT_decl_column(0x17)
$C$DW$T$57	.dwtag  DW_TAG_typedef, DW_AT_name("int_least64_t")
	.dwattr $C$DW$T$57, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$T$57, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$57, DW_AT_decl_file("C:/ti/ccsv5/tools/compiler/arm_4.9.9/include/stdint.h")
	.dwattr $C$DW$T$57, DW_AT_decl_line(0x40)
	.dwattr $C$DW$T$57, DW_AT_decl_column(0x17)
$C$DW$T$58	.dwtag  DW_TAG_typedef, DW_AT_name("intmax_t")
	.dwattr $C$DW$T$58, DW_AT_type(*$C$DW$T$14)
	.dwattr $C$DW$T$58, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$58, DW_AT_decl_file("C:/ti/ccsv5/tools/compiler/arm_4.9.9/include/stdint.h")
	.dwattr $C$DW$T$58, DW_AT_decl_line(0x56)
	.dwattr $C$DW$T$58, DW_AT_decl_column(0x20)
$C$DW$T$15	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$15, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$15, DW_AT_name("unsigned long long")
	.dwattr $C$DW$T$15, DW_AT_byte_size(0x08)
$C$DW$T$59	.dwtag  DW_TAG_typedef, DW_AT_name("uint64_t")
	.dwattr $C$DW$T$59, DW_AT_type(*$C$DW$T$15)
	.dwattr $C$DW$T$59, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$59, DW_AT_decl_file("C:/ti/ccsv5/tools/compiler/arm_4.9.9/include/stdint.h")
	.dwattr $C$DW$T$59, DW_AT_decl_line(0x33)
	.dwattr $C$DW$T$59, DW_AT_decl_column(0x20)
$C$DW$T$60	.dwtag  DW_TAG_typedef, DW_AT_name("uint_fast64_t")
	.dwattr $C$DW$T$60, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$T$60, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$60, DW_AT_decl_file("C:/ti/ccsv5/tools/compiler/arm_4.9.9/include/stdint.h")
	.dwattr $C$DW$T$60, DW_AT_decl_line(0x4f)
	.dwattr $C$DW$T$60, DW_AT_decl_column(0x16)
$C$DW$T$61	.dwtag  DW_TAG_typedef, DW_AT_name("uint_least64_t")
	.dwattr $C$DW$T$61, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$T$61, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$61, DW_AT_decl_file("C:/ti/ccsv5/tools/compiler/arm_4.9.9/include/stdint.h")
	.dwattr $C$DW$T$61, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$61, DW_AT_decl_column(0x16)
$C$DW$T$62	.dwtag  DW_TAG_typedef, DW_AT_name("uintmax_t")
	.dwattr $C$DW$T$62, DW_AT_type(*$C$DW$T$15)
	.dwattr $C$DW$T$62, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$62, DW_AT_decl_file("C:/ti/ccsv5/tools/compiler/arm_4.9.9/include/stdint.h")
	.dwattr $C$DW$T$62, DW_AT_decl_line(0x57)
	.dwattr $C$DW$T$62, DW_AT_decl_column(0x20)
$C$DW$T$16	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$16, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$16, DW_AT_name("float")
	.dwattr $C$DW$T$16, DW_AT_byte_size(0x04)
$C$DW$T$17	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$17, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$17, DW_AT_name("double")
	.dwattr $C$DW$T$17, DW_AT_byte_size(0x08)
$C$DW$T$18	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$18, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$18, DW_AT_name("long double")
	.dwattr $C$DW$T$18, DW_AT_byte_size(0x08)
$C$DW$T$25	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$25, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$25, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$25, DW_AT_byte_size(0x01)

$C$DW$T$26	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$26, DW_AT_name("_task")
	.dwattr $C$DW$T$26, DW_AT_byte_size(0x14)
$C$DW$36	.dwtag  DW_TAG_member
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$36, DW_AT_name("stack")
	.dwattr $C$DW$36, DW_AT_TI_symbol_name("stack")
	.dwattr $C$DW$36, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$36, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$36, DW_AT_decl_file("..\src\task.h")
	.dwattr $C$DW$36, DW_AT_decl_line(0x16)
	.dwattr $C$DW$36, DW_AT_decl_column(0x0b)
$C$DW$37	.dwtag  DW_TAG_member
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$37, DW_AT_name("function")
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("function")
	.dwattr $C$DW$37, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$37, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$37, DW_AT_decl_file("..\src\task.h")
	.dwattr $C$DW$37, DW_AT_decl_line(0x18)
	.dwattr $C$DW$37, DW_AT_decl_column(0x08)
$C$DW$38	.dwtag  DW_TAG_member
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$38, DW_AT_name("state")
	.dwattr $C$DW$38, DW_AT_TI_symbol_name("state")
	.dwattr $C$DW$38, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$38, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$38, DW_AT_decl_file("..\src\task.h")
	.dwattr $C$DW$38, DW_AT_decl_line(0x19)
	.dwattr $C$DW$38, DW_AT_decl_column(0x11)
$C$DW$39	.dwtag  DW_TAG_member
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$39, DW_AT_name("uiPriority")
	.dwattr $C$DW$39, DW_AT_TI_symbol_name("uiPriority")
	.dwattr $C$DW$39, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$39, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$39, DW_AT_decl_file("..\src\task.h")
	.dwattr $C$DW$39, DW_AT_decl_line(0x1a)
	.dwattr $C$DW$39, DW_AT_decl_column(0x0c)
$C$DW$40	.dwtag  DW_TAG_member
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$40, DW_AT_name("uiCounter")
	.dwattr $C$DW$40, DW_AT_TI_symbol_name("uiCounter")
	.dwattr $C$DW$40, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$40, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$40, DW_AT_decl_file("..\src\task.h")
	.dwattr $C$DW$40, DW_AT_decl_line(0x1b)
	.dwattr $C$DW$40, DW_AT_decl_column(0x0c)
$C$DW$41	.dwtag  DW_TAG_member
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$41, DW_AT_name("bInitialized")
	.dwattr $C$DW$41, DW_AT_TI_symbol_name("bInitialized")
	.dwattr $C$DW$41, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$41, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$41, DW_AT_decl_file("..\src\task.h")
	.dwattr $C$DW$41, DW_AT_decl_line(0x1d)
	.dwattr $C$DW$41, DW_AT_decl_column(0x09)
	.dwendtag $C$DW$T$26

	.dwattr $C$DW$T$26, DW_AT_decl_file("..\src\task.h")
	.dwattr $C$DW$T$26, DW_AT_decl_line(0x15)
	.dwattr $C$DW$T$26, DW_AT_decl_column(0x10)
$C$DW$T$63	.dwtag  DW_TAG_typedef, DW_AT_name("task")
	.dwattr $C$DW$T$63, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$63, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$63, DW_AT_decl_file("..\src\task.h")
	.dwattr $C$DW$T$63, DW_AT_decl_line(0x1e)
	.dwattr $C$DW$T$63, DW_AT_decl_column(0x03)
$C$DW$T$64	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$64, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$T$64, DW_AT_address_class(0x20)

$C$DW$T$67	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$67, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$T$67, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$67, DW_AT_byte_size(0x140)
$C$DW$42	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$42, DW_AT_upper_bound(0x0f)
	.dwendtag $C$DW$T$67


$C$DW$T$22	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$22, DW_AT_name("taskState")
	.dwattr $C$DW$T$22, DW_AT_byte_size(0x01)
$C$DW$43	.dwtag  DW_TAG_enumerator, DW_AT_name("RUNNING"), DW_AT_const_value(0x00)
	.dwattr $C$DW$43, DW_AT_decl_file("..\src\task.h")
	.dwattr $C$DW$43, DW_AT_decl_line(0x12)
	.dwattr $C$DW$43, DW_AT_decl_column(0x10)
$C$DW$44	.dwtag  DW_TAG_enumerator, DW_AT_name("READY"), DW_AT_const_value(0x01)
	.dwattr $C$DW$44, DW_AT_decl_file("..\src\task.h")
	.dwattr $C$DW$44, DW_AT_decl_line(0x12)
	.dwattr $C$DW$44, DW_AT_decl_column(0x19)
$C$DW$45	.dwtag  DW_TAG_enumerator, DW_AT_name("WAITING"), DW_AT_const_value(0x02)
	.dwattr $C$DW$45, DW_AT_decl_file("..\src\task.h")
	.dwattr $C$DW$45, DW_AT_decl_line(0x12)
	.dwattr $C$DW$45, DW_AT_decl_column(0x20)
	.dwendtag $C$DW$T$22

	.dwattr $C$DW$T$22, DW_AT_decl_file("..\src\task.h")
	.dwattr $C$DW$T$22, DW_AT_decl_line(0x12)
	.dwattr $C$DW$T$22, DW_AT_decl_column(0x06)
	.dwattr $C$DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF CIE ENTRIES                                           *
;***************************************************************

$C$DW$CIE	.dwcie 84
	.dwcfi	cfa_register, 13
	.dwcfi	cfa_offset, 0
	.dwcfi	undefined, 0
	.dwcfi	undefined, 1
	.dwcfi	undefined, 2
	.dwcfi	undefined, 3
	.dwcfi	same_value, 4
	.dwcfi	same_value, 5
	.dwcfi	same_value, 6
	.dwcfi	same_value, 7
	.dwcfi	same_value, 8
	.dwcfi	same_value, 9
	.dwcfi	same_value, 10
	.dwcfi	same_value, 11
	.dwcfi	undefined, 12
	.dwcfi	undefined, 13
	.dwcfi	undefined, 14
	.dwcfi	undefined, 15
	.dwcfi	undefined, 17
	.dwcfi	undefined, 16
	.dwcfi	undefined, 20
	.dwcfi	undefined, 21
	.dwcfi	undefined, 22
	.dwcfi	undefined, 23
	.dwcfi	undefined, 24
	.dwcfi	undefined, 25
	.dwcfi	undefined, 26
	.dwcfi	undefined, 27
	.dwcfi	undefined, 28
	.dwcfi	undefined, 29
	.dwcfi	undefined, 30
	.dwcfi	undefined, 31
	.dwcfi	undefined, 32
	.dwcfi	undefined, 33
	.dwcfi	undefined, 34
	.dwcfi	undefined, 35
	.dwcfi	same_value, 36
	.dwcfi	same_value, 37
	.dwcfi	same_value, 38
	.dwcfi	same_value, 39
	.dwcfi	same_value, 40
	.dwcfi	same_value, 41
	.dwcfi	same_value, 42
	.dwcfi	same_value, 43
	.dwcfi	same_value, 44
	.dwcfi	same_value, 45
	.dwcfi	same_value, 46
	.dwcfi	same_value, 47
	.dwcfi	same_value, 48
	.dwcfi	same_value, 49
	.dwcfi	same_value, 50
	.dwcfi	same_value, 51
	.dwcfi	undefined, 18
	.dwcfi	undefined, 19
	.dwcfi	undefined, 84
	.dwendentry

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

$C$DW$46	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A1")
	.dwattr $C$DW$46, DW_AT_location[DW_OP_reg0]
$C$DW$47	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A2")
	.dwattr $C$DW$47, DW_AT_location[DW_OP_reg1]
$C$DW$48	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A3")
	.dwattr $C$DW$48, DW_AT_location[DW_OP_reg2]
$C$DW$49	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A4")
	.dwattr $C$DW$49, DW_AT_location[DW_OP_reg3]
$C$DW$50	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("V1")
	.dwattr $C$DW$50, DW_AT_location[DW_OP_reg4]
$C$DW$51	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("V2")
	.dwattr $C$DW$51, DW_AT_location[DW_OP_reg5]
$C$DW$52	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("V3")
	.dwattr $C$DW$52, DW_AT_location[DW_OP_reg6]
$C$DW$53	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("V4")
	.dwattr $C$DW$53, DW_AT_location[DW_OP_reg7]
$C$DW$54	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("V5")
	.dwattr $C$DW$54, DW_AT_location[DW_OP_reg8]
$C$DW$55	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("V6")
	.dwattr $C$DW$55, DW_AT_location[DW_OP_reg9]
$C$DW$56	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("V7")
	.dwattr $C$DW$56, DW_AT_location[DW_OP_reg10]
$C$DW$57	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("V8")
	.dwattr $C$DW$57, DW_AT_location[DW_OP_reg11]
$C$DW$58	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("V9")
	.dwattr $C$DW$58, DW_AT_location[DW_OP_reg12]
$C$DW$59	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$59, DW_AT_location[DW_OP_reg13]
$C$DW$60	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("LR")
	.dwattr $C$DW$60, DW_AT_location[DW_OP_reg14]
$C$DW$61	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$61, DW_AT_location[DW_OP_reg15]
$C$DW$62	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SR")
	.dwattr $C$DW$62, DW_AT_location[DW_OP_reg17]
$C$DW$63	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AP")
	.dwattr $C$DW$63, DW_AT_location[DW_OP_reg16]
$C$DW$64	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D0")
	.dwattr $C$DW$64, DW_AT_location[DW_OP_reg20]
$C$DW$65	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D0_hi")
	.dwattr $C$DW$65, DW_AT_location[DW_OP_reg21]
$C$DW$66	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D1")
	.dwattr $C$DW$66, DW_AT_location[DW_OP_reg22]
$C$DW$67	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D1_hi")
	.dwattr $C$DW$67, DW_AT_location[DW_OP_reg23]
$C$DW$68	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D2")
	.dwattr $C$DW$68, DW_AT_location[DW_OP_reg24]
$C$DW$69	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D2_hi")
	.dwattr $C$DW$69, DW_AT_location[DW_OP_reg25]
$C$DW$70	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D3")
	.dwattr $C$DW$70, DW_AT_location[DW_OP_reg26]
$C$DW$71	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D3_hi")
	.dwattr $C$DW$71, DW_AT_location[DW_OP_reg27]
$C$DW$72	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D4")
	.dwattr $C$DW$72, DW_AT_location[DW_OP_reg28]
$C$DW$73	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D4_hi")
	.dwattr $C$DW$73, DW_AT_location[DW_OP_reg29]
$C$DW$74	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D5")
	.dwattr $C$DW$74, DW_AT_location[DW_OP_reg30]
$C$DW$75	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D5_hi")
	.dwattr $C$DW$75, DW_AT_location[DW_OP_reg31]
$C$DW$76	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D6")
	.dwattr $C$DW$76, DW_AT_location[DW_OP_regx 0x20]
$C$DW$77	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D6_hi")
	.dwattr $C$DW$77, DW_AT_location[DW_OP_regx 0x21]
$C$DW$78	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D7")
	.dwattr $C$DW$78, DW_AT_location[DW_OP_regx 0x22]
$C$DW$79	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D7_hi")
	.dwattr $C$DW$79, DW_AT_location[DW_OP_regx 0x23]
$C$DW$80	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D8")
	.dwattr $C$DW$80, DW_AT_location[DW_OP_regx 0x24]
$C$DW$81	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D8_hi")
	.dwattr $C$DW$81, DW_AT_location[DW_OP_regx 0x25]
$C$DW$82	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D9")
	.dwattr $C$DW$82, DW_AT_location[DW_OP_regx 0x26]
$C$DW$83	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D9_hi")
	.dwattr $C$DW$83, DW_AT_location[DW_OP_regx 0x27]
$C$DW$84	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D10")
	.dwattr $C$DW$84, DW_AT_location[DW_OP_regx 0x28]
$C$DW$85	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D10_hi")
	.dwattr $C$DW$85, DW_AT_location[DW_OP_regx 0x29]
$C$DW$86	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D11")
	.dwattr $C$DW$86, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$87	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D11_hi")
	.dwattr $C$DW$87, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$88	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D12")
	.dwattr $C$DW$88, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$89	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D12_hi")
	.dwattr $C$DW$89, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$90	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D13")
	.dwattr $C$DW$90, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$91	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D13_hi")
	.dwattr $C$DW$91, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$92	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D14")
	.dwattr $C$DW$92, DW_AT_location[DW_OP_regx 0x30]
$C$DW$93	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D14_hi")
	.dwattr $C$DW$93, DW_AT_location[DW_OP_regx 0x31]
$C$DW$94	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D15")
	.dwattr $C$DW$94, DW_AT_location[DW_OP_regx 0x32]
$C$DW$95	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D15_hi")
	.dwattr $C$DW$95, DW_AT_location[DW_OP_regx 0x33]
$C$DW$96	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FPEXC")
	.dwattr $C$DW$96, DW_AT_location[DW_OP_reg18]
$C$DW$97	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FPSCR")
	.dwattr $C$DW$97, DW_AT_location[DW_OP_reg19]
$C$DW$98	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$98, DW_AT_location[DW_OP_regx 0x54]
	.dwendtag $C$DW$CU
