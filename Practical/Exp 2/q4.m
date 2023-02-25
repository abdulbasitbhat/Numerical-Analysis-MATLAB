%Newtons method

clear all
clc

syms t
f=@(t) 9*exp(-t)*sin(2*3.14*t);
%df=diff(f,x)  %2nd arg is wrt what to diff
%will give 2*x but it will be expression and not func

dff=diff(f,t)   %as an expression
df=inline(dff)  %makes it as func
i=1;
N=20;
tol=0.00001;
x0=3.5;
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

    