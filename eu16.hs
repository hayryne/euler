module Eu16 where

import Data.Char

digits :: Integer -> [Integer]
digits = map toInteger . map digitToInt . show

undigits :: [Integer] -> Integer
undigits l = read $ concat $ map show l :: Integer

main = do
   print $ sum $ digits $ 2^1000