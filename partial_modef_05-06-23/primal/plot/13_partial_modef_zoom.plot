set grid

set xlabel 'Sweep [-]'
set ylabel 'Node-Normalized Momentum Defect [kg m/s]'
set yrange [0.0:2.25]
set xrange [0:14]

## Labels
# 1 : Sweep
# 2 : PressureDrop
# 3 : Velocity Defect
# 4 : Continuity Defect
# 5 : WallTime for PimpelDyMFoam
# 6 : Total Accumulated WallTime

set key top right

#set style line 1 lc rgb 'black' lt 1 lw 4 pt 7 pi -1 ps 0.9
#set style line 2 lc rgb 'black' lt 1 lw 1 pt 5 pi -1 ps 0.9
#set style line 7 lc rgb 'black' lt 2 lw 1 pt 5 pi -1 ps 0.75

#set style line 4 lt 1 lc rgb "black" pi -1 pt 7 ps 0.6 lw 2.0

#set pointintervalbox 1.4

set terminal postscript eps 18 dashed lw 1 enhanced 
set output '../pdf/13_primal_modef_partial_zoom.pdf'


plot '../../1_intervals_05-06-23/logtable1.csv' using 1:($3/2) with linespoints title '1 interval' , \
'../../2_intervals_05-06-23/logtable2.csv' using 1:($3/2) with linespoints title '2 intervals' , \
'../../3_intervals_05-06-23/logtable3.csv' using 1:($3/3) with linespoints title '3 intervals' , \
'../../5_intervals_05-06-23/logtable5.csv' using 1:($3/5) with linespoints title '5 intervals' , \
'../../7_intervals_05-06-23/logtable7.csv' using 1:($3/7) with linespoints title '7 intervals' , \
'../../10_intervals_05-06-23/logtable10.csv' using 1:($3/10) with linespoints title '10 intervals', \
'../../14_intervals_05-06-23/logtable14.csv' using 1:($3/14) with linespoints title '14 intervals'


set output '../eps/13_primal_modef_partial_zoom.eps'
replot
