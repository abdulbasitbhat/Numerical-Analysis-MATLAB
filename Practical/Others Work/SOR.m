%original script by anchit rana 102003117 coe5
clear all
clc
%{
n=4;
A=[10 8 -3 1;2 10 1 -4;3 -4 10 1;2 2 -3 10];
B=[16; 9; 10; 11];
%}
n=4;
A=[4 1 -1 1;1 4 -1 -1;-1 -1 5 1;1 -1 1 3];
B=[-2;-1;0;1];
x0=zeros(n,1);
x=zeros(n,1);

tol=0.0001;
N=50;
w=1.2;
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
      x(i)=((1-w)*x0(i)+w*(B(i)-sum-sum1)*1/A(i,i));
     
    end
      if(max(abs(x-x0))<=tol)
       disp(x);
       break
   end
   x0=x;
end

%{
answer of Q3:
  
    1.0001
    1.0000
    1.0000
    1.0000
answer of Q3(B)
    -0.7534
    0.0411
   -0.2808
    0.6918

%}
