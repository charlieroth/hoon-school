::  list.hoon
::  Accepts a single `@ud` number `n` as input and produces a list
::  of numbers from `1` up to (but not including) `n`
|=  n=@ud
^-  (list @ud)
=/  count=@  1
|-
^-  (list @ud)
?:  =(n count)
  ~
:-  count  $(count +(count))
