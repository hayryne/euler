-- euler1: the sum of all the multiples of 3 and 5 below 1000

mult x y z = sum [t | t <- [1..(z-1)],
             mod t x == 0 || mod t y == 0]

main = do
    print $ mult 3 5 1000