import Data.List
import Data.Ord

-- not for human eyes, this thing is hideous and
-- probably takes an hour to run

-- wrote this with a friend as a first idea and
-- it does work, if ever so inefficiently

eu39 = sortBy comp $ map
       (\(x:xs) -> (x, length (x:xs)))
       $ group $ sort
       [a+b+c | a <- [1..1000],
                b <- [1..1000],
                c <- [1..1000],
                a^2+b^2==c^2,
                a+b+c <= 1000]

comp :: Ord a => Ord b => (a,b) -> (a,b) -> Ordering
comp (a,b) (c,d) | b > d     = GT
                 | otherwise = LT 