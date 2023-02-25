clear all
clc
A=[pi sqrt(2) -1 1;exp(1) -1 1 2;1 1 -sqrt(3) 1;-1 -1 1 -sqrt(5)];
B=[0;1;2;3];
%A=[5 5 0 0 0;0 0 1 -1 -1;0 0 0 2 -3;1 -1 -1 0 0;0 5 -7 -2 0];
%B=[5.5;0;0;0;0];
U=A;
vec=[1 1 1 1 1];
L=diag(vec);
[n,m]=size(U);

   p=1;
%finding the upper triangular matrix of A
for i=1:n-1
     for j=i+1:n
        m=U(j,i)/U(i,i);
        lt(p)=m;
        p=p+1;
        U(j,:)=U(j,:)-(m*U(i,:));
        
        
    end 
end 
disp(U)
disp(lt)
p=1;
for i=1:n
    for j=1:n
        if(j>i)
            L(j,i)=lt(p);
            p=p+1;
        end
    end
end
disp(L);
%L has lower triangular matrix
%U has upper triangular matrix
Y=inv(L)*B;
%disp(Y)
X=inv(U)*Y;
disp("solution to the equations are==>")
disp(X)
%Q3 answer is==>[1 1 1 1]
%Q4 answer is==>1.3494 -4.6780 -4.0329 -1.6566
%Q5 answer is=> 0.6785 0.4215 0.25701 0.15421 0.10280
                
                

