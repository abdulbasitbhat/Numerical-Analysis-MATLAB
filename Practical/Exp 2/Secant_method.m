clc
clear 

f = @(x) x^3 - 2*x - 5;
x0 = input('Enter x0 ');
x1 = input('Enter x1 ');
N = input('Enter Maximum iternations ');
tol = input('Enter the value of tolerance ');
i = 1;

while(i < N)
x2 = x1 - (((x1-x0)*f(x1))/(f(x1) - f(x0)));
if(abs(x2-x1) < tol)
    break;
end
i = i + 1;
x0 = x1;
x1 = x2;
end

disp('The required root is ');
disp(x2);


    
