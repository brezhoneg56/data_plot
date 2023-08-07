set grid

set xlabel 'Sweep [-]'
set ylabel 'Induced Continuity Defect [kg m/s]'
set yrange [0:5e-4]
set xrange [0:14]

## Labels
# 1 : Sweep [-]
# 2 : PressureDrop [N/m²]
# 3 : Velocity Defect [kg m/s]
# 4 : Continuity Defect [kg m/s]
# 5 : WallTime for PimpelDyMFoam [s]
# 6 : Total Accumulated WallTime [s]

set key top left

#set style line 1 lc rgb 'black' lt 1 lw 4 pt 7 pi -1 ps 0.9
#set style line 2 lc rgb 'black' lt 1 lw 1 pt 5 pi -1 ps 0.9
#set style line 7 lc rgb 'black' lt 2 lw 1 pt 5 pi -1 ps 0.75

#set style line 4 lt 1 lc rgb "black" pi -1 pt 7 ps 0.6 lw 2.0

#set pointintervalbox 1.4
set format y '%.1t{/Symbol \264}10^{%L}'  # Use \264 for ×
set terminal postscript eps 18 dashed lw 1 enhanced 
set output '../eps/14_primal_modef_newton_zoom.eps'

plot '../../1_intervals_20-07_primal-adjoint/logtable1.csv' using 1:($4/1) with linespoints title '1 interval' , \
'../../2_intervals_20-07_primal-adjoint/logtable2.csv' using 1:($4/2) with linespoints title '2 intervals' , \
'../../3_intervals_20-07_primal-adjoint/logtable3.csv' using 1:($4/3) with linespoints title '3 intervals' , \
'../../5_intervals_20-07_primal-adjoint/logtable5.csv' using 1:($4/5) with linespoints title '5 intervals' , \
'../../7_intervals_20-07_primal-adjoint/logtable7.csv' using 1:($4/7) with linespoints title '7 intervals' , \
'../../10_intervals_20-07_primal-adjoint/logtable10.csv' using 1:($4/10) with linespoints title '10 intervals' , \
'../../14_intervals_20-07_primal-adjoint/logtable14.csv' using 1:($4/14) with linespoints title '14 intervals' , \
#'../../28_intervals_20-07_primal-adjoint/logtable28.csv' using 1:($4/1) with linespoints title '28 intervals' , \
#'../../56_intervals_20-07_primal-adjoint/logtable56.csv' using 1:($4/1) with linespoints title '56 intervals' , \
#'../../100_intervals_20-07_primal-adjoint/logtable100.csv' using 1:($4/1) with linespoints title '100 intervals'


set output '../pdf/14_primal_modef_newton_zoom.pdf'
replot
