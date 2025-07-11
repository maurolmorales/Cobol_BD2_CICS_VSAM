      *    TBVCLIEN
      ******************************************************************
      * COPY DE ARCHIVO DE NOVEDADES VALIDADAS CLIENTES VSAM           *
      * LARGO REGISTRO 244 BYTES                                       *
      * KEY (1,17)                                                     *
      *  TIPO_NOVEDAD; TIPO_DOCUMENTO; NRO_DOCUMENTO; NRO_SECUENCIA    *
      * INTEGRIDAD REFERENCIAL CON CUENTAS A TRAVÉS NRO CLIENTE        *
      ******************************************************************
       01  WK-TBCLIE. 
      *    *************************************************************
      *                       TIPO_NOVEDAD 
      *    VALIDO = AL 
           10 WK-CLI-TIPO-NOVEDAD 
              PIC X(2). 
      *    *************************************************************
                                                                        
      *    *************************************************************
      *                       TIPO_DOCUMENTO 
      *    VALIDOS = DU, PA, LE, LC 
           10 WK-CLI-TIPO-DOCUMENTO 
              PIC X(2). 
      *    *************************************************************
      *                       NRO_DOCUMENTO 
      *    DOS PRIMEROS DÍGITOS =NRO ALUMNO 
      *    SIGUIENTES 9    DIGITOS = NRO ASCENDENTE A PARTIR DE 1 POR 
      *    CADA REGISTRO DADO DE ALTA 
           10 WK-CLI-NRO-DOCUMENTO 
              PIC  9(11). 
      *    *************************************************************
      *                       NRO_SECUENCIA_NOVCLI 
      *    *************************************************************
      *    CONTAR SECUENCIA A PARTIR DE "1" 
           10 WK-CLI-NRO-SEC       PIC  9(2). 
      *    *************************************************************
      *                       NRO_CLIENTE 
      *    DOS PRIMEROS DÍGITOS =NRO ALUMNO 
      *    SIGUIENTES 3    DIGITOS = NRO ASCENDENTE A PARTIR DE 1 POR 
      *    CADA REGISTRO DADO DE ALTA 
           10 WK-CLI-NRO-CLIENTE   PIC  9(5). 
      *    *************************************************************
      *                       NOMBRE_CLIENTE 
           10 WK-CLI-NOMBRE-CLIENTE 
              PIC X(30). 
      *    *************************************************************
      *                       APELLIDO_CLIENTE 
           10 WK-CLI-APELLIDO-CLIENTE 
              PIC X(30). 
      *    *************************************************************
      *                       DOMICILIO 
           10 WK-CLI-DOMICILIO     PIC X(30). 
      *    *************************************************************
      *                       CIUDAD 
           10 WK-CLI-CIUDAD        PIC X(30). 
      *    *************************************************************
      *                       CODIGO_POSTAL 
           10 WK-CLI-CODIGO-POSTAL 
              PIC X(8). 
      *    *************************************************************
      *                       NACIONALIDAD 
           10 WK-CLI-NACIONALIDAD  PIC X(30). 
      *    *************************************************************
      *                       FECHA_DE_ALTA 
      *    FORMATO AAAA-MM-DD 
           10 WK-CLI-FECHA-DE-ALTA 
              PIC X(10). 
      *    *************************************************************
      *                       FECHA_DE_BAJA 
           10 WK-CLI-FECHA-DE-BAJA 
      *    FORMATO AAAA/MM/DD 
              PIC X(10). 
      *    *************************************************************
      *                       ESTADO_CIVIL 
      *    VALIDOS: SO; VI; CA; DI; UC 
           10 WK-CLI-ESTADO-CIVIL  PIC X(2). 
      *    *************************************************************
      *                       SEXO 
           10 WK-CLI-SEXO          PIC X(2). 
      *    *************************************************************
      *                       CORREO_ELECTRONICO 
           10 WK-CLI-CORREO-ELECTRONICO 
              PIC X(30). 
      *    *************************************************************
      *                       FECCHA_NACIMIENTO 
           10 WK-CLI-FECHA-NACIMIENTO 
      *    FORMATO AAAA-MM-DD 
              PIC X(10). 
      ******************************************************************
      * THE NUMBER OF COLUMNS DESCRIBED BY THIS DECLARATION IS 15      *
      ******************************************************************