       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGRAMXX.
      ******************************************************************
      * Author:CLEUBER MACIEL
      * Date: 19/07/2024
      * Purpose: VARIAVEL ESTRUTURAL (GRUPO) - EXEMPLO 2
      * Tectonics: cobc
      ******************************************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE      SECTION.
       01  WRK-ENTRADA.
           05 WRK-CODIGO   PIC 9(04) VALUE ZEROS.
           05 WRK-NOME     PIC X(5) VALUE SPACES.
           05 WRK-SALARIO  PIC 9(09) VALUE ZEROS.
       PROCEDURE DIVISION.
       0100-RECEBE         SECTION.
           DISPLAY"ENTRE COM A LINHA DE DADOS ".
           ACCEPT WRK-ENTRADA.
       0200-MOSTRA         SECTION.
           DISPLAY"CODIGO..." WRK-CODIGO.
           DISPLAY"NOME....." WRK-NOME.
           DISPLAY"SALARIO.." WRK-SALARIO.

            STOP RUN.
       END PROGRAM PROGRAMXX.
