clear all
clc
syms x

f=@(x) 2*cos(x)-x^4;
dff=diff(f,x);%differentiating function, treated as an expression not as a function so you cant get its numerical value,its only an expression
df=inline(dff)%dff treated as a function
%xo=-1; 
n1=-10;

n2=10;
h=0.1;
xo=0;
for i=n1:h:n2
    if(f(i)*f(i+h)<0)
        a=i;
        b=i+h;
        xo=(a+b)/2;
        break;
    end
end
N=500;
tol=0.000001;
%doing with newton_rapson method
i=1;
itr=0;
while (i<=N)
    x1=xo-(f(xo)/df(xo));
    if(abs(x1-xo)<=tol)
        break;
    end
    i=i+1;
    xo=x1;
    itr=itr+1;  
end
disp(xo)
disp(i)
    
 %answer of Q3 (b) is==> -0.5792  
 %answer of Q3 (c) is==>1.8955