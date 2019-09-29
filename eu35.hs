import Data.List (permutations)
import Eu7 (prime)

main = do
    print $ length [x | x <- [1..1000000], circularPrime x]

circularPrime :: Integer -> Bool
circularPrime = all prime . rotations

rotations :: Integer -> [Integer]
rotations n = map (read . rotate s) [1 .. length s]
    where s = show n

rotate :: [a] -> Int -> [a]
rotate xs n = (drop n xs) ++ (take n xs) 