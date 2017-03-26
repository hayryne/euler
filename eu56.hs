import Eu16 (digits)

main = do
   print $ maximum [sum $ digits $ a^b |
                    a <- [1..100], b <- [1..100]]
