import Data.List
import Data.List.Split
import Data.Char (ord)

-- deletes all occurences of an element from a list
delAll x = foldr op []
   where op a acc | a == x    = acc
                  | otherwise = a : acc

value :: String -> Int
value []     = 0
value (x:xs) = ord x - 64 + value xs

places :: [Int] -> Int -> [Int]
places []     n = []
places (x:xs) n = x * n : places xs (n+1)

-- right fold doesn't work here - learn to use foldl
{-placeScores = post . foldr op ([], 1)
   where op x acc = ((snd acc * x) : fst acc, snd acc + 1)
         post acc = fst acc-}

main = do
   names <- readFile "eu22.txt"
   let sorted = sort $ splitOn "," $ delAll '"' names
   let valued = map value sorted
   let scored = places valued 1
   print $ sum scored