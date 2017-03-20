import Eu7 (divs)

pdivsum n = sum (divs n) - n

amicable :: Int -> Bool
amicable n | n == p    = False
           | n == t    = True
           | otherwise = False
   where p = pdivsum n
         t = pdivsum p

main = do
   print $ sum [x | x <- [1..10000], amicable x]