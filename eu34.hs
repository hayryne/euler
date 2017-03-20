import Eu16 (digits)
import Eu20 (fac)

-- again, no idea how to find the upper bound
-- found two excluding [1,2] and summed them for the answer

digitFac n = sum $ map fac $ digits n

main = do
   let facs = [n | n <- [3..], n == digitFac n]
   print $ sum $ take 2 $ facs