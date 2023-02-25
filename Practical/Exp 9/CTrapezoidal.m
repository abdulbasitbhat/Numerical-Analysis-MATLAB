clear all
clc

n=4;
a=-0.25;
b=0.25;
h=abs(b-a)/2;

f=@(x) (cos(x)).^2;
sum=0
for i=1:n-1
    x=a+i*h;
    sum=sum+2*f(x);
end
ans=(sum + f(a) +f(b))*h/2;
disp("Ans:")
disp(ans);