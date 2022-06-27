|=  [a=@ud b=@ud]
|^
^-  [@ud @ud]
:-  (adder a b)  (multer a b)
++  adder
  |=  [a=@ud b=@ud]
  ^-  @ud
  (add a b)
++  multer
  |=  [a=@ud b=@ud]
  ^-  @ud
  (mul a b)
--
