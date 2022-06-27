|=  [a=@ud b=@ud n=@ud]
:: create a face o with bunt value of (list [@ud @ud])
=|  o=(list [@ud @ud])
:: create a trap
|-
:: cast output to type (list [@ud @ud])
^-  (list [@ud @ud])
:: if n equals 0
?:  =(n 0)
:: reserve list o
(flop o)
:: otherwise, resolve $ with transformations
%=  $
a  (add a 1)
b  (add a b)
o  :-([a b] o)
n  (sub n 1)
==
