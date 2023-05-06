set xlabel "Ranking" 
set ylabel "Frequencia"
set style fill pattern 2
set term pos enh color "Times" 18
set out "the-raven.eps"
replot
unset out
set term wxt
