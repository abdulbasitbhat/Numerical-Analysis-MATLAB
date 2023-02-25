clear all
clc
%A=[10 8 -3 1;2 10 1 -4;3 -4 10 1;2 2 -3 10];
%B=[16;9;10;11];
A=[5 5 0 0 0;0 0 1 -1 -1;0 0 0 2 -3;1 -1 -1 0 0;0 5 -7 -2 0];
B=[5.5;0;0;0;0];
aug=[A,B];
[n,m]=size(aug);

for i=1:n-1
     for j=i+1:n
        m=aug(j,i)/aug(i,i);
        aug(j,:)=aug(j,:)-(m*aug(i,:));
        if(aug(n,n)==0)
            disp("no unique solution");
            break;
        end
        
    end 
end 
disp(aug)


x=zeros(n,1);
x(n)=aug(n,n+1)/aug(n,n);
for i=n-1:-1:1
    sum=0;
    for j=i+1:n
        sum=sum+aug(i,j)*x(j);
        
    end
    x(i)=(aug(i,n+1)-sum)/aug(i,i);
end
disp(x)

%Q3: roots are [1 1 1 1]
