
-- again, no idea how to find the upper bound
-- there's no need to go even up to 100 but I'll
-- leave it as is until I figure out the upper bound

main = do
   let ls = [a^b | a <- [1..100], b <- [1..100], 
                   b == length (show $ a^b)]
   print $ length ls