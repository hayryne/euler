module Eu16 where

import Data.Char

digits :: Integer -> [Int]
digits n = map digitToInt $ show n

main = do
   print $ sum $ digits $ 2^1000