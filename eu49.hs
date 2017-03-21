import Data.List

import Eu7 (divs, prime)

main = do
   let ps = [x | x <- [1000..9999], prime x]
   print $ [(x,y,z) | x <- ps, y <- ps, z <- ps,
                      x < y, y < z, y-x == z-y,
              (sort (show x)) == (sort (show y)),
              (sort (show y)) == (sort (show z))]