%SOR
clear all
clc

n=4;
A=[4 1 -1 1;1 4 -1 -1;-1 -1 5 1;1 -1 1 3];
b=[-2 -1 0 1];
%x0=[0 0 0 0];
tol=0.0001;
N=50;
x0=[0 0 0 0];
x=[0 0 0 0];
k=1;

i=1;
w=0.9
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
        x(i)=((1-w)*x0(i)+w*(b(i)-p-q)*1/A(i,i));
    end
%     if((x-x0)<tol || (x0-x)<tol)
%         disp(x);
 if(max(abs(x-x0))<=tol)
       disp(x);
        break;
    end
    x0=x;
end
%Answer
%Q3 i     1.0001    1.0000    1.0000    1.0000
%Q3 ii   -0.7534    0.0411   -0.2808    0.6918
