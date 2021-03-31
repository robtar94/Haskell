import Euterpea

-- C-Dur

x1 = line [c 3 en, d 3 en, e 4 en, f 4 en, g 4 en]
x2 = x1 :+: transpose 3 x1
x3 = x2 :+: x2 :+:  invert x2 :+: retro x2
x4 = times 2 x3 :+: (tempo (2/3) x3)

m1 = line [g 4 en, f 4 en, e 5 en, d 5 en, c 5 en]
m2 = transpose 2 m1
m3 = m2 :+: m2 :+: invert m2 :+: retro m2
m4 = m3 :=: invert m3

music1 :: Music Pitch
music1 = x3 :+: x2 :+: x1 
music2 = m3 :+: m2 :+: m1

basic = music1
podklad =  chord [x4, m4]
r1 = retro basic

ins1 = instrument Accordion  basic
ins2 = instrument PanFlute   podklad

ins3 = instrument OrchestralHarp  music2
ins4 = instrument DistortionGuitar    r1 

jeden = (Modify (Phrase [Art $ Staccato 3.4 ])) ins1 :+: ins2 
dwa = (Modify (Phrase [ Dyn $ Diminuendo 80]))  ins3 :+: ins4 :=: retro ins3
trzy = (Modify (Phrase [ Tmp $ Accelerando  1.5])) ins4

utwor = jeden :+: dwa :+: trzy

