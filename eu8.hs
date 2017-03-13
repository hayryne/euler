-- euler8: the value of the greatest product of thirteen
-- adjacent digits in the 1000-digit number "eu8.txt"

import Data.List

mr :: [String] -> [Integer]
mr = map read

lrgst :: [Integer] -> [Integer]
lrgst [] = []
lrgst (x:xs) | length (x:xs) > 14 = product (take 13 (x:xs)) : lrgst xs
             | otherwise           = []

main = do
    grid <- readFile "eu8.txt"
    let digs = mr $ words $ intersperse ' ' $ concat $ lines grid
    print $ maximum $ lrgst digs