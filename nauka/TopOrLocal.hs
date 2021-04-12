module TopOrLocal where
    topLevelFunction :: Int -> Int 
    topLevelFunction x =
        x + woot + topLevelValue
        where woot :: Int
              woot = 10

    topLevelValue :: Int 
    topLevelValue = 5
    
