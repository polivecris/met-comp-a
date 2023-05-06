set xrange [ -2.00000 : 2.00000 ] noreverse nowriteback
plot (x*sin(2*x)+cos(x)**2 +1)/((cos(x)**2+1)**2) title "Funcao analitica", "df.dat" title "Funcao numerica" w lines lt 2 lc 3
