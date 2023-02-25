clear all
clc

a=[pi sqrt(2) -1 1 0;exp(1) -1 1 2 1;1 1 -sqrt(3) 1 2;-1 -1 1 -sqrt(5) 3];
%m=[0 0 0 0 0;0 0 0 0 0;0 0 0 0 0;0 0 0 0 0];
n=4;
m=zeros(n,n+1);
for i=1:1:n-1
   for j=i+1:1:n
      m(j,i)=a(j,i)/a(i,i);
      a(j,:)=a(j,:)-(m(j,i)*a(i,:));
      if(a(n,n)==0)
          disp("No unique solution");
          break;
      end
   end
end
disp(a);
x=zeros(n,1);
%x=zeros(n);
x(n)=a(n,n+1)/a(n,n);
for i=n-1:-1:1
   sum=0;
   for j=i+1:n
      sum=sum+a(i,j)*x(j);
       
   end
    x(i)=(a(i,n+1)-sum)/a(i,i);
    
end
disp("x1 x2 x3 x4 =");
disp(x);
% l=m;
% %disp(l);
% u=a;
% x=inv(x);
% y=u*x;
% disp(y);

    
