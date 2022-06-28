:: produce gate with input, `n=@ud`
|=  n=@ud
:: produce core with single arm `$`
:: immediately computes `$`
|^
:: declare output to type `tape`
^-  tape
:: produce the value located at key `n` within map `table`
(~(got by table) n)
:: mark the definition of arm with face `table`
++  table
  :: below hoon is `sample` provided to `table` arm
  :: evaluate gate `my`
  %-  my
  :: below hoon is `sample` provided to `my` gate
  :: create null terminated cell with ordered pairs
  :~  :-(1 "sibilance")
      :-(2 "alabaster")
      :-(3 "Rotterdam")
      :-(4 "BSV is Bitcoin")
      :-(5 "I am not a number")
  ==
--
