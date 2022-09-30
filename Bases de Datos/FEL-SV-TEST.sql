-- ***************************************************************************************************************************
-- *          CONSULTA DE TABLAS CAT�LOGO FEL-SV.                                                                            *
-- ***************************************************************************************************************************
SELECT C.* FROM CAT_000 C ORDER BY C.ID_CAT;
SELECT C.* FROM CAT_001 C ORDER BY C.ID_CAT;
SELECT C.* FROM CAT_002 C ORDER BY C.ID_CAT;
SELECT C.* FROM CAT_003 C ORDER BY C.ID_CAT;
SELECT C.* FROM CAT_004 C ORDER BY C.ID_CAT;
SELECT C.* FROM CAT_005 C ORDER BY C.ID_CAT;
SELECT C.* FROM CAT_006 C ORDER BY C.ID_CAT;
SELECT C.* FROM CAT_007 C ORDER BY C.ID_CAT;
SELECT C.* FROM CAT_008 C ORDER BY C.ID_CAT;
SELECT C.* FROM CAT_009 C ORDER BY C.ID_CAT;
SELECT C.* FROM CAT_010 C ORDER BY C.ID_CAT;
SELECT C.* FROM CAT_011 C ORDER BY C.ID_CAT;
SELECT C.* FROM CAT_012 C ORDER BY C.ID_CAT;
SELECT C.* FROM CAT_013 C ORDER BY C.ID_CAT;
SELECT C.* FROM CAT_014 C ORDER BY C.ID_CAT;
SELECT C.* FROM CAT_015 C ORDER BY C.ID_CAT;
SELECT C.* FROM CAT_016 C ORDER BY C.ID_CAT;
SELECT C.* FROM CAT_017 C ORDER BY C.ID_CAT;
SELECT C.* FROM CAT_018 C ORDER BY C.ID_CAT;
SELECT C.* FROM CAT_019 C ORDER BY C.ID_CAT;
SELECT C.* FROM CAT_020 C ORDER BY C.ID_CAT;
SELECT C.* FROM CAT_021 C ORDER BY C.ID_CAT;
SELECT C.* FROM CAT_022 C ORDER BY C.ID_CAT;
SELECT C.* FROM CAT_023 C ORDER BY C.ID_CAT;
SELECT C.* FROM CAT_024 C ORDER BY C.ID_CAT;
SELECT C.* FROM CAT_025 C ORDER BY C.ID_CAT;
SELECT C.* FROM CAT_027 C ORDER BY C.ID_CAT;
SELECT C.* FROM CAT_028 C ORDER BY C.ID_CAT;
SELECT C.* FROM CAT_029 C ORDER BY C.ID_CAT;
SELECT C.* FROM CAT_030 C ORDER BY C.ID_CAT;
SELECT C.* FROM CAT_031 C ORDER BY C.ID_CAT;
SELECT C.* FROM CAT_032 C ORDER BY C.ID_CAT;

-- ***************************************************************************************************************************
-- *          CONSULTA DE TABLAS EMISOR, SHAN, COMPA�IA Y ESTABLECIMIENTO FEL-SV.                                            *
-- ***************************************************************************************************************************
SELECT F.* FROM EMISOR_V3 F;
SELECT F.* FROM EMISOR_KCOO_V3 F;
SELECT F.* FROM EMISOR_ESTABLECIMIENTO_V3 F; -- EN LAS NOTAS DE CR�DITO ESTRUCTURA JAVA SE DEBE ANULAR LOS CAMPOS {codEstableMH, codEstable, codPuntoVentaMH, codPuntoVenta}.
SELECT F.* FROM NOTIFIACION_CORREO_V3 F ORDER BY ID_NOTIFICACION;
SELECT F.* FROM NOTIFIACION_CORREO_V3 F WHERE F.ACTIVO=1 ORDER BY ID_NOTIFICACION;

-- UPDATE NOTIFIACION_CORREO_V3 SET ACTIVO=0 WHERE ID_NOTIFICACION IN (1, 2, 4, 5, 6, 7, 8, 9);
-- UPDATE NOTIFIACION_CORREO_V3 SET ACTIVO=1 WHERE ID_NOTIFICACION IN (1, 3, 4, 7, 8, 9, 10);
-- INSERT INTO NOTIFIACION_CORREO_V3 (ID_NOTIFICACION, CUENTA_CORREO, ACTIVO) VALUES (10, 'rasafacturacion@uno-terra.com', 0);
-- COMMIT;

-- ***************************************************************************************************************************
-- *          CONSULTA DE TABLA FEL JD EDWARDS FEL-SV.                                                                       *
-- ***************************************************************************************************************************
SELECT F.* FROM CRPDTA.F5542FEL@JDEPY F;

SELECT F.FEKCOO, F.FEDOCO, F.FEDCTO, F.FEDOC, F.FEDCT, F.FEMCU, F.FEAN8, F.FESHAN, F.FECRCD, F.FESTCD, F.FEIVD, F.FECRSREF01, F.FECRSREF02, F.FECRSREF03, F.FECRSREF04, F.FECRSREF05, F.FEJEVER
FROM CRPDTA.F5542FEL@JDEPY F
WHERE F.FESTCD='000' AND F.FEDCTO='S3';

