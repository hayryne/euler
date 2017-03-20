import Data.List

-- the sequence clearly starts terminating at
-- powers of two, might look into that later

-- return the collatz sequence for a number
collatz :: Int -> [Int]
collatz n | n == 1 = []
          | even n = rule1 : collatz rule1
          | odd  n = rule2 : collatz rule2
 where rule1 = div n 2; rule2 = 3*n+1

comp :: Ord b => (a,b) -> (a,b) -> Ordering
comp (a,b) (c,d) | b > d     = GT
                 | otherwise = LT 

main = do
   print $ head $ sortBy (flip comp) $
           map (\(x,xs) -> (x, length xs))
           [(x, collatz x) | x <- [1..1000000]]