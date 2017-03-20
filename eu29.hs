import Data.List

-- nub is O(n^2) but this is the simple way

main = do
   print $ length $ nub [a^b | a <- [2..100], b <- [2..100]]