main = do
   nums <- readFile "eu13.txt"
   print $ sum $ map (\x -> read x :: Integer) $ lines nums