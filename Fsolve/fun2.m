function [f] = fun2(x)
   
f(1) = x(1)^2 + x(2)^ -1  
f(2) = sin((pi*x(1))/2) + x(2)^3 

%% Comandos >
%% op = optimset('tolx', 1.0e-10,'tolfun',1.0e-20) -- define as opcoes
%% [x,f,exitflag,output] = fsolve('fun2', [1,1],op)
