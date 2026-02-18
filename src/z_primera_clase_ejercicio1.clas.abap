CLASS z_primera_clase_ejercicio1 DEFINITION

  PUBLIC

  FINAL

  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS Z_PRIMERA_CLASE_EJERCICIO1 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    DATA: BEGIN OF ls_empleado, "LS SIGNIFICA LOCAL STRUCTURE (FICHA)
            id        TYPE c  LENGTH 8,
            nombre    TYPE string,
            fecha_ing TYPE d,
            salario   TYPE p LENGTH 8 DECIMALS 2,
            activo    TYPE c LENGTH  1,

          END OF ls_empleado.

    DATA lt_empleados LIKE TABLE OF ls_empleado. "Indica que no es una variable simple (como un solo número), sino una "ficha" que contiene varios campos (ID, Nombre, Salario, etc.).
    "CON FILAS Y COLUMNAS / UN ARCHIVADOR
    ls_empleado = VALUE #( id = 'EMP001' nombre = 'David Ramirez' fecha_ing = '20240415' salario = '4500.50' activo = 'x' ) .
    APPEND ls_empleado TO  lt_empleados.

    ls_empleado-id = 'EMP002'.
    ls_empleado-nombre = 'Emilia Ramirez'.
    ls_empleado-fecha_ing = '20240521'.
    ls_empleado-salario = '8500.25'.
    ls_empleado-activo = ' '.

    APPEND ls_empleado TO  lt_empleados.



    out->write( '---  Listado de Empleados ---' ).
    out->write( lt_empleados ).


    TYPES: BEGIN OF lty_cuenta,
             iban    TYPE    c   LENGTH  24,
             titular TYPE    string,
             saldo   TYPE    p   LENGTH  9   DECIMALS    2,

           END OF lty_cuenta.

    DATA lt_cuentas TYPE TABLE OF lty_cuenta.
    DATA ls_cuenta TYPE lty_cuenta.

    lt_cuentas = VALUE #(
        ( iban = 'ESOOOO0001' titular = 'David Ramirez'  saldo = '545000.35' )
        ( iban = 'ESOOOO0485' titular = 'Emilia Ramirez' saldo = '2554500.35' )
        ).

    ls_cuenta = VALUE #(  iban = 'ESOOOO0210' titular = 'Patricia Correa' saldo = '500.50' ).
    APPEND ls_cuenta TO lt_cuentas.

    out->write( '--- Listado de Cuentas Bancarias---' ).
    out->write( lt_cuentas ).
  ENDMETHOD.
ENDCLASS.
