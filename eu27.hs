import Data.List
import Data.Ord

import Eu7 (divs, prime)

-- returns a list of all primes of the form n^2+a*n+b
primes :: Int -> Int -> Int -> [Int]
primes n a b | prime qr  = qr : primes (n+1) a b
             | otherwise = []
    where qr = n^2+a*n+b

comp :: Ord c => (a,b,[c]) -> (a,b,[c]) -> Ordering
comp (a,b,c) (d,e,f) | (length c) > (length f) = GT
                     | otherwise               = LT 

main = do
   let ps = [(a, b, primes 0 a b) |
             a <- [-1000..1000], b <- [-1000..1000]]
   let (a,b,c) = head $ sortBy (flip comp) $ ps
   print (a, b, a*b, length c, c)
   -- (a, b, solution, number of primes, primes)