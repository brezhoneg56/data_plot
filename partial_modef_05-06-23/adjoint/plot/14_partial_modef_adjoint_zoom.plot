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
set output '../eps/14_adjoint_modef_partial.eps'

plot '../adjointlogtable1.csv' using 1:4 with linespoints title '1 interval' , \
'../adjointlogtable2.csv' using 1:4 with linespoints title '2 intervals' , \
'../adjointlogtable3.csv' using 1:4 with linespoints title '3 intervals' , \
'../adjointlogtable5.csv' using 1:4 with linespoints title '5 intervals' , \
'../adjointlogtable7.csv' using 1:4 with linespoints title '7 intervals' , \
'../adjointlogtable10.csv' using 1:4 with linespoints title '10 intervals' , \
'../adjointlogtable14.csv' using 1:4 with linespoints title '14 intervals' , \
'../adjointlogtable28.csv' using 1:4 with linespoints title '28 intervals' , \
'../adjointlogtable56.csv' using 1:4 with linespoints title '56 intervals' , \
#'../100adjointlogtable100.csv' using 1:4 with linespoints title '100 intervals'
