qsort :: Ord a => [a] -> [a] -- dla każdej listy elementow majacych porzadek zwroc liste elementow.
qsort []        = [] 
qsort (x:xs)    = qsort smaller ++ [x] ++ qsort larger
                  where
                      smaller = [a | a <- xs, a <= x]
                      larger  = [b | b <- xs, b > x]

rqsort :: Ord a => [a] -> [a]
rqsort []   = []
rqsort (x : xs)     = rqsort larger ++ [x] ++ rqsort smaller
                      where
                          larger = [a | a <- xs, a >= x] -- po lewej od x ustawiamy elem wieksze lub rowne x.
                          smaller = [b | b <- xs, b < x]

