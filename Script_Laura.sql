SET SERVEROUTPUT ON;  -- Obligatorio para visualizar la salida

DECLARE
    CURSOR c_empresas IS
       SELECT 
            NVL(HORAS_CAMPO_ENCARGADO, 0),
            NVL(NO_CAMBIA_PLAN, 'N'),
            NVL(OBSERVACIONES, ' '),
            NVL(TIPO_DOCUMENTO, '  '),
            TO_CHAR(FECHA_ENTRA_EN_MORA, 'YYYY-MM-DD HH24:MI:SS'),
            NVL(COD_RIESGO_BOLIVAR, 0),
            TO_CHAR(FECHA_REAFILIACION, 'YYYY-MM-DD HH24:MI:SS'),
            NVL(PROVEEDOR_MASIVO, 0),
            NVL(COD_TAMANO_EMPRESA, 0),
            NVL(ALTO_RIESGO_AE, 'N'),
            NVL(ALTO_RIESGO_D2090, 'N'),
            NVL(ID_REF_GRUPO, 0),
            NVL(VALIDAR_GRUPO_EMPRESARIAL, 'N'),
            NVL(CODIGO_ASESOR_PREASIGNADO, 0),
            NVL(CODIGO_AGR_ENCAR_PREASIGNADO, 0),
            NVL(CLASE_RIESGO_PRINCIPAL, 0),
            NVL(CODIGO_ACTIVIDAD_ECONOMICA, 0),
            NVL(HISTORICO_BEAN, 'N'),
            NVL(RAZON_SOCIAL, ' '),
            NVL(NUMERO_CRONOGRAMA, 0),
            NVL(USUARIO_TRANSACCION, ' '),
            NVL(ESTADO_GRUPO_CRONOGRAMA, 'N'),
            TO_CHAR(FECHA_TRANSACCION, 'YYYY-MM-DD HH24:MI:SS'),
            TO_CHAR(FECHA_ASIGNA_ASESOR_PREVENCION, 'YYYY-MM-DD HH24:MI:SS'),
            TO_CHAR(FECHA_AFILIACION, 'YYYY-MM-DD HH24:MI:SS'),
            TO_CHAR(FECHA_DESAFILIACION, 'YYYY-MM-DD HH24:MI:SS'),
            NVL(FAX, ' '),
            TO_CHAR(FECHA_ESTADO_GRUPO, 'YYYY-MM-DD HH24:MI:SS'),
            NVL(CLIENTE_PREFERENCIAL_ARP, 'N'),
            NVL(HORAS_ADMIN, 0),
            NVL(HORAS_ADMIN_ENCARGADO, 0),
            NVL(HORAS_CAMPO, 0),
            NVL(CODIGO_SECTOR_ECONOMICO, ' '),
            NVL(CODIGO_SUBSECTOR_ECONOMICO, 0),
            NVL(CODIGO_CIUDAD, ' '),
            NVL(CODIGO_DEPARTAMENTO, 0),
            NVL(ENCARGADO_SALUD_OCUPACIONAL, ' '),
            NVL(CARGO_ENCARGADO_SALUD, ' '),
            NVL(REPRESENTANTE_LEGAL, ' '),
            NVL(CARGO_REPRESENTANTE_LEGAL, ' '),
            NVL(CODIGO_CAUSA_GRUPO, 0),
            NVL(CODIGO_CAUSA_ACTIVIDAD, 0),
            NVL(CODIGO_PLAN, 0),
            NVL(CODIGO_ASESOR_PREVENCION, 0),
            NVL(CODIGO_ASESOR_PREVENCION_ENCAR, 0),
            NVL(CODIGO_CAUSA_PLAN, 0),
            NVL(CODIGO_GRUPO_EMPRESARIAL, 0),
            NVL(NIT_EMPRESA, 0)
        FROM EMPRESA
        WHERE NIT_EMPRESA = 860002503;
