clear all
clc
n=4;
a=-0.25;
b=0.25;
h=abs(b-a)/2;

x=a+h*[1:n-1];
disp(x);

f=@(x) (cos(x)).^2;

 ans=(f(a)+f(b)+2*sum(f(x)))*h/2;
 disp(ans);