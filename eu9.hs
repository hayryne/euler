-- euler9: the pythagorean triplet for which a + b + c = 1000

pyTrips :: Int -> [(Int,Int,Int)]
pyTrips max = [(a,b,c) |  a <- [1..max],
                          b <- [a..max],
                          c <- [b..max], 
                          a^2 + b^2 == c^2,
                          a+b+c == max]

main = do
    print $ (\(x,y,z) -> x*y*z) $ head $ pyTrips 1000
