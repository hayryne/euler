
-- the following are slow, look into better solutions

toBinary n = reverse $ toBin n
isPal w = w == reverse w

toBin :: Integer -> String
toBin i | i == 0       = []
        | mod i 2 == 0 = '0' : toBin d
        | otherwise    = '1' : toBin d
   where d = div i 2

palNums = sum [x | x <- [0..1000000],
               isPal (show x), isPal $ show $ toBin x]
