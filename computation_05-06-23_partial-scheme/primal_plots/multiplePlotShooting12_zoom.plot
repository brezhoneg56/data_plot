set grid

set title 'Plot Comparison over [2, 3, 5, 7, 10] subintervals'

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

set key top right

set terminal postscript eps 18 dashed lw 1 enhanced 
set output 'plot_1_2_Comparison_intervals_zoom.pdf'

plot '../2_intervals_05-06-23/logtable2.csv' using 1:2 with linespoints title '2 intervals' , \
'../3_intervals_05-06-23/logtable3.csv' using 1:2 with linespoints title '3 intervals' , \
'../5_intervals_05-06-23/logtable5.csv' using 1:2 with linespoints title '5 intervals' , \
'../7_intervals_05-06-23/logtable7.csv' using 1:2 with linespoints title '7 intervals' , \
'../10_intervals_05-06-23/logtable10.csv' using 1:2 with linespoints title '10 intervals'

set output 'plot_1_2_Comparison_intervals_zoom.eps'
replot
#convert plot_1_2_Comparison_intervals_zoom.eps plot_1_2_Comparison_intervals_zoom.png

# Set up SVG terminal
set terminal svg size 800,600 fname 'Verdana' enhanced
set output 'plot_1_2_Comparison_intervals_zoom.svg'

replot
