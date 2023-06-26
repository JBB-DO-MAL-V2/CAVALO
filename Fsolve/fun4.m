function [f] = fun4(x)
    f(1) = 0.7*sin(x(1)) + 0.2*cos(x(2)) - x(1) ;
    f(2) =  0.7*cos(x(1)) - 0.2*sin(x(2)) - x(2);

end

%% op = optimset('tolx',1.0e-20,'tolfun',1.0e-10)
%% Comando > [x,f,exitflag,output] = fsolve('fun4',[0.5,0.5],op)


