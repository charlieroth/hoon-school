::  Produces the fibonacci value of a given integer
::  f(n) = f(n-1) + f(n-2)
|=  n=@ud
^-  @ud
?:  =(n 1)  1
?:  =(n 2)  1
(add $(n (dec n)) $(n (dec (dec n))))
::  (f 5)
::  (add (f 4) (f 3))
::  (add (add (f 3)) (f 2)) (add (f 2) (f 1)))
::  (add (add (add (f 2) (f 1)) (f 2)) (add (f 2) (f 1)))
::  (add (add (add 1 1) 1) (add 1 1))
::  5
