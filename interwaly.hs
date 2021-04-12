import Euterpea
--tercja wielka
jeden = line [c  4 qn, e 5 qn, g 5 qn, b 5 qn, d 4 qn, f 5 qn]
dwa = line [e 4 qn, g 5 qn, b 6 qn, d 4 qn, f 5 qn, a 6 qn]
--tercja mala
trzy = line[a  2 qn, c 3 qn, d 3 qn, f 2 qn, a 2 qn]
cztery = line[b 3 qn, d 4 qn, f 4 qn, a 4 qn, c 4 qn]
retro1 = retro jeden
test = jeden :+: retro1 :+: dwa :+: retro dwa :+: trzy :+: retro trzy :+: cztery :+: retro cztery