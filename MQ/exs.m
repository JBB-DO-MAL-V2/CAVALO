clear all
x=[1 3 4 7 9 10 11];
f=[8 10 10 13 18 20 26];
%reta
[P1,S1] = polyfit(x,f,1)
erroP1=S1.normr^2
%parábola
[P2,S2] = polyfit(x,f,2)
erroP2=S2.normr^2
%%Gráficos
plot(x,f,'o')
novo_x=1:0.1:11;
novoy1=polyval(P1,novo_x);
hold on
plot(novo_x,novoy1)
novoy2=polyval(P2,novo_x);
hold on
plot(novo_x,novoy2)
%%%Modelo não polinomial linear
phi1=@(x)1./x;  
phi2=@(x)sin(x);
phi3=@(x)x.^2;

A=[sum(phi1(x).*phi1(x)) sum(phi1(x).*phi2(x)) sum(phi1(x).*phi3(x));...
    sum(phi2(x).*phi1(x)) sum(phi2(x).*phi2(x)) sum(phi2(x).*phi3(x));... 
    sum(phi3(x).*phi1(x)) sum(phi3(x).*phi2(x)) sum(phi3(x).*phi3(x))];
b=[sum(f.*phi1(x)); sum(f.*phi2(x)); sum(f.*phi3(x))];
c=A\b
M=@(x)c(1)./x +c(2).*sin(x)+c(3).*x.^2; 
erroM=sum((M(x)-f).^2)
hold on
M_novo=M(novo_x);
plot(novo_x,M_novo)
