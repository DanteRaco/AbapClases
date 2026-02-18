CLASS zclase_03 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zclase_03 IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
*
*    DATA(lv_log_entry) = 'ERROR_LOG_2026-02-08_TICKET:AX-99827-BC_PRIORITY:HIGH'.
*
*    DATA: Lv_pattern   TYPE string VALUE '[A-Z]{2}-\d{5}-[A-Z]{2}',
*          lv_cod_error TYPE    string,
*          lv_date      TYPE string  VALUE '2026-02-08'.
*
**    lv_cod_error = match( val = lv_log_entry pcre =  Lv_pattern occ = -1  ).
**    out->write( lv_cod_error ).
**
**    REPLACE ALL OCCURRENCES OF PCRE '-'
**                IN lv_date
**                WITH  '/'.
**    out->write( lv_date ).
**
***    DATA(lv_lista_nombres) = 'juan, pedro, lucas '.
***
***    REPLACE FIRST OCCURRENCE OF PCRE ',(?=[^,]+$)'
****            IN lv_lista_nombres
****            WITH ' y'.
****    out->write( lv_lista_nombres ).
****
*****    DATA(lv_ruta_archivo) = 'C:\SAP\Proyectos\Abap\Codigo.txt'.
******    DATA(Lv_nueva_ruta) = lv_ruta_archivo.
******
*******    REPLACE FIRST OCCURRENCE OF PCRE '\\(?=[^\\]+$)'
*******    IN Lv_nueva_ruta
*******    WITH '-'.
*******    out->write( Lv_nueva_ruta ).
*******
*******    DATA(lv_precio_tabla) = '1500€'.
*******    DATA(lv_precio_usuario) = lv_precio_tabla.
********
*********    REPLACE ALL OCCURRENCES OF PCRE '[0-9]\s*$'
*********        IN lv_precio_usuario
*********        WITH ' Euros'.
**********    out->write( lv_precio_usuario ).
**********
***********
***********    DATA(lv_full_path) = '/usr/sap/trans/log/UPDATE_20231025_0001.LOG'.
************
************    DATA(lv_root) = segment( val = lv_full_path index = 2 sep = '/' ).
*************    out->write( | El primer directorio: { lv_root } | ).
*************
*************    DATA(lv_filename) = segment( val = lv_full_path index = -1 sep = '/'  ).
*************    out->write( | El nombre del archivo: { lv_filename } | ).
*************
*************    DATA(lv_extension) = segment( val = lv_filename  index = 2 sep = '.' ).
**************
***************    out->write( |Archivo: { lv_filename }| ).
*    out->write( |Raiz: { lv_root }| ).
*    out->write( |Extension: { lv_extension }| ).

