%Newtons method

clear all
clc

syms x
f=@(x) x*x-17
%df=diff(f,x)  %2nd arg is wrt what to diff
%will give 2*x but it will be expression and not func
tol=0.001; %tolerance
h=1;
n1=-10 %-N we cand define a variable with - sign
n2=10 %N

%ivt
for i=n1:h:n2
   if(f(i)*f(i+h)<0)
       a=i;
       b=i+h;
      % break; %if u use this also you are corect
    end  
 end
 disp(a)
 disp(b)

dff=diff(f,x)   %as an expression
df=inline(dff)  %makes it as func
i=1;
N=20;
tol=0.00001;
 x0=a;
 x1=b;
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

    