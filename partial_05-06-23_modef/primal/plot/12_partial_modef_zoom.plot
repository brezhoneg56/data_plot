set grid

set xlabel 'Sweep [-]'
set ylabel 'Pressure Drop [Nm]'
#set yrange [0.5:1.5]

set yrange [0:1.5e-07]


set xrange [0:10]

## Labels
# 1 : Sweep [-]
# 2 : PressureDrop [Nm]
# 3 : Velocity Defect [kg m/s]
# 4 : Continuity Defect [kg m/s]
# 5 : WallTime for PimpelDyMFoam [s]
# 6 : Total Accumulated WallTime [s]

set key bottom right

set format y '%.1t{/Symbol \264}10^{%L}'  # Use \264 for ×

set terminal postscript eps 18 dashed lw 1 enhanced 
set output '../pdf/12_primal_modef_partial_zoom.pdf'

plot '../../1_intervals_05-06-23/logtable1.csv' using 1:2 with linespoints title '1 interval' , \
'../../2_intervals_05-06-23/logtable2.csv' using 1:2 with linespoints title '2 intervals' , \
'../../3_intervals_05-06-23/logtable3.csv' using 1:2 with linespoints title '3 intervals' , \
'../../5_intervals_05-06-23/logtable5.csv' using 1:2 with linespoints title '5 intervals' , \
'../../7_intervals_05-06-23/logtable7.csv' using 1:2 with linespoints title '7 intervals' , \
'../../10_intervals_05-06-23/logtable10.csv' using 1:2 with linespoints title '10 intervals'

set output '../eps/12_primal_modef_partial_zoom.eps'
replot
