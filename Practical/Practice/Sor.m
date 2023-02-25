%Sor
clear all
clc

A=[4 1 -1 1;1 4 -1 -1;-1 -1 5 1;1 -1 1 3];
b=[-2 -1 0 1];
x0=[0 0 0 0];
x=[0 0 0 0];
n=length(x);
N=100;
tol=0.0001;
w=0.9;
for k=1:N
   for i=1:n
       p=0;
       q=0;
      for j=1:i-1
          p=p+(A(i,j)*x(j));
      end
       for j=i+1:n
          q=q+(A(i,j)*x0(j)); 
       end
       x(i)=((1-w)*x0(i)+w*(b(i)-p-q)/A(i,i));
   end
    if(max(abs(x-x0))<=tol)
       disp(x);
       break;
    end
    x0=x;
end
disp(x);
