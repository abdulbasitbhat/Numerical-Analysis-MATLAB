clear all
clc

A=[5 5 0 0 0  5.5;0 0 1 -1 -1 0;0 0 0 2 -3 0;1 -1  -1 0 0 0;0 5 -7 -2 0 0]
disp(A);

n=5;

for i=1:n-1               %columns
    for j=i+1:n           %rows
        if(A(i,i)<A(i,j))     %pivoting
            temp=A(i,:)
            A(i,:)=A(j,:);
            A(j,:)=temp;
        end
    end
end
disp(A);
