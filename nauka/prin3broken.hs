module Print3Broken where
    printSecond :: IO()
    printSecond = do
        putStrLn greeting
        where greeting = "Yaarrrr"

    main :: IO()
    main = do
        putStrLn greeting
        printSecond
        where greeting = "Yaarrrr"
        