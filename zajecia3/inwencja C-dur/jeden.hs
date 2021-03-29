import Euterpea
violin_1 = line [c 4 qn, c 4 qn, c 4 qn, c 4 qn] 
violin_2 = line [c 4 qn, c 4 qn, c 4 qn, c 4 qn]
rest_1 = line [c 4 qn, c 4 qn, c 4 qn, c 4 qn]
rest_2 = line [c 4 qn, c 4 qn, c 4 qn, c 4 qn]


-- klucz wiolinowy cały: pauza, c d, e, f, d, e,c,g, pauza c pauza b pauza c pauza
klucz1 = rest qn :+:  violin_1 :+: violin_2  :+: rest qn :+: c 4 qn :+: rest qn :+: b 4 qn :+: rest qn :+: c 4 qn :+: rest qn  
klucz2 =  rest_1  :+: rest_2 :+: violin_1 :+: violin_2

muzyka = chord [klucz1, klucz2] -- odgrywamy wszytsko razem, tworzac inwencje c-dur

inverted = invert  muzyka

utwor =    instrument ElectricGrandPiano   muzyka :+: inverted :+: retro muzyka -- podstawowy utwor na samo pianino
skrzypce = instrument OrchestralHarp   utwor


-- koncowy na skrzypce i pianino
graj = chord [utwor,skrzypce]
retro_graj =   retro graj

graj2 = graj :+: instrument Violin retro_graj





 