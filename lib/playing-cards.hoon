|%
+$  suit  ?(%hearts %spades %clubs %diamonds)
+$  card  [sut=suit val=@ud]
+$  deck  (list card)
++  make-deck
  ^-  deck
  =/  my-deck  *deck
  =/  i  1
  |-
  ?:  (gth i 4)
    my-deck
  =/  j  2
  |-
  ?.  (lte j 13)
    ^$(i +(i))
  %=  $
    j  +(j)
    my-deck  [[(num-to-suit i) j] my-deck]
  ==
++  num-to-suit
  |=  val=@ud
  ^-  suit
  ?+  val  !!
    %1  %hearts
    %2  %spades
    %3  %clubs
    %4  %diamonds
  ==
++  shuffle-deck
  |=  [unshuffled=deck entropy=@]
  ^-  deck
  =/  shuffled  *deck
  =/  random  ~(. og entropy)
  =/  remaining  (lent unshuffled)
  |-
  ::  if one card remains
  ?:  =(remaining 1)
    ::  construct a cell whose second element is the shuffled
    ::  deck and whose first element is the first element of the
    ::  unshuffled deck
    :_  shuffled  (snag 0 unshuffled)
  ::  =^(p q r s)
  ::  `p`, a new face to pin to the subject
  ::  `q`, a name of an existing wing of the subject
  ::  `r`, an expression that produces [p-value new-q-value]
  ::  `s`, hoon to be evaluated against the modified subject
  =^  index  random  (rads:random remaining)
  %=  $
    shuffled  [(snag index unshuffled) shuffled]
    remaining  (dec remaining)
    unshuffled  (oust [index 1] unshuffled)
  ==
++  draw
  |=  [n=@ud d=deck]
  ^-  [hand=deck rest=deck]
  :-  (scag n d)
  (slag n d)
--
