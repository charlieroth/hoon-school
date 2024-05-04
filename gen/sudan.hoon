::  Sundan Function
::  f_0(x,y) = x+y
::  f_(n+1)(x,0) = x, n >= 0
::  f_(n+1)(x,y+1) = f_n(f_(n+1)(x,y), f_(n+1)(x,y) + y + 1), n >= 0
::  sudan(n-1, sudan(n,x,y-1), y + sudan(n,x,y-1))
|=  [n=@ x=@ y=@]
^-  @
|-
?:  =(n 0)
  (add x y)
?:  =(y 0)
  x
%=  $
  n  (dec n)
  x  $(n n, x x, y (dec y))
  y  (add y $(n n, x x, y (dec y)))
==
