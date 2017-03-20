module Eu42 where

import Data.List.Split

import Eu12 (tris)
import Eu22 (value, delAll)

-- checks if a sorted list contains a given element
sElem n (x:xs) | n == x    = True
               | n < x     = False
               | otherwise = sElem n xs

main = do
   words <- readFile "eu42.txt"
   let vals = map value $ splitOn "," $ delAll '"' words
   print $ length [n | n <- vals, sElem n tris]