#!/usr/bin/gnuplot
# 此脚本用于绘制 forceCoeffs.dat 中阻力系数和升力系数随时间变化的图
# 请确保 forceCoeffs.dat 文件与本脚本在同一目录，或修改下述文件路径

set terminal pngcairo enhanced font "Verdana,10" size 800,600
set output "Cd_Cl_vs_Time.png"

set title "Force Coefficients vs Time"
set xlabel "Time (s)"
set ylabel "Coefficient"
set grid

# 绘制 Cd (第3列) 和 Cl (第4列) 随时间 (第1列) 的变化
plot "forceCoeffs.dat" using 1:3 with lines lw 2 title "Cd", \
     "forceCoeffs.dat" using 1:4 with lines lw 2 title "Cl"

pause -1 "Press any key to exit..."
