-- what an absolute beauty
-- written as a joke, runs for six hours

main = do
   print $ [[a,b,c,d,e,f,g,h] |
            a <- [0..1],   b <- [0..2],
            c <- [0..4],   d <- [0..10],
            e <- [0..20],  f <- [0..40],
            g <- [0..100], h <- [0..200],
            200*a+100*b+50*c+20*d+10*e+5*f+2*g+h == 200]
