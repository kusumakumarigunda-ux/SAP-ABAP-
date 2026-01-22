REPORT z_grade_calculation.
DATA: lv_marks TYPE i VALUE 100.
If lv_marks >= 90.
WRITE: 'GRADE A'.
Elseif lv_marks >= 75.
WRITE: 'GRADE B'.
Else.
WRITE: 'GRADE C'.
ENDIF.
