-- euler3: the largest prime factor of the number 600851475143

facsRec :: Int -> Int -> [Int]
facsRec 2 _ = [2]
facsRec a b | b > a        = []
            | mod a b == 0 = b : facsRec (div a b) b
            | otherwise    = facsRec a (b+1)
 
facs n = facsRec n 2

main = do
    print $ facs 600851475143