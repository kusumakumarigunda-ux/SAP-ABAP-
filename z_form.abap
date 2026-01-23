REPORT z_form_example.
DATA lv_result TYPE i.
PERFORM add_number USING 5 10 CHANGING lv_result.
WRITE: lv_result.

FORM add_number USING a b CHANGING result.
WRITE: a + b.
ENDFORM.
