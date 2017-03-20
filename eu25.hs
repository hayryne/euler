import Data.List

-- a much cleaner function for defining the
-- fibonacci sequence than in problem 2
fibs = f 0 1
   where f n m = m : f m (n+m)

-- goes through the sequence twice because of O(n)
-- indexing; something to improve upon

main = do
   let ele = head [x | x <- fibs, (length $ show x) > 1000]
   print $ elemIndex ele fibs