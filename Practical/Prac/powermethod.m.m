clear all
clc

A=[1 1 0 0;1 2 0 1;0 0 3 3;0 1 2 3];
x0=[1;1;0;1];
k0=10;      %assume
error=10;    %assume
tol=10^-3;
i=0;
k=k0;
while(error>tol)
y=A*x0;
k=max(abs(y));
error=abs(k-k0);
k0=k;
x0=y/k0;
i=i+1;
end

EigVal=k;
EigVec=x0;
disp(EigVal)
disp(EigVec)
disp('No of iterations = ');
disp(i);