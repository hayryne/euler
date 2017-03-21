module Eu49 where

-- slow, but faster than with permutations

import Data.List
import Eu7 (divs, prime)

-- checks if two lists are anagrams
-- most likely O(nlogn), so not great
anag :: Ord a => [a] -> [a] -> Bool
anag a b = sort a == sort b

main = do
   let ps = [x | x <- [1000..9999], prime x]
   print $ [(x,y,z) | x <- ps, y <- ps, z <- ps,
                      x < y, y < z, y-x == z-y,
                      anag (show x) (show y),
                      anag (show y) (show z)]