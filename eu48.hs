
-- Integer fits a lot
-- just grab the last ten digits

main = do
   print $ sum [n^n | n <- [1..1000]]
