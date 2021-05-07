set terminal png size 900,900
set output 'plot.png'
set grid
set title 'Main Plot'
set xlabel 'X'
set ylabel 'f(X)'

plot "./plot.txt" u 1:2 title 'sec(x)', "./plot.txt" u 1:3 title 'cosec(x)'
