-- euler4: the largest palindrome made from the product of two 3-digit numbers

pals = [x*y | x <- [1..999], y <- [1..999],
       show (x*y) == reverse (show (x*y))]

main = do
   print $ maximum pals