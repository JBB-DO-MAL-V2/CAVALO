function [f] = fun1(y)
z = 0.892;
f = ((1 + y + y^2 - y^3)/(1 - y)^3) - z;
end

%% Comando > [y,f,exitflag,output] = fsolve('fun1',0.5), onde 0.5 é a aproximação inicial (y1).

%% y* = -0.0290
%% Iterações = 7
%% Cálculos da Função = 16