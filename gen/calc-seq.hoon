:: Calculate a sequence of numbers
:: Produce a gate which accepts a @ud value and calculates
:: the series where the i^th term in the series is given
:: by the equation `n_i = i^2`
|=  i=@ud
^-  @ud
=/  n  0
|-
?:  =(n i)
  (mul i i)
%=  $
  n  (add n 1)
==
