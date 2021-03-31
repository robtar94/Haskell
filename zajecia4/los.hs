import Euterpea
import System.Random


seed = mkStdGen 56

liczby :: Int -> StdGen ->[Int]
liczby 0 g = []
liczby n g = b : liczby (n-1) g'
    where
        (b,g') = next g
liczby2 :: Int -> StdGen ->[Int]
liczby2 0 g = []
liczby2 n g = b : liczby2 (n-1) g'
    where
        (b,g') = randomR (10,20) g

randomMuz :: Music AbsPitch

randomMuz = line $ take 30 $ map (note sn) $ randomRs (56,86) (mkStdGen 67543)

m = (Modify (Instrument Marimba) randomMuz)