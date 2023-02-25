%Secant method
%---------------------------------------------
% Name:Abdul Basit Bhat
% Roll No: 102003121
% Group: 2CO5
% Date: 07-10-2021
%---------------------------------------------
clear all
clc

syms x
f=@(x) exp(-x)*(x*x+5*x+2)+1

%ivt
n1=-10;
n2=10;
h=1;
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

i=1;
N=20;
tol=0.00001;
x0=-1;     
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
%------------------------------------------
%Answers
% Q3 i     4.1231
% Q3 ii   -0.5792
% Q3 iii   1.8955
% 
% Q4       3.5018
%------------------------------------------
    