
      *///////// COPY DE REFERENCIA ////////////////////////////
      *////////////// CLICOB ////////////////////////////////////////// 
      ************************************** 
      *         LAYOUT SUCURSAL            * 
      *     LARGO REGISTRO = 93 BYTES      * 
      ************************************** 
       01  WS-REG-CLICOB. 
      * TIPO DOCUMENTO VALIDOS: 'DU'; 'PA'; 'PE'; 'CI' [1:2]
           03  WS-SUC-TIP-DOC      PIC XX       VALUE SPACES. 
           03  WS-SUC-NRO-DOC      PIC 9(11)   VALUE ZEROS. 
           03  WS-SUC-NOMAPE       PIC X(30)    VALUE SPACES. 
      * ESTADO CIVIL   VALIDOS: 'SOLTERO   '; 'VIUDO     ' 
           03  WS-SUC-EST-CIV      PIC X(10)    VALUE SPACES. 
      * SEXO           VALIDOS: 'F'; 'M'; 'O' 
           03  WS-SUC-SEXO         PIC X        VALUE SPACES. 
           03  FILLER              PIC X(39)    VALUE SPACES. 


                       