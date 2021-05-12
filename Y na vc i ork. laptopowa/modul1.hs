
import Euterpea
-- konwersja z Pitch na AbsPitch
toAbsPitch :: [Pitch] -> [AbsPitch]
toAbsPitch [] = []
toAbsPitch (x:xs) =  absPitch x : toAbsPitch xs

-- konwersja z AbsPitch na Pitch
toPitch :: [AbsPitch] -> [Pitch]
toPitch [] = []
toPitch (x:xs) = pitch x : toPitch xs

--oktawa1 = [(C,1),(D,1), (E, 1), (F,1), (G, 1), (A, 1), (B,1)]

motyw1 = line [e 1 hn, e 1 wn, e 1 hn, e 1 hn, e 1 qn]
r1 = retro motyw1
tr = transpose 2 motyw1
ins1 = instrument  ChurchOrgan $ tr
ins2 = instrument  Violin $ r1

graj = motyw1 :=: r1 :=: ins1 :=: ins2