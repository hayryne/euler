-- euler7: the 10 001st prime number
module Eu7 where

import Data.List

divs :: Integer -> [Integer]
divs x = nub $ sqdivs ++ pairs sqdivs
   where root = ceiling $ sqrt $ fromIntegral x
         sqdivs = [n | n <- [1..root], rem x n == 0]
         pairs [] = []; pairs (a:as) = div x a : pairs as

prime :: Integer -> Bool
prime n | n < 2     = False
        | otherwise = null $ divs n \\ [1,n]

main = do
    print $ [x | x <- [1..], prime x] !! 10001