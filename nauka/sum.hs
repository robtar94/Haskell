suma :: [Int] -> Int
suma [] = 0
suma (x:xs) = x + suma xs