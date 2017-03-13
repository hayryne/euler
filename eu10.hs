-- euler10: the sum of all the primes below two million

import Eu7 (divs, prime)

main = do
    print $ sum [x | x <- [1..2000000], prime x]