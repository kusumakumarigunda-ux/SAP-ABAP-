REPORT z_datatypes.
DATA: lv_num TYPE i VALUE 10.
      lv_price TYPE p DECIMALS 2 VALUE 99.50.
      lv_name TYPE string VALUE 'ABAP'.
      lv_char TYPE c LENGTH 5 VALUE 'SAP'.
WRITE: lv_num,
       lv_price,
       lv_name,
       lv_char.
