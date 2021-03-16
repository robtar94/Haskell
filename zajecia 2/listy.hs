-- zad 1
tl (x:xs) = xs
tl[] = error "lista jest pusta"

prefix :: String -> String -> Bool

prefix [] ys = True
prefix xs [] = False
prefix (x:xs) (y:ys) = x == y && prefix xs ys


-- zad 2
podstr :: String -> String -> Bool

podstr xs ys | prefix xs ys = True
	     | otherwise = podstr xs (tail ys)


-- zad 3

dziel :: Integer -> [Integer] -> ([Integer],[Integer])
dziel n [] = ([],[])
dziel n (x:xs) | x < n = (x:ys, zs)
               | otherwise = (ys, x:zs)
               where (ys, zs) = dziel n xs 

-- zad 8

wiel2 = 2 : map(2*) wiel2
wiel3 = 3 : map (3*) wiel3