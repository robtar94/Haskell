sayHello :: String -> IO ()
sayHello x =
    putStrLn ("Hello " ++ x ++ "!")

triple x = x * 3

--2. Write one function that has one parameter and works for all
--the following expressions. Be sure to name the function.

piNum x = 3.14 * (x * x)

--fix file exercise
x = 7
y = 10
f = x + y