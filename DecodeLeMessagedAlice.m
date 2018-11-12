% Projet d'optimisation non lin�aire
%
% D�codez le message d'Alice... 

clear all; clc; 

% load la matrice d'encodage et le message d'Alice transmis par le canal: 
load messagedAlice

% Utilisez votre algorithme pour r�soudre:
% 
%   min_{0 <= xprime <= 1} ||A*xprime - yprime||_2^2 
%
% Rem. La solution xprime devrait �tre un vecteur de taille 98x1
xprime = votrealgorithme(A,yprime); 

% Affichez le r�sultat: 
fprintf('The recovered message is: %s \n', decoding_bin(xprime,d)); 