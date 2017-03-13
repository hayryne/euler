-- euler2: the sum of even fibonacci numbers below four million

fibs :: Int -> [Int] -> [Int]
fibs max (x:y:xs) | x > max   = (y:xs)
                  | otherwise = fibs max ((x+y) : (x:y:xs))

main = do
    let ans = [x | x <- fibs 4000000 [1,1], mod x 2 == 0]
    print $ sum ans