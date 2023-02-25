clear all
clc

n=4;
a=-0.25;
b=0.25;
h=abs(b-a)/2;

x=a+h*[1:n-1];

f=@(x) (cos(x)).^2;
sum=0;
for i=1:n-1
    if(rem(i,2)==0)
        sum=sum+2*f(x(i));
    else
        sum=sum+4*f(x(i));
    end
end
ans=(f(a)+f(b)+sum)*h/3;
disp("Ans:")
disp(ans);
