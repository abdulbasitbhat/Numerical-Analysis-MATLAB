clc
clear all

x=[0.1 0.2 0.4 0.5 1 2];
y=[21 11 7 6 5 6];
n=length(x);

plot(x,y,'*');
hold on

A=[sum(x,2) sum((x.^(-1/2)),2);sum((x.^(-1/2)),2) sum((x.^(-2)),2)];
B=[sum(y.*(x.^(1/2)),2);sum(y./x,2)];

X=inv(A)*B;

syms z
f=@(z) X(1)*(z^(1/2))+X(2)*(1/z);
%g=@(e) exp(f);
fplot(f);