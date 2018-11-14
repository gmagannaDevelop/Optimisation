% Nettoyer l'espace de travail:
clear all;
clc;

% Rentrer les donnees:
load('messagedAlice.mat');
p = min(size(A));
m = 4 * p;

t = ones(m,1); % x'
xp  = zeros(p,1);

% Ici j'ai essaye d'implementer ce que j'ai vu dans les feuilles
% Le probleme c'est que la matrice compose Am ne peux pas multiplier x
% car les dimensions ne sont pas compatibles.
%x = cat(2, xp, t);

% La j'hesite entre x = [xp, t] et x = [t , xp]
% Et aussi entre [,] et [;]
% il pareil que c'est ;
x = [t; xp];

Im = eye(m);
Ip = eye(p);
O  = zeros(p,m);
Am = [-Im, A; -Im, -A; O, Ip; O, Ip];

y  = [yprime; -yprime; zeros(p,1); ones(p,1)];
