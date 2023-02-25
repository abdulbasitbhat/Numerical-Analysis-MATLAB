clc
clear all

x=[2 3 4 5];
y=[27.8 62.1 110 161];
n=length(x);

plot(x,y,'*');
hold on

A=[n sum(log(x),2);sum(log(x),2) sum(log(x).^2,2)];
B=[sum(log(y),2);sum(log(y).*log(x),2)];

X=inv(A)*B;

syms z
f=@(z) (exp(X(1)))*(z^X(2));
%g=@(e) exp(f);
fplot(f);