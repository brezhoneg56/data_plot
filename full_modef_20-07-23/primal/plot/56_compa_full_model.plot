set grid

#set title 'Plot Comparison over [1, 2, 3, 5, 7, 10, 14, 28, 56, 100] subintervals'

set xlabel 'Sweep [-]'
set ylabel 'Dissipated Energy due to Pressure Drop [Nm]'
#set yrange [0:1.5e-07]
#set xrange [0:531.622]

## Labels
# 1 : Sweep [-]
# 2 : PressureDrop [Nm]
# 3 : Velocity Defect [kg m/s]
# 4 : Continuity Defect [kg m/s]
# 5 : WallTime for PimpelDyMFoam [s]
# 6 : Total Accumulated WallTime [s]


set key bottom right

#set style line 1 lc rgb 'black' lt 1 lw 4 pt 7 pi -1 ps 0.9
#set style line 2 lc rgb 'black' lt 1 lw 1 pt 5 pi -1 ps 0.9
#set style line 7 lc rgb 'black' lt 2 lw 1 pt 5 pi -1 ps 0.75

#set style line 4 lt 1 lc rgb "black" pi -1 pt 7 ps 0.6 lw 2.0

#set pointintervalbox 1.4

set terminal postscript eps 18 dashed lw 1 enhanced 
set output '../eps/56_compa_full_modef.eps'

plot '../../56_intervals_20-07_primal-adjoint/logtable56.csv' using 1:2 with linespoints title '56 intervals' , \
'../../56_intervals_20-07_primal-adjoint/old_logtable56.csv' using 1:2 with linespoints title '56 intervals' , \


set output '../pdf/56_compa_full_modef.pdf'
replot

