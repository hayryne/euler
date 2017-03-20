import Data.Char

main = do
   print $ at 0 * at 9 * at 99 * at 999 *
           at 9999 * at 99999 * at 999999
      where champ = concat $ map show [1..] 
            at n = digitToInt $ champ !! n
