%Gauss Seidal
clear all
clc

n=3;
A=[4.63 -1.21 3.22;-3.07 5.48 2.11;1.26 3.11 4.57];
b=[2.22 -3.17 5.11];
%x0=[0 0 0 0];
tol=0.0001;
N=100;
x0=[0 0 0];
x=[0 0 0];
k=1;

i=1;
count=0;
for k=1:N      %no of iterations
    for i=1:n   %for n variable equations
        p=0;
        q=0;

       for j=1:i-1
          p=p+(A(i,j)*x(j));
       end
       for j=i+1:n
          q=q+(A(i,j)*x0(j)); 
       end
       x(i)=(b(i)-p-q)/A(i,i);
    end
%     if((x-x0)<tol || (x0-x)<tol)
%         disp(x);
 if(max(abs(x-x0))<=tol)
       disp(x);
       count=count+1;
        break;
    end
    x0=x;
end
if(count==0)
   disp("Increase number of Iterations"); 
end
%Answer
%Q3 i     1.0001    1.0000    1.0000    1.0000
%Q3 ii   -0.7534    0.0411   -0.2808    0.6918
%Q4      -8.9886   -9.4837   10.0503
