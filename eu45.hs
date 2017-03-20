import Eu42 (sElem)

tris  = [div (n*(n+1)) 2   | n <- [1..]]
pents = [div (n*(3*n-1)) 2 | n <- [1..]]
hexas = [n*(2*n-1)         | n <- [1..]]

main = do
   print $ [n | n <- tris, sElem n pents, sElem n hexas] !! 2