       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGRAMXX.
      ******************************************************************
      * Author:CLEUBER MACIEL
      * Date: 24/07/2024
      * Purpose: IMPRESSAO TABUADA 1 A 10
      * Tectonics: cobc
      ******************************************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NUMERO     PIC 9(02) VALUE ZEROS.
       77 WRK-CONTADOR   PIC 9(02) VALUE 1.
       77 WRK-RESULTADO  PIC 9(03) VALUE ZEROS.

       PROCEDURE DIVISION.
       0100-INICIALIZAR         SECTION.
           DISPLAY"QUAL NUMERO ..."
           ACCEPT WRK-NUMERO.

       0200-PROCESSAR      SECTION.
      *    PERFORM UNTIL WRK-CONTADOR GREATER 10
      *     COMPUTE WRK-RESULTADO = WRK-NUMERO * WRK-CONTADOR
      *    DISPLAY WRK-NUMERO "X" WRK-CONTADOR "=" WRK-RESULTADO
      *    ADD 1 TO WRK-CONTADOR
      *    END-PERFORM.
      *=================================================================
      *    DUAS FORMAS DE SE FAZER
      *     PERFORM 10 TIMES
      *    COMPUTE WRK-RESULTADO = WRK-NUMERO * WRK-CONTADOR
      *    DISPLAY WRK-NUMERO "X" WRK-CONTADOR "=" WRK-RESULTADO
      *    ADD 1 TO WRK-CONTADOR
      *    END-PERFORM.

           PERFORM VARYING WRK-CONTADOR FROM 1 BY 1
                   UNTIL WRK-CONTADOR GREATER 10
           COMPUTE WRK-RESULTADO = WRK-NUMERO * WRK-CONTADOR
           DISPLAY WRK-NUMERO "X" WRK-CONTADOR "=" WRK-RESULTADO
           END-PERFORM.

       0300-FINALIZAR    SECTION.

            STOP RUN.
       END PROGRAM PROGRAMXX.
