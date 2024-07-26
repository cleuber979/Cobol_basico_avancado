       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGRAMXX.
      ******************************************************************
      * Author:CLEUBER MACIEL
      * Date: 19/07/2024
      * Purpose: USOR DO PERFORM TECLA DE ESCAPE
      * Tectonics: cobc
      ******************************************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77  WRK-PRODUTO     PIC X(30)      VALUE SPACES.
       77  WRK-VALOR       PIC 9(05)V99   VALUE ZEROS.
       77  WRK-VENDAS-ACUM PIC 9(06)V99   VALUE ZEROS.
       77  WRK-PROD-ACUM   PIC 9(03)      VALUE ZEROS.

       PROCEDURE DIVISION.
       0100-PRINCIPAL   SECTION.
           PERFORM 0100-INICIALIZAR.
           PERFORM 0200-PROCESSAR UNTIL WRK-VALOR EQUAL 99999.
           PERFORM 0300-FINALIZAR.

           STOP RUN.
       0100-INICIALIZAR        SECTION.
           DISPLAY"DIGITE O PRODUTO "
           ACCEPT WRK-PRODUTO.
           DISPLAY"DIGITE O VALOR "
           ACCEPT WRK-VALOR.

       0200-PROCESSAR       SECTION.
           COMPUTE WRK-VENDAS-ACUM = WRK-VENDAS-ACUM + WRK-VALOR
           ADD 1 TO WRK-PROD-ACUM.
           PERFORM 0100-INICIALIZAR.
       0300-FINALIZAR    SECTION.

           DISPLAY"===================================="
           DISPLAY"TOTAL DE VENDAS  "  WRK-VENDAS-ACUM
           DISPLAY"TOTAL DE PRODUTOS " WRK-PROD-ACUM.
