       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGRAMXX.
      ******************************************************************
      * Author:CLEUBER MACIEL
      * Date: 19/07/2024
      * Purpose: VARIAVEL ESTRUTURAL (GRUPO PARTE 3)
      * Tectonics: cobc
      ******************************************************************
       ENVIRONMENT         DIVISION.
       CONFIGURATION       SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE      SECTION.
       01  WRK-DADOS.
           05 WRK-NUM1      PIC 9(03) VALUE ZEROS.
           05 WRK-NUM2      PIC 9(03) VALUE ZEROS.

           77 WRK-RESUL     PIC 9(03) VALUE ZEROS.

       PROCEDURE  DIVISION.
       0100-RECEBE          SECTION.
           DISPLAY"DIGITE 2 VALORES "
           ACCEPT WRK-DADOS.

           COMPUTE WRK-RESUL = WRK-NUM1 + WRK-NUM2.
       0200-MOSTRA          SECTION.

           DISPLAY"RESULTADO..."  WRK-RESUL.

            STOP RUN.
       END PROGRAM PROGRAMXX.
