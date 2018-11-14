% Nettoyer l'espace de travail:
clear all;
clc;

% Rentrer les donnees:
load('messagedAlice.mat');
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
Am = [-Im, A; -Im, -A; O, Ip; O, Ip];

y  = [yprime; -yprime; zeros(p,1); ones(p,1)];

[x_prim, fval] = linprog(x, Am, y);
