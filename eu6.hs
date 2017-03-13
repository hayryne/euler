-- euler6: the difference between the sum
-- of the squares of the first one hundred
-- natural numbers and the square of the sum

main = do
   print $ sum [1..100]^2 - sum [x^2 | x <- [1..100]]
    