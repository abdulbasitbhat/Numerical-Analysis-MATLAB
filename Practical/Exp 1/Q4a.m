syms r
f=@(r) 8.775468*10^(-8)*(log(r)^3) + 2.341077*10^(-4)*log(r) + (1.129241*10^(-3) - 1/(292.14))

a=11000;
b=14000
count=0;
while(abs(a-b)>tol)  %until error becomes less (amount we can tolerate)
    c=(a+b)/2; 
    if(f(a)*f(c)<0)
        b=c;
    else
        a=c;
    end
    count=count+1; %stores no of iterations
   
end    
disp(c)  %root
disp(count)  %no of iterations