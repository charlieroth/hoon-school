:: disable stack tracing for the following expression
!.
:: produce a gate with 3 inputs
|=  [from=@tas n=@rs to=@tas]
:: invert the evaluation of the following two hoon expressions
:: - this allows you to write the computation first and then feed
::   the subject into the computation
=<
:: cast output to @rs
^-  @rs
:: if `from` and `to` inputs are invalid
?.  (check from to)
  :: crash with error message
  ~|("invalid measurements" !!)
:: else, run conversion computation
(convert (meters from n) to)
|%
:: define a custom type `allowed` which is a union of @tas values
+$  allowed  ?(%inch %foot %yard %pico %nano %micro %milli %centi %deci %meter %kilo %mega %giga %tera %peta %exa)
:: define an arm `check`
++  check
  :: check if `from` and `to` nest under the `allowed` type
  |=  [from=@tas to=@tas]
  &(?=(allowed from) ?=(allowed to))
++  meters
  :: based on input, retrieve factor from `factors` map
  :: convert `value` from meters to `input` measurement
  |=  [in=@tas value=@rs]
  =/  factor
    (~(got by factors) in)
  (mul:rs value factor)
++  convert
  |=  [input=@rs output=@tas]
  :: if desired output is %meter
  ?:  =(output %meter)
    :: return input
    input
  :: divide input by corresponding value from `factors` map
  (div:rs input (~(got by factors) output))
++  factors
  :: cast output to be a map with keys @tas and values @rs
  ^-  (map @tas @rs)
  :: call `my` core
  %-  my
  :: produce a cell of ordered pairs [@tas @rs]
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
