-- Extracted TidalCycles prompts

d1 $ "bassfoo" <| n (run 10)

d1 $ "bassfoo" <| n (run 12)

d1 $ "bassfoo" <| n (run 10)

d1 $ "bassfoo" <| n (run 10) #gain rand

d1 $ "bassfoo" <| n (run 10) #gain rand+0.1

d1 $ "bassfoo" <| n (run 10) #gain "rand+0.1"

d1 $ "bassfoo" <| n (run 10) #gain rand+0.1

d1 $ "bassfoo" <| n (run 10) #gain rand+0.2

d1 $ "bassfoo" <| n (run 10) #gain rand+0.3

d1 $ "bassfoo" <| n (run 10) #gain rand+0.7

d1 $ "bassfoo" <| n (run 10) #gain rand+1

d1 $ "bassfoo" <| n (run 10) #gain rand*0.1

d1 $ "bassfoo" <| n (run 10) #gain rand*0.9

d1 $ "bassfoo" <| n (run 10) #gain rand*0.9

d1 $ "bassfoo" <| n (run 10) #gain rand*0.9

d1 $ "bassfoo" <| n (run 10) #gain rand*0.1

d1 $ "bassfoo" <| n (run 10) #gain rand*"0.9 0.1"

d1 $ "bassfoo" <| n (run 10) #gain rand*"0.9 0.1 0.2"

d1 $ "bassfoo" <| n (run 10) #gain rand*"<0.9 0.1 0.2>"

d1 $ "bassfoo" <| n (run 10) #gain rand* "<0.9 0.1 0.2>"

d1 $ "bassfoo" <| n (run 10) #gain ran d* "<0.9 0.1 0.2>"

d1 $ "bassfoo" <| n (run 10) #gain rand * "<0.9 0.1 0.2>"

d2 $ "bassfoo" <| n (run 10) #gain ran d* "<0.9 0.1 0.2>"

d2 $ "bassfoo" <| n (run 10) #gain rand * "<0.9 0.1 0.2>"

d2 $ "bassfoo" <| n (run 10) #gain rand * "<0.3 0.1 0.2>"

d2 $ hurry 2 $ "bassfoo" <| n (run 10) #gain rand * "<0.3 0.1 0.2>"

d2 $ hurry 2.1 $ "bassfoo" <| n (run 10) #gain rand * "<0.3 0.1 0.2>"

d2 $ hurry 2 $ "bassfoo" <| n (run 10) #gain rand * "<0.3 0.1 0.2>"

d2 $ hurry "<2 2.1>" $ "bassfoo" <| n (run 10) #gain rand * "<0.3 0.1 0.2>"

d2 $ hurry "<2 2.3>" $ "bassfoo" <| n (run 10) #gain rand * "<0.3 0.1 0.2>"

d2 $ hurry "<2 2.3 | 2.1>" $ "bassfoo" <| n (run 10) #gain rand * "<0.3 0.1 0.2>"

d2 $ hurry "<2 2.3|2.1>" $ "bassfoo" <| n (run 10) #gain rand * "<0.3 0.1 0.2>"

d2 $ hurry "<2 [2.3|2.1]>" $ "bassfoo" <| n (run 10) #gain rand * "<0.3 0.1 0.2>"

d2 $ hurry "<[2|2.1] [2.3|2.1]>" $ "bassfoo" <| n (run 10) #gain rand * "<0.3 0.1 0.2>"

d2 $ hurry "<[2|2.1] [2.3|2.1] [2.4 0.2]>" $ "bassfoo" <| n (run 10) #gain rand * "<0.3 0.1 0.2>"

d2 $ hurry "<[2|2.1] [2.3|2.1] [2.4 0.5]>" $ "bassfoo" <| n (run 10) #gain rand * "<0.3 0.1 0.2>"

