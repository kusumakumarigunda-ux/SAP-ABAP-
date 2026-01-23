REPORT z_operators.
DATA: lv_a TYPE i VALUE 20,
      LV_b TYPE i VALUE 6,
      lv_result TYPE i.
lv_result = lv_a + lv_b.
WRITE: /'ADDITION', lv_result.

lv_result = lv_a - lv_b.
WRITE: /'SUBTRACTION', lv_result.

lv_result = lv_a MOD lv_b.
WRITE: /'MODULUS', lv_result.

lv_result = lv_a * lv_b.
WRITE: /'MULTIPLY', lv_result.
