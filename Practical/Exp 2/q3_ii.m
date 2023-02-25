%Newtons method

clear all
clc

syms x
f=@(x) exp(-x)*(x^2+5*x+2)+1
%df=diff(f,x)  %2nd arg is wrt what to diff
%will give 2*x but it will be expression and not func

dff=diff(f,x)   %as an expression
df=inline(dff)  %makes it as func
i=1;
N=20;
tol=0.00001;
x0=-1.0;
while(i<=N)
    x1=x0-(f(x0)/df(x0))
   if(abs(x1-x0)<tol)
       %disp="Root ";
       disp(x1)
       break;
   else
       x0=x1;
   end
end

    