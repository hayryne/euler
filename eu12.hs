module Eu12 where

import Eu7 (divs, prime)

-- formula from problem 45
tris = [div (n*(n+1)) 2 | n <- [1..]]

main = do
   print $ head [x | x <- tris, length (divs x) > 500]