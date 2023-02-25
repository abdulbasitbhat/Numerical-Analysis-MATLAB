%Newtons method

clear all
clc

syms x
f=@(x) x-2*sin(x)
%df=diff(f,x)  %2nd arg is wrt what to diff
%will give 2*x but it will be expression and not func

dff=diff(f,x)   %as an expression
df=inline(dff)  %makes it as func
i=1;
N=20;
tol=0.00001;
n1=1.5;
n2=2.5;
h=1;
for i=n1:h:n2
   if(f(i)*f(i+h)<0)
       a=i;
       b=i+h;
      % break; %if u use this also you are corect
   end  
end
disp(a)
disp(b)
x0=(a+b)/2;
%x0=-1.0;
while(i<=N)
    x1=x0-(f(x0)/df(x0))
   if(abs(x1-x0)<tol)
       disp(x1)
       break;
   else
       x0=x1;
   end
end

    