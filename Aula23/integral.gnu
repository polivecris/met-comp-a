set xrange [ -2.00000 : 2.00000 ] noreverse nowriteback
plot (x/((cos(x)**2+1))) title "Funcao analitica", "f.dat" title "Funcao numerica" w lines lt 2 lc 3
