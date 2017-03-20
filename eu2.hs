module Eu2 where

-- euler2: the sum of even fibonacci numbers below four million

-- I wonder if the recursive approach for defining the fibonacci
-- sequence is really as inefficient as they say

-- returns a list composed of fibonacci numbers up to max
fibs :: Int -> [Int]
fibs max = f [1,1]
   where f (x:y:xs) | x+y > max = (x:y:xs)
                    | otherwise = f ((x+y) : (x:y:xs))

main = do
   print $ sum [x | x <- fibs 4000000, mod x 2 == 0]