% %Plot unit step response of a second order system
% N=[9];
% D=[1 2 9];
% g=tf(N,D)
% step(g)
% grid on;
% title('Plot of unit step response of first order system')
% xlabel('Time')
% ylabel('Amplitude')

%Plot the step response of the closed loop transfer function
%G(s)=36/(s^2+3s+36)and find out the values of Maximum overshoot, rise
%time, settling time, peak time and steady state error
n=[36];
d=[1 3 36];
sys=tf(n,d)
step(sys)
grid on
Tittle('Plot of the unit step response of second order system')
