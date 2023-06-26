% Resolve Ficha - Rotinas Trapz e Quad

% Declarar tabela de pontos para o ex1
%%
x=[1 3 4 7 9 10 11 14 15];
y=[8 10 5 13 18 16 25 18 14];

res_1=trapz(x,y)

%%
% fazer help quad para verem que a precisão por defeito é de 1.e-6

%% ex 2

format long; % o exercicio 2 e 3 pedem - assim não temos tanto erro

[res_2,np2]=quad(@valor_pi,0,1, 1.0e-12)  % Q = quad(FUN,A,B,TOL)


%% ex 3
[res_3,np3a]=quad(@int_3,0,8) % so quero saber o resultado e numero de pontos

[res_3,np3b]=quad(@int_3,0,8, 1.0e-15) % quero saber resultado da integração, pontos mas com precisão 1.0e-15
% se nós exigirmos mais precisão, ou seja, um erro mais pequeno,
% O matlab necessita de mais pontos para integrar

% função ex 2
function [f] = valor_pi(x)
f=4./(1+x.^2);  % atenção ao "." sempre que há operações com vetor - requerido pelo comando quad
end

% função ex 3
function [f] = int_3(x)
f=exp(-2.*x).*(x.^2)-sin((x+7)./(x+1));  % atenção ao "." sempre que há operações com vetor
end
    