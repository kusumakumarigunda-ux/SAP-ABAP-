REPORT z_addition.
DATA: lv_a TYPE i VALUE 10,
      lv_b TYPE i VALUE 20,
      lv_sum TYPE i.
lv_sum = lv_a + lv_b.
WRITE: 'Sum =', lv_sum.
