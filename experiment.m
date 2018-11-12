% Nettoyer l'espace de travail:
clear all;
clc;

% Rentrer les donnees:
load('messagedAlice.mat');
p = min(size(A));
m = 4 * p;

xp = ones(1, m); % x'
t  = zeros(1, p);

% Ici j'ai essaye d'implementer ce que j'ai vu dans les feuilles
% Le probleme c'est que la matrice compose Am ne peux pas multiplier x
% car les dimensions ne sont pas compatibles.
%x = cat(2, xp, t);
x = [xp, t];
Im = eye(m);
Ip = eye(p);
O  = zeros(p,m);
Am = [-Im, A; -Im, -A; O, Ip; O, Ip];

