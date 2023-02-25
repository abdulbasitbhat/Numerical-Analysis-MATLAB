clear all
clc

A=[4 1 0;1 20 1;0 1 4];
x0=[1;1;1];    %Taken column wise
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
i=i+1;    %No of iterations.
end

EigVal=k;
EigVec=x0;
disp(EigVal)
disp(EigVec)
disp('No of iterations = ');
disp(i);