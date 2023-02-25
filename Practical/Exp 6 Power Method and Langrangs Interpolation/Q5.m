clear all
clc

n=18;
x=linspace(0,2*pi,n);
y=(sin(x)).^2;
p=0.5;
%p=3.5;
%p=5.5;
%p=6.0;
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