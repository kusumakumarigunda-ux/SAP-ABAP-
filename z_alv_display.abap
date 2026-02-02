REPORT Zalv_display.

TYPES: BEGIN OF ty_employee,
       emp_id TYPE i,
       emp_name TYPE string,
       salary TYPE p DECIMAL 2,
END OF ty_employee.

DATA: it_employee TYPE STANDARD TABLE OF ty_employee,
      wa_employee TYPE ty_employee,
      it_employee TYPE slis_t_fieldcat_alv,
      wa_employee TYPE slis_fieldcat_alv.

START OF SELECTION
      wa_employee-emp_id = 101.
      wa_employee-emp_name = 'Alice'.
      wa_employee-salary = 5000.
      APPEND wa_employee TO it_employee.

      wa_employee-emp_id = 102.
      wa_employee-emp_name = 'Bob'.
      wa_employee-salary = 6200.
      APPEND wa_employee TO it_employee.

      wa_employee-emp_id = 103.
      wa_employee-emp_name = 'Charlie'.
      wa_employee-salary = 7100.
      APPEND wa_employee TO it_employee.

      wa_fieldcat-fieldname = 'EMP_ID'.
      wa_fieldcat-seltext_m = 'Employee ID'.
      APPEND wa_fieldcat TO it_fieldcat.

      wa_fieldcat-fieldname = 'EMP_NAME'.
      wa_fieldcat-seltext_m = 'NAME'.
      APPEND wa_fieldcat TO it_fieldcat.

      wa_fieldcat-fieldname = 'SALARY'.
      wa_fieldcat-seltext_m = 'SALARY'.
      APPEND wa_fieldcat TO it_fieldcat.

CALL FUNCTION 'REUSE_ALV_GRID_DISPLAY'.
EXPORTING
i_callback_program = sy-repid
it_firldcat = it_fieldcat TABLES
t_outtab = it_employee.
