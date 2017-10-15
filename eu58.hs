import Eu7 (divs,prime)

a /\ b = fromIntegral a / fromIntegral b

-- size, num, diags, primes
makeSpiral (s,n,d,p) = (ns,n+4*ns,d+length nd,p+length np)
    where ns = s+2
          nd = [n+x*ns | x <- [1..4]]
          np = filter prime nd

runSpiral (a,b,c,d) | d /\ c < 0.1 = a+1
                    | otherwise    = runSpiral $ makeSpiral (a,b,c,d)

eu58 = runSpiral $ makeSpiral (0,1,1,0)

