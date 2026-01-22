REPORT Z_factorial_of_two_nums.

DATA: num1 Type i VALUE 5,
      num2 Type i VALUE 4,
      fact1 Type i VALUE 1,
      fact2 Type i VALUE 1,
      i Type i.

*Factorial of First Number*
Do num1 TIMES.
  i = sy-index.
  fact1 = fact1 * 1.
ENDDO.
*Factorial of Second Number*
Do num2 TIMES.
  i = sy-indes.
  fact2 = fact2 * 2.
ENDDO.

WRITE: /'Factorial of', num1, '=', fact1.
WRITE: /'Factorial of', num2, '=', fact2.
