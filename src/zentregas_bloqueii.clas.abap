CLASS zentregas_bloqueii DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZENTREGAS_BLOQUEII IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    DATA: lv_base_rate            TYPE i  VALUE 20,
          lv_corp_area_rate       TYPE i VALUE 10,
          lv_medical_service_rate TYPE i VALUE 15,
          lv_total_rate           TYPE i.

    lv_total_rate = lv_base_rate + lv_corp_area_rate + lv_medical_service_rate.
    ADD 5 TO lv_total_rate.

    out->write( | 'El total Rate es:' { lv_total_rate } | ).

    DATA: lv_maintenance_rate TYPE i VALUE 30,
          lv_margin_rate      TYPE i  VALUE 10,
          lv_base_rat         TYPE i.

    lv_base_rat = lv_maintenance_rate - lv_margin_rate.

    SUBTRACT 4 FROM lv_base_rat.

    out->write( | 'El Rate base es:' { lv_base_rat } | ).

    DATA: lv_package_weight TYPE i VALUE 2,
          lv_cost_per_kg    TYPE i  VALUE 3,
          lv_multi_rate     TYPE i.

    lv_multi_rate = lv_package_weight * lv_cost_per_kg.

    MULTIPLY lv_multi_rate BY 2.

    out->write( | 'El Rate Multiplicacion:' { lv_multi_rate } | ).

    "TEXT SYMBOLS""""""""""""""""""""""""
    "Todos los textos que los usuarios van a ver tienen que ser usados de esta forma con el text pool

    out->write( TEXT-msg ).
    out->write( TEXT-001 ).
    out->write( 'This is the second Text you create'(002) ).
    out->write( 'This is the second Text you create'(002) ).
    out->write( 'Este es el tercer texto de prueba'(003) ).

    "FUNCIONES DE CARACTERES""""""""""""""""""""""""

    DATA(lv_num) = strlen( '   LOGALI    ' ). "STRLEN() CUENTA LOS CARACTERES DE LA CADENA **IGNORANDO LOS ESPACIOS A LA DERECHA
    DATA(lv_nume) = numofchar( '   LOGALI    ' ). "NUMOFCHAR() CUENTA LOS CARACTERES DE LA CADENA

    out->write( lv_num ).
    out->write( lv_nume ).




    DATA LV_string  TYPE string  VALUE ' LOGALI Local '.

    ""COUNT

    lv_num = count( val = LV_string sub = 'LO' ). "cuenta en los value de la variable el sub y
    "devuelve la cantidad de veces que lo encuentra
    "discrimina si es en mayusculas o minusculas


    ""COUNT_ANY_OF

    lv_num = count_any_of( val = LV_string sub = 'LO' ). "cuenta letra por letra las veces que se repite
    "discrimina si es en mayusculas o minusculas
    out->write( |'Count any of :' { lv_num } | ).


    ""COUNT_ANY_NOT_OF

    lv_num = count_any_not_of( val = LV_string sub = 'LO' ). "cuenta letra por letra que no coinciden con las dadas
    "discrimina si es en mayusculas o minusculas


    ""FIND

    lv_num = find( val = lv_string sub = 'LI' ). "cuenta la posicion en la que se encuentra la busqueda empieza en 0
    out->write( lv_num ).

    lv_num = find_any_of( val = lv_string sub = 'LI' ). "cuenta la primera coincidencia
    out->write( lv_num ).

    lv_num = find_any_not_of( val = lv_string sub = 'LI' ). "cuenta la primera posicicion donde no esta lo buscado
    out->write( lv_num ).


    ""CONTAINS

    DATA: lv_text    TYPE string,
          lv_pattern TYPE string.

    lv_text = 'The employee`s number is: 856-716-1377'.
    lv_pattern = '\d{3}-\d{3}-\d{4}'. "Phone number

    IF contains( val = lv_text pcre = lv_pattern ).  "CONTAINS si existe o no la variable text contiene ese patron devuelve un true false
      out->write( 'The text contains a phone number' ).
    ELSE.
      out->write( 'The text doesn`t contain a phone number' ).
    ENDIF.

    "match
    DATA(lv_number) = match( val = lv_text  pcre =  lv_pattern occ = 1 ).
    "le asigno a la variable local number la coincidencia entre el valor de text y patron y le digo con occ que lo repita una vez
    out->write( lv_number ).





  ENDMETHOD.
ENDCLASS.
