import Data.List.Split

type Point    = (Int,Int)
type Triangle = (Point, Point, Point)

parse :: [String] -> Triangle
parse (a:b:c:d:e:f:[]) = ((a,b),(c,d),(e,f))
   where i = map read (a:b:c:d:e:f:[])

main = do
   inp <- readFile "eu102.txt"
   --print inp
   --let tris = map parse $ map (splitOn ",") $ lines inp
   print $ inp