*    DATA(lv_network_path) = 'C:\Users\Desktop\Proyectos\ABAP\2024\Ejercicio\Final\codigo.txt'.
*    DATA(lv_num_segment) = count( val = lv_network_path sub = '\' ) + 1.
*
*    DO lv_num_segment TIMES .
*
*      DATA(lv_segmento) = segment( val = lv_network_path
*                                   index = sy-index
*                                   sep = '\' ).
*      out->write( |Segmento { sy-index }: { lv_segmento }| ).
*
*    ENDDO.
*
*    DATA(lv_raw_data) = 'ERR_2026-02-12_ID:99821_VAL:250.50_SYS:ECC'.
*
*    DATA(lv_id) = match( val = lv_raw_data  pcre = '(?<=ID:)\d+' ).
*    out->write( | El ID del usuario es: { lv_id } | ).
*
*    DATA(lv_val_dec) = match( val = lv_raw_data pcre = '(?<=VAL:)[\d.]+' ).
*    out->write( | El valor decimal es: { lv_val_dec } | ).
*
*
*    DATA(lv_sistema) = match( val = lv_raw_data pcre = '(?<=SYS:)[A-Z]{3}' ).
*    out->write( | El sistema utilizado es: { lv_sistema } | ).
*
*    DATA(lv_factura) = 'AR-99_2026_55432'.
*
*    DATA(lv_year) = match( val = lv_factura pcre = '(?<=_)[\d]{4}' ).
*    DATA(lv_country) = match( val = lv_factura pcre = '^[A-Z]{2}' ).
*    DATA lv_country_name  TYPE  string.
*    DATA lv_periodo    TYPE string.
*
*    CASE lv_country.
*      WHEN 'ES'.
*        lv_country_name = 'Espania'.
*      WHEN 'AR'.
*        lv_country_name = 'Argentina'.
*      WHEN 'MX'.
*        lv_country_name = 'Mexica'.
*      WHEN OTHERS.
*        lv_country_name = 'Desconocido'.
*    ENDCASE.
*
*    IF lv_year = 2026.
*      lv_periodo = 'Periodo Actual'.
*    ELSEIF lv_year < 2026.
*      lv_periodo = 'Cerrado'.
*    ELSE.
*      lv_periodo = 'Auditado'.
*    ENDIF.
*
*    out->write( |Pais: { lv_country_name }| ).
*    out->write( |Periodo: { lv_periodo }| ).
*
*    DATA(lv_input) =  'EX-150-INT'.
*    DATA(lv_codigo) = '^[A-Z]{2}-[\d]{3}-[A-Z]{3}$'.
*    DATA: lv_tipo_envio  TYPE string,
*          lv_tipos_envio TYPE string.
*
*
*    IF matches( val = lv_input pcre = lv_codigo ).
*      lv_codigo = lv_input.
*    ELSE.
*      out->write( 'El codigo no es Correcto' ).
*    ENDIF.
*
*    lv_tipo_envio = match( val = lv_codigo pcre = '^[A-Z]{2}' ).
*
*    CASE lv_tipo_envio.
*      WHEN 'EX'.
*        lv_tipos_envio = 'Express'.
*      WHEN 'ST'.
*        lv_tipos_envio = 'Standard'.
*      WHEN OTHERS.
*        lv_tipos_envio = 'Error de Tipo'.
*    ENDCASE.
*
*out->write( lv_tipos_envio ).

*    TYPES: BEGIN OF ty_vuelo,
*             id_vuelo  TYPE  char10,
*             compania  TYPE char2,
*             ocupacion TYPE i,
*             clase     TYPE char1,
*           END OF ty_vuelo.
*
*    DATA: lt_vuelos TYPE TABLE OF ty_vuelo.
*
*    lt_vuelos = VALUE #(
*                ( id_vuelo = '001' compania = 'AA' ocupacion = 95 clase = 'E' )
*                ( id_vuelo = '002' compania = 'LH' ocupacion = 50 clase = 'B' )
*                ( id_vuelo = '003' compania = 'IB' ocupacion = 10 clase = 'F' )
*                ( id_vuelo = '004' compania = 'AA' ocupacion = 0 clase = 'E' )
*                     ).
*    LOOP AT Lt_vuelos INTO DATA(ls_vuelo).
*
*      DATA(lv_nombre_cia) = SWITCH    string( ls_vuelo-compania
*                                  WHEN 'AA' THEN 'AMERICAN AIRLINES'
*                                  WHEN 'LH' THEN 'LUFTHANSA'
*                                  WHEN 'IB' THEN 'IBERIA'
*                                  ELSE    'DESCONOCIDA' ).
*      DATA(lv_estado) = COND string(
*                             WHEN    ls_vuelo-ocupacion > 90 THEN 'CRITICO'
*                             WHEN    ls_vuelo-ocupacion = 0    THEN    'VACIO'
*                             WHEN    ls_vuelo-ocupacion <= 90    THEN    'NORMAL'
*                             ELSE    'ERROR'
*                                            ).
*      out->write( |id-vuelo: { ls_vuelo-id_vuelo } | &&
*                  |Aerolinea: { lv_nombre_cia } | &&
*                  | Estado del vuelo: { lv_estado } | ).

    TYPES: BEGIN OF ty_envio,
             id_paquete  TYPE i,
             codigo_pais TYPE char3, " ESP, MEX, ARG, USA
             peso        TYPE p LENGTH 3 DECIMALS 2, " En kg
             tipo_envio  TYPE i, " 1: Estandar, 2: Express, 3: VIP
           END OF ty_envio.

    DATA: lt_logistica  TYPE TABLE OF ty_envio.

    lt_logistica = VALUE #(
            ( id_paquete = 101 codigo_pais = 'ESP' peso = '2.50'  tipo_envio = 2 )
            ( id_paquete = 102 codigo_pais = 'MEX' peso = '15.00' tipo_envio = 1 )
            ( id_paquete = 103 codigo_pais = 'USA' peso = '0.50'  tipo_envio = 3 )
            ( id_paquete = 104 codigo_pais = 'ARG' peso = '30.00' tipo_envio = 1 )
            ( id_paquete = 105 codigo_pais = 'FRA' peso = '5.00'  tipo_envio = 2 )
                            ).

    LOOP AT Lt_logistica     INTO DATA(ls_envios).

      DATA(lv_pais_nombre) = SWITCH string( ls_envios-codigo_pais
                                WHEN 'ESP' THEN 'ESPANA'
                                WHEN 'MEX' THEN 'MEXICO'
                                WHEN 'USA' THEN 'UNITED STATES'
                                WHEN 'ARG' THEN 'ARGENTINA'
                                WHEN 'FRA' THEN 'FRANCIA'
                                ELSE 'ERROR'
       ).

      DATA(lv_costo) = COND #(
                            WHEN ls_envios-peso <= '2.00' THEN  10
                            WHEN ls_envios-peso > '2.00' AND ls_envios-peso <= '20' THEN  50
                            WHEN ls_envios-peso > '20.00' THEN  100
                            ELSE '0'
       ).

      DATA(lv_prioridad) = SWITCH string( ls_envios-tipo_envio
                                      WHEN 1 THEN 'BAJA'
                                      WHEN 2 THEN 'MEDIA'
                                      WHEN 3 THEN 'ALTA'
                                      ELSE 'ERROR'

             ).
    ENDLOOP.


    TYPES: BEGIN OF ty_reporte,
             id        TYPE i,
             pais_txt  TYPE string,
             costo     TYPE i,
             prioridad TYPE string,
           END OF ty_reporte.

    DATA: lt_reporte TYPE TABLE OF  ty_reporte.

    lt_reporte = VALUE #(
                    FOR ls_temporal IN Lt_logistica WHERE ( peso > 5 ) (
                    id = ls_temporal-id_paquete

                    pais_txt =  SWITCH #( ls_temporal-codigo_pais
                        WHEN 'ESP' THEN 'ESPANA'
                        WHEN 'MEX' THEN 'MEXICO'
                        WHEN 'USA' THEN 'UNITED STATES'
                        WHEN 'ARG' THEN 'ARGENTINA'
                        WHEN 'FRA' THEN 'FRANCIA'
                        ELSE 'ERROR' )

                    costo = COND #(
                            WHEN ls_temporal-peso <= '2.00' THEN  10
                            WHEN ls_temporal-peso > '2.00' AND ls_temporal-peso <= '20' THEN  50
                            WHEN ls_temporal-peso > '20.00' THEN  100
                            ELSE '0' )

                    prioridad = SWITCH  string( ls_temporal-tipo_envio
                            WHEN 1 THEN 'BAJA'
                            WHEN 2 THEN 'MEDIA'
                            WHEN 3 THEN 'ALTA'
                            ELSE 'ERROR'    )

    )
                         ).
    out->write( lt_reporte ).


  ENDMETHOD.

ENDCLASS.
