::  Produces the fibonacci sequence of a given integer
::  f(n) = f(n-1) + f(n-2)
|=  n=@ud
^-  (list @ud)
::  flip the final list
%-  flop
::  index for tracking where in the fib seq the program is
=/  index  0
::  previous fib number
=/  prev  0
::  current fib number
=/  curr  1
::  list of fib numbers
=/  fibs  *(list @ud)
|-  ^-  (list @ud)
::  if the end of the fib seq is reached
?:  =(index n)
  ::  return list of fib numbers
  fibs
::  debug current recursive step
~&  >  [index prev curr fibs]
::  arm update
%=  $
  ::  update index to increment of index
  index  +(index)
  ::  update prev, to curr
  prev   curr
  ::  update curr, to sum of prev and curr
  curr   (add prev curr)
  ::  update fib list, create a cell of curr and fib list 
  ::  this is building the list backwards which is less
  ::  expensive. The list is "flopped" at the end (see above)
  fibs   [curr fibs]
==
