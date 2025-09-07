-- Descripción: Consulta registros de ORDENES_PAGO con filtro por NUMERO_FACTURA y muestra columnas seleccionadas.
SET SERVEROUTPUT ON SIZE UNLIMITED;

DECLARE
  TYPE ordenes_pago_tab IS TABLE OF ORDENES_PAGO%ROWTYPE;
  v_rows ordenes_pago_tab;
BEGIN

  -- QUERY EXAMPLE
  SELECT *
  BULK COLLECT INTO v_rows 
  FROM ORDENES_PAGO 
  WHERE NUMERO_FACTURA = 'FELT28250'
  AND NRO_ORDEN_PAGO IS NULL;


  -- COLUMNS NAMES
  DBMS_OUTPUT.PUT_LINE(
      'TIPDOC_CODIGO' || '^' ||
      'NUMERO_DOCUMENTO' || '^' ||
      'CODIGO_PROVEEDOR' || '^' ||
      'COMPANIA' || '^' ||
      'RAMO' || '^' ||
      'PRODUCTO' || '^' ||
      'NUMERO_FACTURA' || '^' ||
      'FECHA_FACTURA' || '^' ||
      'DEPARTAMENTO' || '^' ||
      'CIUDAD' || '^' ||
      'EXCENTA_ICA' || '^' ||
      'ACTIVIDAD_ECONOMICA_RENTA' || '^' ||
      'COD_SUBACTIVIDAD' || '^' ||
      'CONCEPTO_GIRO' || '^' ||
      'OFICINA_GIRO' || '^' ||
      'OFICINA_CONTABLE' || '^' ||
      'DESCRIPCION_CPTO_PAGO' || '^' ||
      'OBSERVACION' || '^' ||
      'VALOR_FACTURADO' || '^' ||
      'FECHA_FACTURACION' || '^' ||
      'FECHA_ANULACION_FACTURA' || '^' ||
      'FECHA_PAGO' || '^' ||
      'SOLICITANTE' || '^' ||
      'AUTORIZANTE' || '^' ||
      'PAGO_AUTORIZADO' || '^' ||
      'FECHA_AUTORIZACION' || '^' ||
      'USUARIO_AUTORIZA' || '^' ||
      'NRO_ORDEN_PAGO' || '^' ||
      'EXCENTO_IVA' || '^' ||
      'USUARIO_TRANSACCION' || '^' ||
      'FECHA_TRANSACCION' || '^' ||
      'FECHA_CREACION' || '^' ||
      'SOPORTE_DEDUCIBLES' || '^' ||
      'VAL_IBL' || '^' ||
      'VAL_EPS' || '^' ||
      'VAL_AFP' || '^' ||
      'VAL_ARL' || '^' ||
      'VAL_AFC' || '^' ||
      'VAL_AFPV' || '^' ||
      'VAL_VIVI' || '^' ||
      'VAL_PREP' || '^' ||
      'VAL_DEP'
  );


  -- QUERY VALUES
  FOR i IN 1 .. v_rows.COUNT LOOP
    DBMS_OUTPUT.PUT_LINE(
        NVL(v_rows(i).TIPDOC_CODIGO, '') || '^' ||
        NVL(TO_CHAR(v_rows(i).NUMERO_DOCUMENTO), '') || '^' ||
        NVL(TO_CHAR(v_rows(i).CODIGO_PROVEEDOR), '') || '^' ||
        NVL(TO_CHAR(v_rows(i).COMPANIA), '') || '^' ||
        NVL(TO_CHAR(v_rows(i).RAMO), '') || '^' ||
        NVL(TO_CHAR(v_rows(i).PRODUCTO), '') || '^' ||
        NVL(v_rows(i).NUMERO_FACTURA, '') || '^' ||
        NVL(TO_CHAR(v_rows(i).FECHA_FACTURA, 'YYYY-MM-DD HH24:MI:SS'), '') || '^' ||
        NVL(TO_CHAR(v_rows(i).DEPARTAMENTO), '') || '^' ||
        NVL(v_rows(i).CIUDAD, '') || '^' ||
        NVL(v_rows(i).EXCENTA_ICA, '') || '^' ||
        NVL(TO_CHAR(v_rows(i).ACTIVIDAD_ECONOMICA_RENTA), '') || '^' ||
        NVL(TO_CHAR(v_rows(i).COD_SUBACTIVIDAD), '') || '^' ||
        NVL(v_rows(i).CONCEPTO_GIRO, '') || '^' ||
        NVL(TO_CHAR(v_rows(i).OFICINA_GIRO), '') || '^' ||
        NVL(TO_CHAR(v_rows(i).OFICINA_CONTABLE), '') || '^' ||
        NVL(v_rows(i).DESCRIPCION_CPTO_PAGO, '') || '^' ||
        NVL(v_rows(i).OBSERVACION, '') || '^' ||
        NVL(TO_CHAR(v_rows(i).VALOR_FACTURADO, 'FM999999999999999.999'), '') || '^' ||
        NVL(TO_CHAR(v_rows(i).FECHA_FACTURACION, 'YYYY-MM-DD HH24:MI:SS'), '') || '^' ||
        NVL(TO_CHAR(v_rows(i).FECHA_ANULACION_FACTURA, 'YYYY-MM-DD HH24:MI:SS'), '') || '^' ||
        NVL(TO_CHAR(v_rows(i).FECHA_PAGO, 'YYYY-MM-DD HH24:MI:SS'), '') || '^' ||
        NVL(v_rows(i).SOLICITANTE, '') || '^' ||
        NVL(v_rows(i).AUTORIZANTE, '') || '^' ||
        NVL(v_rows(i).PAGO_AUTORIZADO, '') || '^' ||
        NVL(TO_CHAR(v_rows(i).FECHA_AUTORIZACION, 'YYYY-MM-DD HH24:MI:SS'), '') || '^' ||
        NVL(v_rows(i).USUARIO_AUTORIZA, '') || '^' ||
        NVL(TO_CHAR(v_rows(i).NRO_ORDEN_PAGO), '') || '^' ||
        NVL(v_rows(i).EXCENTO_IVA, '') || '^' ||
        NVL(v_rows(i).USUARIO_TRANSACCION, '') || '^' ||
        NVL(TO_CHAR(v_rows(i).FECHA_TRANSACCION, 'YYYY-MM-DD HH24:MI:SS'), '') || '^' ||
        NVL(TO_CHAR(v_rows(i).FECHA_CREACION, 'YYYY-MM-DD HH24:MI:SS'), '') || '^' ||
        NVL(v_rows(i).SOPORTE_DEDUCIBLES, '') || '^' ||
        NVL(TO_CHAR(v_rows(i).VAL_IBL, 'FM999999999999999.999'), '') || '^' ||
        NVL(TO_CHAR(v_rows(i).VAL_EPS, 'FM999999999999999.999'), '') || '^' ||
        NVL(TO_CHAR(v_rows(i).VAL_AFP, 'FM999999999999999.999'), '') || '^' ||
        NVL(TO_CHAR(v_rows(i).VAL_ARL, 'FM999999999999999.999'), '') || '^' ||
        NVL(TO_CHAR(v_rows(i).VAL_AFC, 'FM999999999999999.999'), '') || '^' ||
        NVL(TO_CHAR(v_rows(i).VAL_AFPV, 'FM999999999999999.999'), '') || '^' ||
        NVL(TO_CHAR(v_rows(i).VAL_VIVI, 'FM999999999999999.999'), '') || '^' ||
        NVL(TO_CHAR(v_rows(i).VAL_PREP, 'FM999999999999999.999'), '') || '^' ||
        NVL(TO_CHAR(v_rows(i).VAL_DEP, 'FM999999999999999.999'), '')
    );
  END LOOP;

EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Error durante la consulta: ' || SQLERRM);
END;
/
