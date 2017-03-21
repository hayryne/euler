import Data.List
import Eu49 (anag)

anagMult :: Int -> Int -> Bool
anagMult x 1 = True
anagMult x n | anag (show x) (show (x*n)) = anagMult x (n-1)
             | otherwise                  = False

main = do
   print $ head [x | x <- [1..], anagMult x 6]