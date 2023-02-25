clear all
clc

n=6;
x=[0 8 16 24 32 40];
y=[14.621 11.843 9.870 8.418 7.305 6.414];
p=15;
sum=0;
for i=1:n
    l(i)=1;
    for j=1:n
        if(i~=j)
            l=(p-x(j))/(x(i)-x(j))*l;
        end
    end
sum=sum+l(i)*y(i);
end
disp(sum);