SELECT F.* FROM CRPDTA.F5542FEL@JDEPY F WHERE F.FEDOCO=72959053;
UPDATE CRPDTA.F5542FEL@JDEPY SET FESTCD='000', FECRSREF01='-', FECRSREF02='-', FECRSREF03='-', FECRSREF04='-', FECRSREF05='-' WHERE FEDOCO=72959053;
COMMIT;

-- ***************************************************************************************************************************
-- *          COMPROBANTE DE CR�DITO FISCAL.                                                                                 *
-- ***************************************************************************************************************************
SELECT F.* FROM DTE_CCF_V3 F ORDER BY F.ID_DTE DESC;
SELECT F.* FROM IDENTIFICACION_CCF_V3 F ORDER BY F.ID_DTE DESC;
SELECT F.* FROM DOCU_RELA_CCF_V3 F ORDER BY F.ID_DTE DESC;
SELECT F.* FROM RECEPTOR_CCF_V3 F ORDER BY F.ID_DTE DESC;
SELECT F.* FROM SHIPTO_CCF_V3 F ORDER BY F.ID_DTE DESC;
SELECT F.* FROM OTROS_DOCU_CCF_V3 F ORDER BY F.ID_DTE DESC;
SELECT F.* FROM VENTA_TERCERO_CCF_V3 F ORDER BY F.ID_DTE DESC;
SELECT F.* FROM CUERPO_DOCU_CCF_V3 F ORDER BY F.ID_DTE DESC;
SELECT F.* FROM CUERPO_TRIBUTO_CCF_V3 F ORDER BY F.ID_DTE DESC;
SELECT F.* FROM RESUMEN_CCF_V3 F ORDER BY F.ID_DTE DESC;
SELECT F.* FROM RESUMEN_TRIBUTO_CCF_V3 F ORDER BY F.ID_DTE DESC;
SELECT F.* FROM EXTENSION_CCF_V3 F ORDER BY F.ID_DTE DESC;
SELECT F.* FROM APENDICE_CCF_V3 F ORDER BY F.ID_DTE DESC;

SELECT F.* FROM DTE_CCF_V3 F WHERE F.ID_DTE IN (211);
SELECT F.* FROM IDENTIFICACION_CCF_V3 F WHERE F.ID_DTE IN (211);
SELECT F.* FROM DOCU_RELA_CCF_V3 F WHERE F.ID_DTE IN (211);
SELECT F.* FROM RECEPTOR_CCF_V3 F WHERE F.ID_DTE IN (211);
SELECT F.* FROM SHIPTO_CCF_V3 F WHERE F.ID_DTE IN (211);
SELECT F.* FROM OTROS_DOCU_CCF_V3 F WHERE F.ID_DTE IN (211);
SELECT F.* FROM VENTA_TERCERO_CCF_V3 F WHERE F.ID_DTE IN (211);
SELECT F.* FROM CUERPO_DOCU_CCF_V3 F WHERE F.ID_DTE IN (211);
SELECT F.* FROM CUERPO_TRIBUTO_CCF_V3 F WHERE F.ID_DTE IN (211);
SELECT F.* FROM RESUMEN_CCF_V3 F WHERE F.ID_DTE IN (211);
SELECT F.* FROM RESUMEN_TRIBUTO_CCF_V3 F WHERE F.ID_DTE IN (211);
SELECT F.* FROM EXTENSION_CCF_V3 F WHERE F.ID_DTE IN (211);
SELECT F.* FROM APENDICE_CCF_V3 F WHERE F.ID_DTE IN (211);

-- ***************************************************************************************************************************
-- *          NOTA DE CR�DITO.                                                                                               *
-- ***************************************************************************************************************************
SELECT F.* FROM DTE_NC_V3 F ORDER BY F.ID_DTE DESC;
SELECT F.* FROM IDENTIFICACION_NC_V3 F ORDER BY F.ID_DTE DESC;
SELECT F.* FROM DOCU_RELA_NC_V3 F ORDER BY F.ID_DTE DESC;

SELECT F.* FROM DTE_NC_V3 F WHERE F.ID_DTE IN (1);
SELECT F.* FROM IDENTIFICACION_NC_V3 F WHERE F.ID_DTE IN (1);
SELECT F.* FROM DOCU_RELA_NC_V3 F WHERE F.ID_DTE IN (1);
-- ***************************************************************************************************************************
-- *          TABLAS FEL-GUATEMALA.                                                                                          *
-- ***************************************************************************************************************************
SELECT F.* FROM CRPDTA.F59421CA@JDEPY F;
SELECT F.* FROM CRPDTA.F59421DE@JDEPY F; -- ESTA TABLA NO SE PUEDE CONSULTAR A TRAVES DE DBLINK.
SELECT F.* FROM CRPDTA.F5942PAR@JDEPY F;
