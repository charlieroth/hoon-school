:: Calculate a factorial
:: The factorial of a number `n` is `n * (n-1) * ... * 2 * 1`
|=  n=@ud
|-
~&  n
?:  =(n 1)
  1
%+  mul
n
%=  $
  n  (dec n)
==
