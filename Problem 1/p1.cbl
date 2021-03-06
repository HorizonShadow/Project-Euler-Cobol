        IDENTIFICATION DIVISION.
        PROGRAM-ID. HELLO-WORLD.
        DATA DIVISION.
            WORKING-STORAGE SECTION.
            01  SUM   PIC 999999.
            01  LOOP.
            02 IND PIC 9999 VALUE 0.
            02 MAX PIC 9999 VALUE 1000.
            02 REM3 PIC 9999.
            02 REM5 PIC 9999.
            02 ANS PIC 9999.
        PROCEDURE DIVISION.
        MAIN-PARA.
            PERFORM MAIN-LOOP UNTIL IND=MAX 
            DISPLAY SUM.
            ACCEPT SUM.
            STOP RUN.
        MAIN-LOOP.
            DIVIDE IND BY 3 GIVING ANS REMAINDER REM3.
            DIVIDE IND BY 5 GIVING ANS REMAINDER REM5.
            IF REM3 = 0 OR REM5 = 0 THEN
            ADD IND TO SUM
            END-IF.
            ADD 1 TO IND.