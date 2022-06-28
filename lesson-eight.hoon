:: A generator that removes every nth character of a tape
:: gate that takes a tape t, @ud n
|=  [t=tape n=@ud]
:: create face removals, type @ud
=|  removals=@ud
:: create face remover, type @ud, value of n
=/  remover=@ud  n
:: cast output to type tape
^-  tape
:: create a trap
|-
:: if remover - removals > length of t
?:  (gth (sub remover removals) (lent t))
:: return t
t
:: recurse with transformations
%=  $
:: update remover => n + remover
remover  (add n remover)
:: update removals => removals + 1
removals  +(removals)
:: update t => 
t  (oust [(dec (sub remover removals)) 1] t)
==
:: ===============================================
:: walk-through, +gate ["charlie", 2]
:: ===============================================
:: t => "charlie"
:: n => 2
:: >>>>>>>>>>>>>>>>>> pass 0 <<<<<<<<<<<<<<<<<<<<<
:: removals          => 0
:: remover           => 2
:: (gth (2 - 0) (7)) => %.n
:: ------------- transformation ------------------
:: remover           => (add 2 2)      => 4
:: removals          => +(0)           => 1
:: t                 => (oust [1 1] t) => "carlie"
:: >>>>>>>>>>>>>>>>>> pass 1 <<<<<<<<<<<<<<<<<<<<<
:: remover           => 4
:: removals          => 1
:: (gth (4 - 1) (6)) => %.n
:: ------------- transformation ------------------
:: remover           => (add 4 2)      => 6
:: removals          => +(1)           => 2
:: t                 => (oust [2 1] t) => "calie"
:: >>>>>>>>>>>>>>>>>> pass 2 <<<<<<<<<<<<<<<<<<<<<
:: remover           => 6
:: removals          => 2
:: (gth (6 - 2) (5)) => %.n
:: ------------- transformation ------------------
:: remover           => (add 6 2)      => 8
:: removals          => +(2)           => 3
:: t                 => (oust [3 1] t) => "cale"
:: >>>>>>>>>>>>>>>>>> pass 3 <<<<<<<<<<<<<<<<<<<<<
:: remover           => 8
:: removals          => 3
:: (gth (8 - 3) (4)) => %.y
:: > t
