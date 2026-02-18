CLASS zcl_lab_01_var_davidr DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_LAB_01_VAR_DAVIDR IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    DATA mv_purchase_date   TYPE d.
    DATA mv_purchase_time   TYPE t.
    DATA mv_price   TYPE f  VALUE '10.5'.
    DATA mv_tax TYPE i  VALUE '16'.
    DATA mv_increase    TYPE decfloat16 VALUE '20.5'.
    DATA mv_discounts    TYPE decfloat34    VALUE '10.5'.
    DATA mv_type    TYPE c LENGTH   10   VALUE 'PC'.
    DATA mv_shipping    TYPE p LENGTH   8   DECIMALS 2   VALUE '40.36'.
    DATA mv_id_code    TYPE n LENGTH   4   VALUE '1110'.
    DATA mv_qr_code    TYPE x  LENGTH   5    VALUE 'F5CF'.


    mv_purchase_date = cl_abap_context_info=>get_system_date(  ).
    mv_purchase_time = cl_abap_context_info=>get_system_time(  ).

    out->write( mv_purchase_date ).
    out->write( mv_purchase_time ).
    out->write( mv_price ).
    out->write( mv_tax ).
    out->write( mv_increase ).
    out->write( mv_discounts ).
    out->write( mv_type ).
    out->write( mv_shipping ).
    out->write( mv_id_code ).
    out->write( mv_qr_code ).

    TYPES: BEGIN OF mty_costumer,
             id       TYPE i,
             costumer TYPE c  LENGTH  15,
             age      TYPE i,
           END OF mty_costumer.

    DATA ms_costumer TYPE mty_costumer.
    ms_costumer = VALUE #(
        id  =   '001'
        costumer = 'David Ramirez'
        age = '33' ).
    out->write( ms_costumer ).

    DATA ms_employees   TYPE /dmo/employee_hr.
    ms_employees = VALUE #(
    client  =   'Dav'
    employee  = 1
    first_name  =   'David'
    last_name  =    'Ramirez'
    salary  =   1500
    salary_currency  = 'dolar'
    manager =   2 ).
    out->write( ms_employees ).

    DATA mv_product tyPE string value 'Laptop'.
    DATA mv_bar_code tyPE string    value '12121121211'.

     out->write( mv_product ).
     out->write( mv_bar_code ).


  ENDMETHOD.
ENDCLASS.
