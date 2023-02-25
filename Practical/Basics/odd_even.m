% a=input('Enter Number')
% 
% if(rem(a,2)==0)
%     disp('Even')
% else
%     disp('odd')
% end    

syms a
f=@(a) a^2
f(2)