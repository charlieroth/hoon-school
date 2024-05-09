|%
++  split-by-space
  |=  ex=tape
  ^-  (list tape)
  =/  index  0
  =/  result  *(list tape)
  |-
  ^-  (list tape)
  ?:  =(index (lent ex))
    (weld result ~[`tape`(scag index ex)])
  ?:  =((snag index ex) ' ')
    %=  $
      index   0
      ex      `tape`(slag +(index) ex)
      result  (weld result ~[`tape`(scag index ex)])
    ==
  %=  $
    index  +(index)
  ==
--
