% Votre algorithme pour r�soudre 
% 
%   min_{0 <= xprime <= 1} ||A*xprime - yprime||_1 

function xprime = votrealgorithme(A,yprime)

% Dimensions:
p = min(size(A));
m = 4 * p;

t = ones(m,1); % variable d'ecart
xp  = zeros(p,1); % variable originale

x = [t; xp]; 

% Elements necessaires pour construir A
Im = eye(m);
Ip = eye(p);
O  = zeros(p,m);
Am = [-Im, A;
      -Im, -A; 
        O, Ip;
        O, Ip ];

y  = [yprime; -yprime; zeros(p,1); ones(p,1)];

[xprime, fval] = linprog(x, Am, y);
fprintf('La fonction objectif vaut %f pour la solution trouvee \n', fval);
end                    

%xprime = zeros(size(A,2),1); % solution triviale