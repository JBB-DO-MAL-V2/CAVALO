%% Exercício 1
    x = [1 3 4 7 9 10 11];
    f = [8 10 5 13 18 16 25];
    np = length(x);
    f5 = spline(x,f,5) % valor da spline no ponto 5
    s3 = spline(x,f) % spline básica usando os pontos x e f
    s3.coefs % coeficientes dos vários segmentos da spline
   
%% Exercício 2
    f_95 = spline (x,[10 f -4],9.5) % forçar derivadas na fronteira
    s3_der = spline (x, [10 f -4])
    s3_der.coefs
    plot (x, f, 'or') % imprimir amostra de pontos
    hold on;
    xaux=1:0.1:11;
    yaux=spline (x, f, xaux);
    plot (xaux, yaux, 'b')
    hold on;
    yaux_der= spline (x, [10 f -4], xaux);
    plot(xaux,yaux_der,'g')
   
 %% Exercício 3
    d1 = (f (1)- f (2))/ (x (1)-x (2));  % estimativa da derivada na fronteira inferior
    dn = (f (np)-f (np-1))/(x (np)-x (np-1)) % estimativa da derivada na fronteira superior
    s3c= spline (x ( [1, 3: (np-2) ,np]), [dl f ([1, 3: (np-2) , np] ) dn] )
    f_325=spline (x ( [1, 3: (np-2), np]), [d1 f ( [1, 3: (np-2) , np]) dn], 3.25)
    yaux_c = spline (x ([1,3: (np-2), np]), [d1 f ([1, 3: (np-2) ,np]) dn], xaux)
    plot (xaux, yaux_c, 'k')