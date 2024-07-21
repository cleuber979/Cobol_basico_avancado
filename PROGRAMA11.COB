       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGRAMXX.
      ******************************************************************
      * Author:CLEUBER MACIEL
      * Date: 20/07/2024
      * Purpose: EXEMPLO DE OPERACAO SUBTRACAO(SUBTRACT)
      * Tectonics: cobc
      ******************************************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE           SECTION.
       77 WRK-NUM1                PIC 9(04) VALUE ZEROS.
       77 WRK-NUM2               PIC  9(04) VALUE ZEROS.
       77 WRK-RESULTADO          PIC  S9(07) VALUE ZEROS.
       77 WRK-RESULTADO-ED       PIC -ZZZ.ZZZ.ZZ9,99 VALUE ZEROS.

       PROCEDURE DIVISION.
       0100-RECEBE         SECTION.
           DISPLAY "DIGITE O NUMERO 1 "
           ACCEPT WRK-NUM1
           DISPLAY"DIGFITE O NUMERO 2 "
           ACCEPT  WRK-NUM2
           DIVIDE WRK-NUM1 BY WRK-NUM2 GIVING WRK-RESULTADO
                  ON SIZE ERROR
                  DISPLAY"ERRO- DIVISAO POR 0 ".

       0200-MOSTRA       SECTION.
           MOVE WRK-RESULTADO TO WRK-RESULTADO-ED.
           DISPLAY "RESULTADO... " WRK-RESULTADO-ED.
       0300-FINALIZAR    SECTION.

            STOP RUN.
       END PROGRAM PROGRAMXX.
