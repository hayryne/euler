-- euler5: the smallest positive number that is evenly
-- divisible by all of the numbers from 1 to 20

-- brute force; takes a couple of minutes

evdiv :: Int -> [Int] -> Bool
evdiv x []     = True
evdiv x (y:ys) | mod x y == 0 = evdiv x ys
               | otherwise    = False

main = do
   print $ head [x | x <- [1..], evdiv x [20,19,18,17,16,15,14,13,12,11]]