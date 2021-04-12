import Euterpea
-- sekunda mala
sek1 = line [e 2 qn, f 2 qn, fs 2 qn, g 2 qn, gs 2 qn, a 2 qn, as 2 qn]
sek2 = line [e 3 qn, f 3 qn, fs 3 qn, g 3 qn, gs 3 qn, a 3 qn, as 3 qn]

-- tercja mala (d-f)
ter1 = line [d 4 qn, f 4 qn, a 4 qn, c 4 qn, d 4 qn, f 4 qn]
ter2 = line [d 5 qn, f 5 qn, a 5 qn, c 5 qn, d 5 qn, f 5 qn]
-- kwarta czysta (c-f)
kwar1 = line[ c 5 qn, f 5 qn,  a 5 qn,  c 5 qn,  f 5 qn, a 5 qn]
kwar2 = line[ c 6 qn, f 6 qn,  a 6 qn,  c 6 qn,  f 6 qn, a 6 qn] 

--kwinta czysta
kwin1 = line [c 4 qn, g 4 qn, c 5 qn, g 5 qn, c 6 qn, g 6 qn]
kwin2 = line [c 4 qn, g 4 qn, c 5 qn, g 5 qn, c 6 qn, g 6 qn]

tercje = ter1 :+: ter2   
kwarty = kwar1 :+: kwar2
kwinty = kwin1 :+: kwin2

utwor = tercje :+: kwarty :+: kwinty 
ret = retro utwor
inv = invert  utwor
inv2 = invert ret
french = instrument FrenchHorn $ inv
organy = instrument HammondOrgan  $ inv2
flet = instrument PanFlute $ inv

graj =  utwor :+: french :+: organy :+: flet










