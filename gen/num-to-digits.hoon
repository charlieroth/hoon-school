|=  [n=@ud]
=/  values  *(list @ud)
|-  ^-  (list @ud)
?:  (lte n 0)  values
%=  $
  n       (div n 10)
  ::  concatenate `n % 10` with values
  ::  `++weld` requires two lists as args, so make `n % 10` a list
  values  (weld ~[(mod n 10)] values)
==
