//USUARIOD JOB  CLASS=A,MSGCLASS=O,MSGLEVEL=(1,1),NOTIFY=&SYSUID 
//JOBLIB   DD   DSN=DSND10.SDSNLOAD,DISP=SHR 
//         DD   DSN=USUARIO.CURSOS.PGMLIB,DISP=SHR 
//*************************************************************** 
//* EJECUTAR STEP1 SOLO LA PRIMERA VEZ PARA DEFINIR SALIDA      * 
//*************************************************************** 
//* 
//*STEP1    EXEC PGM=IEFBR14 
//*DD1      DD   DSN=USUARIO.DB2.SALIDA,UNIT=SYSDA, 
//*              DCB=(LRECL=80,BLKSIZE=8000,RECFM=FB), 
//*              SPACE=(TRK,(1,1),RLSE),DISP=(,CATLG) 
//* 
//*************************************************************** 
//*      EJECUTAR PROGRAMA COBOL CON SQL EMBEBIDO               * 
//*************************************************************** 
//* 
//STEP2    EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT) 
//SYSTSPRT DD   SYSOUT=* 
//DDENTRA  DD   DSN=USUARIO.ARCHIVO.KSDS.VSAM,DISP=SHR 
//SYSOUT   DD   DSN=USUARIO.SYSOUT,DISP=SHR 
//SYSTSIN  DD   * 
  DSN SYSTEM(DBDG) 
  RUN  PROGRAM(PGMB4CAF) PLAN(CURSOCAF) + 
      LIB('USUARIO.CURSOS.PGMLIB') 
  END 
//SYSPRINT DD   SYSOUT=* 
//SYSUDUMP DD   SYSOUT=* 
//SYSIN    DD   * 
//* 
// 