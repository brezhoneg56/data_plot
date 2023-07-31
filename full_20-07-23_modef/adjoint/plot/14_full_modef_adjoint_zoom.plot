set grid

set xlabel 'Sweep [-]'
set ylabel 'Continuity Defect [kg m^2/s]'
#set yrange [0:1.5e-07]
#set xrange [0:531.622]

## Labels
# 1 : Sweep [-]
# 2 : PressureDrop [Nm^2]
# 3 : Velocity Defect [kg m^2/s]
# 4 : Continuity Defect [kg m/s]
# 5 : WallTime for PimpelDyMFoam [s]
# 6 : Total Accumulated WallTime [s]

set key top right

#set style line 1 lc rgb 'black' lt 1 lw 4 pt 7 pi -1 ps 0.9
#set style line 2 lc rgb 'black' lt 1 lw 1 pt 5 pi -1 ps 0.9
#set style line 7 lc rgb 'black' lt 2 lw 1 pt 5 pi -1 ps 0.75

#set style line 4 lt 1 lc rgb "black" pi -1 pt 7 ps 0.6 lw 2.0

#set pointintervalbox 1.4

set terminal postscript eps 18 dashed lw 1 enhanced 
set output '../pdf/14_adjoint_modef_newton.pdf'

plot '../../1_intervals_20-07_primal-adjoint/adjoint/adjointlogtable1.csv' using 1:4 with linespoints title '1 interval' , \
'../../2_intervals_20-07_primal-adjoint/adjoint/adjointlogtable2.csv' using 1:4 with linespoints title '2 intervals' , \
'../../3_intervals_20-07_primal-adjoint/adjoint/adjointlogtable3.csv' using 1:4 with linespoints title '3 intervals' , \
'../../5_intervals_20-07_primal-adjoint/adjoint/adjointlogtable5.csv' using 1:4 with linespoints title '5 intervals' , \
'../../7_intervals_20-07_primal-adjoint/adjoint/adjointlogtable7.csv' using 1:4 with linespoints title '7 intervals' , \
'../../10_intervals_20-07_primal-adjoint/adjoint/adjointlogtable10.csv' using 1:4 with linespoints title '10 intervals' , \
'../../14_intervals_20-07_primal-adjoint/adjoint/adjointlogtable14.csv' using 1:4 with linespoints title '14 intervals' , \
'../../28_intervals_20-07_primal-adjoint/adjoint/adjointlogtable28.csv' using 1:4 with linespoints title '28 intervals' , \
'../../56_intervals_20-07_primal-adjoint/adjoint/adjointlogtable56.csv' using 1:4 with linespoints title '56 intervals' , \
#'100_intervals_20-07_primal-adjoint/adjoint/adjointlogtable100.csv' using 1:4 with linespoints title '100 intervals' 


set output '../eps/14_adjoint_modef_newton.eps'
replot
