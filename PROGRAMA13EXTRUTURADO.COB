       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGRAM13.
      ******************************************************************
      * Author:CLEUBER MACIEL
      * Date: 19/07/2024
      * Purpose: LEARN COBOL
      * Tectonics: cobc
      ******************************************************************
      *=================================================================
CLB01 *==ALTERACAES                        REMARKS
      *==REMONTEI LOGICA DOS APROVADOS
      *==AUTOR:CLEBER BARBOSA       EMPRESA:CLB
CLB01 *==DATA:23/07/2024
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
CLB01  77  WRK-NIVEL    PIC X(05) VALUE SPACES.
CLB01  77  WRK-NOTA1    PIC 9(02)V99 VALUE ZEROS.
       77  WRK-NOTA2    PIC 9(02)V99 VALUE ZEROS.
       77  WRK-MEDIA    PIC 9(02)V99 VALUE ZEROS.

       PROCEDURE DIVISION.
       0001-PRINCIPAL      SECTION.
           PERFORM 0100-INICIALIZAR
           PERFORM 0200-PROCESSAR
           PERFORM 0300-FINALIZAR
           STOP RUN.

       0100-INICIALIZAR        SECTION.
           DISPLAY "QUAL E SEU NIVEL (FUND/MEDIO)?"
           ACCEPT WRK-NIVEL.
           DISPLAY "DIGITE NOTA 1 "
           ACCEPT WRK-NOTA1
           DISPLAY "DIGITE NOTA 2 "
           ACCEPT WRK-NOTA2.

       0200-PROCESSAR     SECTION.
           COMPUTE WRK-MEDIA = (WRK-NOTA1+ WRK-NOTA2)/2.


           DISPLAY "MEDIA..." WRK-MEDIA.
CLB01          IF WRK-NIVEL(01:04) EQUAL "FUND" AND WRK-MEDIA
CLB01              GREATER THAN OR EQUAL  6
CLB01               DISPLAY "APROVADO"
CLB01           END-IF.
CLB01
CLB01           IF WRK-NIVEL(01:05) EQUAL "MEDIO" AND WRK-MEDIA
CLB01               GREATER THAN OR EQUAL 7
CLB01               DISPLAY"APROVADO"
CLB01               END-IF.

       0300-FINALIZAR    SECTION.

           CONTINUE.

           DISPLAY"FIM DE PROGRAMA ".
