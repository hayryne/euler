import Eu16 (digits)

-- *cough* this may be cheating a little

main = do
   print $ drop (2357207-10) (digits (28433*2^7830457+1))