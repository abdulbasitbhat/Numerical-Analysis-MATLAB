clc
clear all

x=[-2 -1 0 1 2];
y=[15 1 1 3 19];
n=length(x);

plot(x,y,'*');
hold on

A=[sum(x.^4,2) sum(x.^3,2) sum(x.^2,2);sum(x.^3,2) sum(x.^2,2) sum(x,2);sum(x.^2,2) sum(x,2) n];
B=[sum(y.*(x.^2),2);sum(y.*x,2);sum(y,2)];
disp(A)
disp(B)
X=inv(A)*B;
disp(X);
syms z
f=@(z) X(1)*(z^2) + X(2)*z + X(3);
fplot(f);