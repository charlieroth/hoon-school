:: Output each letter in a tape
|=  [input=tape]
^-  (list @ud)
=/  index  0
=/  result  *(list @ud)
|-
?:  =(index (lent input))
  result
=/  ascii  `@ud`(snag index input)
%=  $
  index   (add index 1)
  result  (snoc result ascii)
==
