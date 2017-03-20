import Eu16 (digits)

-- no idea how to find an upper bound for this
-- it just seemed like there are six in total

main = do
   let pows = [x | x <- [2..],
               x == sum (map (\x -> x^5) $ digits x)]
   print $ sum $ take 6 $ pows