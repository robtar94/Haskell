import Euterpea
-- D-mol
tlo = line [d 3 dhn, e 3 dhn, fs 3 dhn, g 3 dhn, a 3 dhn, b 3 dhn, c 4 dhn, d 4 dhn]

-- A-mol
harfa = line [a 4 dqn, b 4 qn, c 4 dqn, d 4 dqn, e 4 dqn, f 4 dqn, g 4 dqn,  a 4 dqn]

-- F-moll

piano = line [f 3 dwn, g 3 dwn, af 3 dwn, bf 3 dwn, c 3 dwn, df 3 dwn, ef 3 dwn, f 3 dwn]

--Gs moll

szybki = line [gs 3 dsn, as 3 dsn, b 3 dsn, cs 3 dsn, ds 3 dsn, e 3 dsn, fs 3 dsn, gs 3 dsn]


--E-moll
szybki2 = line [e 4 dsn, fs 4 dsn, g 4 dsn, a 4 dsn, b 4 dsn, c 4 dsn, d 4 dsn, e 4 dsn]

-- c-moll
ins6 = line [c 3 dhn, d 3 dhn, es 3 dhn, f 3 dhn, g 3 dhn, as 3 dhn, b 3 dhn]

-- B-moll
ins7 = line [b 4 dwn, c 4 dwn, ds 4 dwn, es 4 dwn, f 4 dwn, gs 4 dwn, as 4 dwn]

--Des moll

ins8 = line [ds 3 qn, es 3 qn, fs 3 qn, gs 3 qn, as 3 qn, bss 3 qn, cs 3 qn]

-- Eis moll
ins9 = line [gs 4 dqn, as 4 dqn, bs 4 dqn, cs 4 dqn, ds 4 dqn, es 4 dqn, fss 4 dqn]



muz = piano :=: tlo :=: ins7 :=: ins6 
muz2 = szybki :=: szybki2

muz3 = harfa :=: ins8 :=: ins9 :+: muz4

muz4 = invert muz :+: invert muz2

muz5 = retro muz4
muz6 = retro muz3
part1 = muz :+: muz3
part2 = muz2
part3 = muz4 

graj = part1 :+: part3
graj2 = remove 6.5 graj

