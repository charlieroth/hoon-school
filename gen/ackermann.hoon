::  Ackermann Function
::  The ackermann function is one of the earliest examples of a
::  function that is both totally computable and not primitively
::  recursive
::
::  A(0,n)     = n+1
::  A(m+1,0)   = A(m,1)
::  A(m+1,n+1) = A(m,A(m+1,n))
|=  [m=@ n=@]
^-  @
::  if m is 0
?:  =(m 0)
  ::  return the increment of n
  +(n)
::  if n is 0
?:  =(n 0)
  ::  decrement m, set n to 1 and recurse
  $(m (dec m), n 1)
::  decrement m, set n to the value of Ackermann function with n
::  and the decrement of n as args
$(m (dec m), n $(n (dec n)))
