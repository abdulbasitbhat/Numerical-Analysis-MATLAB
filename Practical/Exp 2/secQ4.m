%Secant method

clear all
clc

syms x
f=@(x) 9*exp(-x)*sin(2*3.14*x)
%df=diff(f,x)  %2nd arg is wrt what to diff
%will give 2*x but it will be expression and not func

%dff=diff(f,x)   %as an expression
%df=inline(dff)  %makes it as func
%ivt
n1=-10;
n2=10;
h=1;
%ivt
% for i=n1:h:n2
%    if(f(i)*f(i+h)<0)
%        a=i;
%        b=i+h;
%       % break; %if u use this also you are corect
%    end  
% end
% disp(a)
% disp(b)

i=1;
N=20;
tol=0.00001;
x0=3.5;     
x1=b;
while(i<=N)
    x2=x1-(((x1-x0)/(f(x1)-f(x0)))*f(x1));
   if(abs(x2-x1)<tol)
       %disp="Root ";
       disp(x2)
       break;
   else
       x1=x2;
   end
end

    