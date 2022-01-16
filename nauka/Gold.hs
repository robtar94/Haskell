module Gold where
    -- złoty podział
phi :: Double
phi = (sqrt 5 + 1) / 2

polymonial :: Double -> Double
polymonial x = x^2 - x - 1

f x = polymonial (polymonial x)

main = do
    print (polymonial phi)
    print (f phi)