      ******************************************************************
      * Author: CLEUBER MACIEL
      * Date: 13/07/2024
      * Purpose: VARIAVEL.
      * Tectonics: APRENDIZADO DE COBOL.
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       77 WRK-DADOS PIC X(30) VALUE "DIGITE SEU NOME POR FAVOR." .
       77 WRK-NOME PIC X(20) VALUE SPACES.
       77 WRK-VALOR PIC 9(2) VALUE 10.

       PROCEDURE DIVISION.

           DISPLAY WRK-DADOS.
           ACCEPT WRK-NOME.
           DISPLAY "SEJA BEM VINDO Sr(a)"  WRK-NOME.
           DISPLAY "O VALOR DA VARIAVEL E " WRK-VALOR.
            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
