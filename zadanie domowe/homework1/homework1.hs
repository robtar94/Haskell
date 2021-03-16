-- zad 4. Napisz funkcje, która usuwa duplikaty z zadanej listy
remDup :: [Int] -> [Int]
remDup [] = []
remDup (x:xs) = x: (remDup (remove x xs))
    where
        remove :: Int -> [Int] -> [Int]
        remove x [] = []
        remove x (y:ys)
            | x==y = remove x ys
            | otherwise = y:(remove x ys)

--zad 5. Napisz funkcje, która liczy liczbe wystapien danej literki 
--w zadanym stringu.

countLetters :: String -> Char -> Int
countLetters str c = length $ filter (== c) str

-- zad 6. Napisz funkcje, która przekształca string
-- a1a2a3a4
-- w
-- a1a2a2a3a3a3a4a4a4a4

przeksztalc :: [a] -> [a]
przeksztalc xs = [ x | (n,y) <- zip [1..] xs , x <- take n (repeat y)]

-- zad 7. Napisz funkcje, która generuje nieskonczona liste elementów ciagu Fibonacciego
fib :: Num n => [n]
fib = 0 : nxt
    where nxt = 1 : zipWith (+) fib nxt

fibN :: Num n => Int -> [n]
fibN = flip take fib

 --8. Napisz funkcje, która generuje nieskonczona liste
lista = 1 : map (+1) lista

-- co nam daje:
--lista = 1 : map (+1) lista 
     -- = 1 : map (+1) (1 : map (+1) lista) 
     -- = 1 : map (+1) (1 : map (+1) (1 : map (+1) lista))
     -- = 1 : 1 + 1 : 1 + 1 + 1 : .... 
     -- = [1,2,3...]

-- 9. Napisz funkcje, która scala ze soba listy l2; l3; l5 
-- według zasady [2, 3, 4, 5, 8, 9, ...]

merge :: [a] -> [a] -> [a]
merge []     ys = ys
merge (x:xs) ys = x : (merge xs ys)