BEGIN
    DBMS_OUTPUT.PUT_LINE('HORAS_CAMPO_ENCARGADO^NO_CAMBIA_PLAN^OBSERVACIONES^TIPO_DOCUMENTO^FECHA_ENTRA_EN_MORA^COD_RIESGO_BOLIVAR^FECHA_REAFILIACION^PROVEEDOR_MASIVO^COD_TAMANO_EMPRESA^ALTO_RIESGO_AE^ALTO_RIESGO_D2090^ID_REF_GRUPO^VALIDAR_GRUPO_EMPRESARIAL^CODIGO_ASESOR_PREASIGNADO^CODIGO_AGR_ENCAR_PREASIGNADO^CLASE_RIESGO_PRINCIPAL^CODIGO_ACTIVIDAD_ECONOMICA^HISTORICO_BEAN^RAZON_SOCIAL^NUMERO_CRONOGRAMA^USUARIO_TRANSACCION^ESTADO_GRUPO_CRONOGRAMA^FECHA_TRANSACCION^FECHA_ASIGNA_ASESOR_PREVENCION^FECHA_AFILIACION^FECHA_DESAFILIACION^FAX^FECHA_ESTADO_GRUPO^CLIENTE_PREFERENCIAL_ARP^HORAS_ADMIN^HORAS_ADMIN_ENCARGADO^HORAS_CAMPO^CODIGO_SECTOR_ECONOMICO^CODIGO_SUBSECTOR_ECONOMICO^CODIGO_CIUDAD^CODIGO_DEPARTAMENTO^ENCARGADO_SALUD_OCUPACIONAL^CARGO_ENCARGADO_SALUD^REPRESENTANTE_LEGAL^CARGO_REPRESENTANTE_LEGAL^CODIGO_CAUSA_GRUPO^CODIGO_CAUSA_ACTIVIDAD^CODIGO_PLAN^CODIGO_ASESOR_PREVENCION^CODIGO_ASESOR_PREVENCION_ENCAR^CODIGO_CAUSA_PLAN^CODIGO_GRUPO_EMPRESARIAL^NIT_EMPRESA');
    
    FOR l_empresa in c_empresas LOOP 
    DBMS_OUTPUT.PUT_LINE(
            l_empresa.HORAS_CAMPO_ENCARGADO || '^' ||
            l_empresa.NO_CAMBIA_PLAN || '^' ||
            REPLACE(REPLACE(REPLACE(l_empresa.OBSERVACIONES, CHR(13), ' '), CHR(10), ' '), '^', ' ') || '^' ||
            l_empresa.TIPO_DOCUMENTO || '^' ||
            NVL(TO_CHAR(l_empresa.FECHA_ENTRA_EN_MORA, 'YYYY-MM-DD HH24:MI:SS'), ' ') || '^' ||
            l_empresa.COD_RIESGO_BOLIVAR || '^' ||
            NVL(TO_CHAR(l_empresa.FECHA_REAFILIACION, 'YYYY-MM-DD HH24:MI:SS'), ' ') || '^' ||
            l_empresa.PROVEEDOR_MASIVO || '^' ||
            l_empresa.COD_TAMANO_EMPRESA || '^' ||
            l_empresa.ALTO_RIESGO_AE || '^' ||
            l_empresa.ALTO_RIESGO_D2090 || '^' ||
            l_empresa.ID_REF_GRUPO || '^' ||
            l_empresa.VALIDAR_GRUPO_EMPRESARIAL || '^' ||
            l_empresa.CODIGO_ASESOR_PREASIGNADO || '^' ||
            l_empresa.CODIGO_AGR_ENCAR_PREASIGNADO || '^' ||
            l_empresa.CLASE_RIESGO_PRINCIPAL || '^' ||
            l_empresa.CODIGO_ACTIVIDAD_ECONOMICA || '^' ||
            l_empresa.HISTORICO_BEAN || '^' ||
            l_empresa.RAZON_SOCIAL || '^' ||
            l_empresa.NUMERO_CRONOGRAMA || '^' ||
            l_empresa.USUARIO_TRANSACCION || '^' ||
            l_empresa.ESTADO_GRUPO_CRONOGRAMA || '^' ||
            NVL(TO_CHAR(l_empresa.FECHA_TRANSACCION, 'YYYY-MM-DD HH24:MI:SS'), ' ') || '^' ||
            NVL(TO_CHAR(l_empresa.FECHA_ASIGNA_ASESOR_PREVENCION, 'YYYY-MM-DD HH24:MI:SS'), ' ') || '^' ||
            NVL(TO_CHAR(l_empresa.FECHA_AFILIACION, 'YYYY-MM-DD HH24:MI:SS'), ' ') || '^' ||
            NVL(TO_CHAR(l_empresa.FECHA_DESAFILIACION, 'YYYY-MM-DD HH24:MI:SS'), ' ') || '^' ||
            l_empresa.FAX || '^' ||
            NVL(TO_CHAR(l_empresa.FECHA_ESTADO_GRUPO, 'YYYY-MM-DD HH24:MI:SS'), ' ') || '^' ||
            l_empresa.CLIENTE_PREFERENCIAL_ARP || '^' ||
            l_empresa.HORAS_ADMIN || '^' ||
            l_empresa.HORAS_ADMIN_ENCARGADO || '^' ||
            l_empresa.HORAS_CAMPO || '^' ||
            l_empresa.CODIGO_SECTOR_ECONOMICO || '^' ||
            l_empresa.CODIGO_SUBSECTOR_ECONOMICO || '^' ||
            l_empresa.CODIGO_CIUDAD || '^' ||
            l_empresa.CODIGO_DEPARTAMENTO || '^' ||
            l_empresa.ENCARGADO_SALUD_OCUPACIONAL || '^' ||
            l_empresa.CARGO_ENCARGADO_SALUD || '^' ||
            l_empresa.REPRESENTANTE_LEGAL || '^' ||
            l_empresa.CARGO_REPRESENTANTE_LEGAL || '^' ||
            l_empresa.CODIGO_CAUSA_GRUPO || '^' ||
            l_empresa.CODIGO_CAUSA_ACTIVIDAD || '^' ||
            l_empresa.CODIGO_PLAN || '^' ||
            l_empresa.CODIGO_ASESOR_PREVENCION || '^' ||
            l_empresa.CODIGO_ASESOR_PREVENCION_ENCAR || '^' ||
            l_empresa.CODIGO_CAUSA_PLAN || '^' ||
            l_empresa.CODIGO_GRUPO_EMPRESARIAL || '^' ||
            l_empresa.NIT_EMPRESA
        );
  END LOOP;
 
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('No records found for NIT_EMPRESA = 860002503.');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('An error occurred: ' || SQLERRM);
END;
/

-- Warning: This script queries a table with 48 columns and may process large data sets. Use prudently on large tables.