module Eu20 where

import Eu16 (digits)

fac 0 = 1
fac n = n * fac (n-1)

main = do
   print $ sum $ digits $ fac 100