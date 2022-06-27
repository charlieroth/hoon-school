|=  n=@ud
:: create face o with the bunt value of type tape
=|  o=tape
:: create trap
|-
:: cast output to type tape
^-  tape
:: if n is greater then 0 recurse
?:  (gth n 0)
:: resolve $ with transformations
%=  $
o  (weld "measure " o)
n  (dec n)
==
:: otherwise concat "cut" to o
(weld o "cut")
