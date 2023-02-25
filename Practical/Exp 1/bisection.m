clear all
clc

syms x
f=@(x) x^2-29

tol=0.001; %tolerance
h=1;
n1=-10 %-N we cand define a variable with - sign
n2=10 %N

for i=n1:h:n2
   if(f(i)*f(i+h)<0)
       a=i;
       b=i+h;
      % break; %if u use this also you are corect
   end  
end
disp(a)
disp(b)
%c=(a+b)/2;

while(abs(a-b)>tol)  %until error becomes less (amount we can tolerate)
    c=(a+b)/2; 
    if(f(a)*f(c)<0)
        b=c;
    else
        a=c;
    end
   
end    
disp(c)