mnozenie :: [Int] -> Int
mnozenie [] = 1 -- dla pustej tablicy jeden.
mnozenie (x:xs) = x * mnozenie xs 