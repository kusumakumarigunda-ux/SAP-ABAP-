REPORT  z_case_statment.
DATA lv_day TYPE i VALUE 3.

CASE lv_day.
  WHEN 1.
    WRITE 'Monday'.
  WHEN 2.
    WRITE 'Tuesday'.
  WHEN 3.
    WRITE 'Wednesday'.
  WHEN OTHERS.
    WRITE 'Invalid Day'.
ENDCASE.
