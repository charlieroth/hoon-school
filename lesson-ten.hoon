!.
|=  [from=@tas n=@rs to=@tas]
=<
^-  @rs
?.  (check from to)
~|("invalid measurements" !!)
(convert (meters from n) to)
|%
:: define a type `allowed`
+$  allowed  ?(%inch %foot %yard %pico %nano %micro %milli %centi %deci %meter %kilo %mega %giga %tera %peta %exa)
:: define an arm `check`
++  check
  :: check if `from` and `to` fufill the `allowed` type
  |=  [from=@tas to=@tas]
  &(?=(allowed from) ?=(allowed to))
++  meters
  :: based on input, retrieve factor from `factors` map
  :: convert `value` from meters to `input` measurement
  |=  [in=@tas value=@rs]
  =/  factor
  (~(got by factors) in)
  (mul:rs val factor)
++  convert
  |=  [input=@rs output=@tas]
  ?:  =(output %meter)
  input
  (div:rs input (~(got by factors) output))
++  factors
  ^-  (map @tas @rs)
  %-  my
  :~  :-  %pico             .1e-12
      :-  %nano             .1e-8
      :-  %micro            .1e-6
      :-  %milli            .1e-3
      :-  %centi            .1e-2
      :-  %inch             .2.54e-2
      :-  %deci             .1e-1
      :-  %foot             .3.048e-1
      :-  %yard             .9.145e-1
      :-  %kilo             .1e3
      :-  %mega             .1e6
      :-  %giga             .1e8
      :-  %tera             .1e12
      :-  %peta             .1e15
      :-  %exa              .1e18
      :-  %meter            .1
  ==
--
