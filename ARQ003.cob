       PROGRAM-ID. ARQ003.
      ******************************************************************
      * Author:CLEUBER MACIEL
      * Date: 29/07/2024
      * Purpose: LEITURA DE TODOS OS REGISTROS DO ARQUIVO CLIENTES.TXT
      * Tectonics: cobc
      ******************************************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT CLIENTES ASSIGN TO "C:\cobol\DADOS\CLIENTES.DAT.txt"
           FILE STATUS IS FS-CLIENTES.

       DATA DIVISION.
       FILE SECTION.
       FD  CLIENTES.
       01  REG-CLIENTES.
           05 REG-ID        PIC 9(04).
           05 REG-NOME      PIC X(20).
           05 REG-TELEFONE  PIC X(11).
       WORKING-STORAGE SECTION.
       01  WRK-CLIENTES.
           05 WRK-ID        PIC 9(04).
           05 WRK-NOME      PIC X(20).
           05 WRK-TELEFONE  PIC X(11).

       77  FS-CLIENTES PIC 9(02).
       77  WRK-MSG-ERRO PIC X(30).

       PROCEDURE DIVISION.
       0000-PRINCIPAL         SECTION.
           PERFORM 0100-INICIALIZAR.
           PERFORM 0200-PROCESSAR
           PERFORM 0300-FINALIZAR

           STOP RUN.

       0100-INICIALIZAR       SECTION.
           OPEN INPUT CLIENTES.

           IF FS-CLIENTES EQUAL 35
               MOVE "ARQUIVO NAO FOI ABERTO " TO WRK-MSG-ERRO
               PERFORM 9000-TRATA-ERRO
               END-IF.




       0200-PROCESSAR         SECTION.

           READ CLIENTES
           IF FS-CLIENTES EQUAL  0
               PERFORM UNTIL FS-CLIENTES  NOT EQUAL 00

               DISPLAY "ID.... "  REG-ID
               DISPLAY "NOME.. " REG-NOME
               DISPLAY "TELE.. " REG-TELEFONE

               READ CLIENTES

           END-PERFORM
               ELSE

               DISPLAY "ARQUIVO VAZIO"

               END-IF.
       0300-FINALIZAR         SECTION.
           DISPLAY"FIM DE PROGRAMA ".
           CLOSE CLIENTES.

       9000-TRATA-ERRO.
           DISPLAY WRK-MSG-ERRO.
           GOBACK.
