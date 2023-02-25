%gauss seidal
clear all
clc

A=[4 1 -1 1;1 4 -1 -1;-1 -1 5 1;1 -1 1 3];
b=[-2 -1 0 1];
n=length(b);
x0=[0 0 0 0];
x=[0 0 0 0];
tol=0.0001;
N=50;

for k=1:N
   for i=1:n
       p=0
       q=0
      for j=1:i-1
          p=p+A(i,j)*x(j);
      end
      for j=i+1:n
          q=p+A(i,j)*x0(j); 
      end
      x(i)=(b(i) - p - q)/A(i,i);
   end
   if(max(abs(x-x0))<=tol)
       disp(x);
       break;
   end
   x0=x;
end