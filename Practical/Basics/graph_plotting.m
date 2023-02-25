clc

x=-10:0.2:10;
y=-20:0.4:20;  ##y-2*x

plot(x,y,':r')

hold on

x=-5:0.1:5;

y=3*x.^2;
plot(x,y,':r')