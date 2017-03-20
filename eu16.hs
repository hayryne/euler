module Eu16 where

import Data.Char

digits :: Integer -> [Integer]
digits n = map toInteger $ map digitToInt $ show n

main = do
   print $ sum $ digits $ 2^1000