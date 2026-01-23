CLASS zcl_math DEFINITION.
  PUBLIC SECTION.
    METHODS add IMPORTING a TYPE i b TYPE i
                RETURNING VALUE(result) TYPE i.
ENDCLASS.

CLASS zcl_math IMPLEMENTATION.
  METHOD add.
    result = a + b.
  ENDMETHOD.
ENDCLASS.

DATA obj TYPE REF TO zcl_math.
DATA lv_sum TYPE i.

CREATE OBJECT obj.
lv_sum = obj->add( a = 3 b = 7 ).
WRITE lv_sum.
