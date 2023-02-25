clear all
clc
n=4;
A=[10 8 -3 1;2 10 1 -4;3 -4 10 1;2 2 -3 10];
B=[16 9 10 11];
x0=zeros(n,1);
x=zeros(n,1);

tol=0.0001;
N=50;

for k=1:N
   
    for i=1:n
         sum=0;
        sum1=0;
        for j=1:i-1
            sum=sum+(A(i,j)*x(j));
        end
        for j=i+1:n
            sum1=sum1+(A(i,j)*x0(j));
        end
       x(i)=1/A(i,i)*(B(i)-sum-sum1);
    end
      if(max(abs(x-x0))<=tol)
       disp(x);
       break
   end
   x0=x;
end
