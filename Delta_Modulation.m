clear
clc
close all

fs = 10;
t = 0:1/fs:10-1/fs;

x1 = 5*sin(2*pi*t/5);
x2 = sinc(t);
x3 = exp(-t);
input = x1;

N = length(t);
delta = 0.5;
[code, x_dm] = DM(input, delta);

plot(input, "LineWidth", 3)
hold on
stairs(x_dm, "LineWidth", 2)

    
