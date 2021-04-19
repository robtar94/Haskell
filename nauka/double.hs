double :: Int -> Int
double x = x + x

quadruple :: Int -> Int
quadruple x = double (double x)


factorial n = product [1..n]
average ns = 