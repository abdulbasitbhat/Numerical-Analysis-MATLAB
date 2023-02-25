clc
clear all


x=[1 1.5 2 2.5];
y=[2.7183 4.4817 7.3891 12.1825];
n=length(x);
p=2.25;
F=zeros(n,n);

for i=1:n
   F(i,1)=y(i); 
end
%disp(F);

%step1
for i=2:n
    for j=i:n
         F(j,i)=(F(j,i-1)-F(j-1,i-1))/(x(j)-x(j-i+1))     
    end
end

%step 2
prod=zeros(5);
prod(1)=1;
for i=2:n
    prod(i)=1;
    for j=1:i-1
        prod(i)=prod(i)*(p-x(j));
    end
end

%step3
sum=0;
for i=1:n
    sum=sum+(F(i,i)*prod(i));
end
disp(sum);