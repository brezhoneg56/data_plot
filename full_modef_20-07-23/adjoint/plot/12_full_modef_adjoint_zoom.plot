set grid

set xlabel 'Sweep [-]'
set ylabel 'Dissipated Energy due to Adjoint Pressure Drop [Nm^2]'
#set yrange [0:1.5e-07]
#set xrange [0:531.622]

## Labels
# 1 : Sweep [-]
# 2 : Dissipated Energy due tu Adjoint Pressure Drop [N/m²]
# 3 : Velocity Defect [kg m/s]
# 4 : Continuity Defect [kg m/s]
# 5 : WallTime for PimpelDyMFoam [s]
# 6 : Total Accumulated WallTime [s]


set key top right

#set style line 1 lc rgb 'black' lt 1 lw 4 pt 7 pi -1 ps 0.9
#set style line 2 lc rgb 'black' lt 1 lw 1 pt 5 pi -1 ps 0.9
#set style line 7 lc rgb 'black' lt 2 lw 1 pt 5 pi -1 ps 0.75

#set style line 4 lt 1 lc rgb "black" pi -1 pt 7 ps 0.6 lw 2.0

set format y '%.1t{/Symbol \264}10^{%L}'  # Use \264 for ×

set terminal postscript eps 18 dashed lw 1 enhanced 
set output '../eps/12_adjoint_modef_newton.eps'

plot '../../1_intervals_20-07_primal-adjoint/adjoint/adjointlogtable1.csv' using 1:2 with linespoints title '1 interval' , \
'../../2_intervals_20-07_primal-adjoint/adjoint/adjointlogtable2.csv' using 1:2 with linespoints title '2 intervals' , \
'../../3_intervals_20-07_primal-adjoint/adjoint/adjointlogtable3.csv' using 1:2 with linespoints title '3 intervals' , \
'../../5_intervals_20-07_primal-adjoint/adjoint/adjointlogtable5.csv' using 1:2 with linespoints title '5 intervals' , \
'../../7_intervals_20-07_primal-adjoint/adjoint/adjointlogtable7.csv' using 1:2 with linespoints title '7 intervals' , \
'../../10_intervals_20-07_primal-adjoint/adjoint/adjointlogtable10.csv' using 1:2 with linespoints title '10 intervals' , \
'../../14_intervals_20-07_primal-adjoint/adjoint/adjointlogtable14.csv' using 1:2 with linespoints title '14 intervals' , \
'../../28_intervals_20-07_primal-adjoint/adjoint/adjointlogtable28.csv' using 1:2 with linespoints title '28 intervals' , \
'../../56_intervals_20-07_primal-adjoint/adjoint/adjointlogtable56.csv' using 1:2 with linespoints title '56 intervals' , \
#'100_intervals_20-07_primal-adjoint/adjoint/adjointlogtable100.csv' using 1:2 with linespoints title '100 intervals' 


set output '../pdf/12_adjoint_modef_newton.pdf'
replot
