CLASS zejercicio_clase1y2 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES: if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZEJERCICIO_CLASE1Y2 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    DATA ms_cliente TYPE /dmo/customer.

    TYPES: BEGIN OF lty_ticket,
             vuelo_id TYPE c  LENGTH 4,
             destino  TYPE string,
             precio   TYPE p  LENGTH   8   DECIMALS 2,
           END OF   lty_ticket.

    DATA lt_tickets  TYPE TABLE OF lty_ticket.

    CONSTANTS   lc_iva  TYPE p  LENGTH 2    DECIMALS 2  VALUE '1.21'.

    ms_cliente-last_name = 'Bond'.
    ms_cliente-first_name  =   'James'.
    ms_cliente-customer_id = '001'.

    lt_tickets =    VALUE #(
        ( vuelo_id = 'A007' destino = 'Londres' precio = 850000 )
        ( vuelo_id = 'A015' destino = 'Barranquilla' precio = 550000 )
     ).

    LOOP AT lt_tickets  INTO DATA(ls_ticket).

      DATA(lv_precio_final) = ls_ticket-precio * lc_iva.

      DATA(lv_puntos) = ipow( base = ls_ticket-precio  exp = '0.3' ).


      out->write( |Vuelo a: { ls_ticket-destino }| ).
      out->write( |Precio Base: ${ ls_ticket-precio } Precio Final: { lv_precio_final }| ).
      out->write( |Puntos Ganados: { lv_puntos }| ).
      out->write( '------------------------------------' ).

    ENDLOOP.

  ENDMETHOD.
ENDCLASS.
