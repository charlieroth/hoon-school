|=  [a=@ud b=@ud c=@tas]
|^
^-  @ud
:: switch against union, with default
?+  c  42
  %add  (adder a b)
  %sub  (suber a b)
  %mul  (multer a b)
  %div  (diver a b)
==
++  adder
  |=  [a=@ud b=@ud]
  ^-  @ud
  (add a b)
++  suber
  |=  [a=@ud b=@ud]
  ^-  @ud
  (sub a b)
++  multer
  |=  [a=@ud b=@ud]
  ^-  @ud
  (mul a b)
++  diver
  |=  [a=@ud b=@ud]
  ^-  @ud
  (div a b)
--
