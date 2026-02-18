CLASS zsegunda_clase DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZSEGUNDA_CLASE IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

"""""" TIPOS DE OBJETOS DE DATOS """"""""
"Variables - Puede cambiar tantas veces como necesitemos  - DATA
"Constantes - no se puede modificar el dato original      - CONSTANTS
"Declaraciones en linea - crear una variable donde queremos utilizarla -

DATA: lv_num_a  TYPE    i vALUE 20,
      lv_num_b  TYPE    i value 19,
      lv_num_total  TYPE    f.

      lv_num_total = lv_num_a / lv_num_b.

out->write( |Numero a: { lv_num_a } + Numero b: { lv_num_b } = Total: { lv_num_total }| ).

  ENDMETHOD.
ENDCLASS.
