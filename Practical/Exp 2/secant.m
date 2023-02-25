clear all
clc
syms x
f=@(x) x^3 - 0.165* x^2 + 3.993*10^-4;
tol=0.001;
n=50;

n1=-10;
n2=10;
h=1;
for i=n1:h:n2
    if(f(i)*f(i+h)<0)
        x0=i;
        x1=i+h;
        %break;
    end
end
%or define x0 and x1 here
%x0=0.02;
%x1=0.05;
while(i<=n)
    x2=x1-((x1-x0)/(f(x1)-f(x0)))*f(x1);
    %if(abs((x2-x1)/x2)<=0.005)
     %   break;
    %end
    if(abs(x2-x1)<=tol)
       break;
    end
    i=i+1;
    x0=x1;
    x1=x2;
end
disp("root is==>")
disp(x2)
disp("number of iterations are==>")
itr=i-1;
disp(itr)
    