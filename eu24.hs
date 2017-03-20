import Data.List

-- the standard permutation function happens to make
-- this trivial; should also write it myself though

main = do
   print $ (sort $ permutations [0..9]) !! 999999