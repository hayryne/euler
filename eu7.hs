-- euler7: the 10 001st prime number
module Eu7 where

import Data.List

divs :: Int -> [Int]
divs x = nub $ sqdivs ++ pairs sqdivs
   where root = ceiling $ sqrt $ fromIntegral x
         sqdivs = [n | n <- [1..root], rem x n == 0]
         pairs [] = []; pairs (a:as) = div x a : pairs as

prime :: Int -> Bool
prime n | n < 0     = False
        | otherwise = null $ divs n \\ [1,n]

main = do
    print $ [x | x <- [1..], prime x] !! 10001