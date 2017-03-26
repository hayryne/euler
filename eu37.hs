import Eu7  (divs, prime)
import Eu16 (digits, undigits)

truncatable :: Integer -> Bool
truncatable n | n < 10    = False
              | otherwise = right d && left d
   where d = digits n; u = undigits
         right []     = True
         right (x:xs) | prime $ u (x:xs) = right xs
                      | otherwise        = False
         left [] = True
         left x  | prime $ u x = left $ take (length x-1) x
                 | otherwise   = False

main = do
   print $ sum $ take 11 $ [x | x <- [1..],
                            prime x, truncatable x]