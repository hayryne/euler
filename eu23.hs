-- struggling with new structures; this could be a lot
-- more efficient if I knew how to work with sets

-- takes a couple of minutes in its current form

import Data.List
import Data.Set as Set hiding ((\\))

import Eu7 (divs)

-- checks if a number is abundant, i.e. whether or not
-- the sum of its divisors exceeds the number itself
abundant :: Int -> Bool
abundant n = sum pdivs > n
   where pdivs = (divs n) \\ [1,n]

-- checks if a number can be written as the sum of
-- two abundant numbers
hasAbSum :: Int -> Set Int -> Bool
hasAbSum n set = member True bs
   where bs = Set.map (\x -> member (n-x) set) set

main = do
   let abs   = fromAscList [x | x <- [1..28123], abundant x]
   let noSum = [x | x <- [1..28123], not (hasAbSum x abs)]
   print $ sum noSum