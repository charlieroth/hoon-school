|=  ex=tape
=/  index  0
=/  result  *(list tape)
|-
^-  (list tape)
::  if `index` == length of `ex`
?:  =(index (lent ex))
  ::  glue `result` and first `index` elements of `ex`
  (weld result ~[`tape`(scag index ex)])
::  if character at position `index` of `ex` is a space
?:  =((snag index ex) ' ')
::
::  reset index
::  set `ex` to the elements of `ex` starting from `index+1`
::  glue `result` and first `index` elements of `ex`
$(index 0, ex `tape`(slag +(index) ex), result (weld result ~[`tape`(scag index ex)]))
::  increment `index`
$(index +(index))
