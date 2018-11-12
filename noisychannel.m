% Perturbe percenterror% des entr�es de y al�atoirement

function y_n = noisychannel(y,percenterror)

m = length(y); 
K = floor(m*percenterror); 
I = randperm(m,K); 

y_n = y; 
y_n(I) = rand(K,1)*mean(y); 