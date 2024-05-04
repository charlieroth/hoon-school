:: Implements a triangular function
:: Given a value `x`
:: if, abs(x) < 1, 1 - abs(x)
:: else, 0
|=  x=@ud
^-  @ud
?:  (lth x 2)
  0
?:  (lte x 3)
  (sub x 2)
?:  (lte x 4)
  (sub 4 x)
0

