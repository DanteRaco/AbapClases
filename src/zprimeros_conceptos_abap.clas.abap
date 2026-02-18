CLASS zprimeros_conceptos_abap DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES: if_oo_adt_classrun.


    "CTRL + Espacio sugerencias y explica la funcion
    "SHIFT + F1 - Formatea el codigo para que se oranicen los espacios
    "Si el logo de la ventana superior izquierda tiene un candado CTRL + f3
    "F9 ejecuta en la consola


  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZPRIMEROS_CONCEPTOS_ABAP IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    DATA: lv_string TYPE string,  " Variable de tipo string (cadena de caracteres)
          lv_int    TYPE i VALUE 20250415,
          lv_date   TYPE d VALUE '20250415',
          lv_dec    TYPE p LENGTH 8 DECIMALS 2 VALUE '202504.15',
          lv_car    TYPE c LENGTH 10 VALUE 'Logali'. "(Tipo C): Texto de longitud fija. Si el valor asignado es más corto (como 'Logali', que tiene 6 letras), SAP rellena los 4 espacios restantes con espacios en blanco a la derecha.

    lv_string = '20250415'.

    out->write( lv_string ).
    out->write( lv_int ).
    out->write( lv_date ).
    out->write( lv_dec ).
    out->write( lv_car ).

    lv_date = lv_date + 30.
    out->write( lv_date ).
    out->write( |Texto simple: { lv_date }| ).
    out->write( |Formato ISO:  { lv_date DATE = ISO }| ).
    out->write( |Formato User: { lv_date DATE = USER }| ).

  ENDMETHOD.
ENDCLASS.
