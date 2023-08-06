set grid

set xlabel 'Sweep [-]'
set ylabel 'Induced Momentum Defect [kg m/s]'
set yrange [0.0:20]
#set xrange [0:531.622]

## Labels
# 1 : Sweep
# 2 : PressureDrop
# 3 : Velocity Defect
# 4 : Continuity Defect
# 5 : WallTime for PimpelDyMFoam
# 6 : Total Accumulated WallTime

set key top right

set terminal postscript eps 18 dashed lw 1 enhanced 
set output '../pdf/13_primal_modef_partial.pdf'


plot '../../1_intervals_05-06-23/logtable1.csv' using 1:3 with linespoints title '1 interval' , \
'../../2_intervals_05-06-23/logtable2.csv' using 1:3 with linespoints title '2 intervals' , \
'../../3_intervals_05-06-23/logtable3.csv' using 1:3 with linespoints title '3 intervals' , \
'../../5_intervals_05-06-23/logtable5.csv' using 1:3 with linespoints title '5 intervals' , \
'../../7_intervals_05-06-23/logtable7.csv' using 1:3 with linespoints title '7 intervals' , \
'../../10_intervals_05-06-23/logtable10.csv' using 1:3 with linespoints title '10 intervals' , \
'../../14_intervals_05-06-23/logtable14.csv' using 1:3 with linespoints title '14 intervals' , \
'../../28_intervals_05-06-23/logtable28.csv' using 1:3 with linespoints title '28 intervals' , \
'../../56_intervals_05-06-23/logtable56.csv' using 1:3 with linespoints title '56 intervals' , \
'../../100_intervals_05-06-23/logtable100.csv' using 1:3 with linespoints title '100 intervals'


set output '../eps/13_primal_modef_partial.eps'
replot
