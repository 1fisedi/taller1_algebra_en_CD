function [maxPDP,minPDP, maxPDJ, minPDJ, maxPDD,minPDD] = ...
    punto8(X, n, plot)
%PUNTO8 m�tricas binarias (Pearson, Jaccard y Dice) indentifica los n
%   activos m�s parecidos y los n menos parecidos al vector binario de
%   medias.

% Media por cada fila
mu = mean(X,2);
% generaci�n de vector binario.
b_mu = (mu > 0);

%definici�n de matriz binaria
B_matrix = X > 0;

%calcular la distancia dada cada m�trica binaria propuesta.
[DP, DJ, DD] = binary_dist_calc(B_matrix, b_mu, X);

if ~exist('plot', 'var') || isempty(plot)
    plot = false;
end

if plot
    binary_dist_plot(DP,DJ,DD);
end

% Sacar los n m�s positivos

[maxPDP,minPDP, maxPDJ, minPDJ, maxPDD,minPDD] = ... 
    binary_dist_parecidos(DP, DJ, DD, n);

pause;
close all;

end

%% ejecucion
