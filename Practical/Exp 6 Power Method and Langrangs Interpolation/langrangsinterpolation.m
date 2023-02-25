clear all
clc

n=6;
x=[0 8 16 24 32 40];
y=[14.621 11.843 9.870 8.418 7.305 6.414];
p=15;
sum=0;
for i=1:n                                      %For full eq
    l(i)=1;
    for j=1:n                                  %for one part of eq
        if(i~=j)                            
            l=(p-x(j))/(x(i)-x(j))*l;          % (one big part)        
        end
    end
sum=sum+l(i)*y(i);                       %l(i)*y(i) = (one big part) * f(x0)
                                         %sum = (one big part) * f(x0) +
                                         %            (other big part)*f(x1)
                                         %             + ... 
end
disp(sum);