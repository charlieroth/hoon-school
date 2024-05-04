|=  n=@ud
=/  counter  1
=/  sum  0
|-
~&  "counter: {<counter>}"
~&  "sum: {<sum>}"
?:  (gth counter n)
  sum
%=  $
  counter  (add counter 1)
  sum      (add sum counter)
==
