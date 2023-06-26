function [f] = fun3(r)

h = 2;
V = 0.25;
f = ((pi*(2*r^3 - 3*r^2*h + h^3))/3)- V;
end

%% Comando [r,f,exitflag,output] = fsolve('fun3',1)