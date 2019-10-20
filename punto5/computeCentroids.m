function centroids = computeCentroids(X, idx, K)
%COMPUTECENTROID devuelve los nuevos centroides computando la media de cada
%dato asignado a cada centroide.

% informaci�n de la matrix de datos
n = size(X,2);

%pre-allocaci�n
centroids = zeros(K, n);

%para cada uno de datos seg�n el centroide.
for j = 1:size(idx)
    for k = 1:n
        centroids(idx(j),k) = centroids(idx(j),k) + X(j, k);
    end
end

% para cada computar las medias.
for i = 1:K
    for l = 1:n
        count = sum(idx == i);
        centroids(i,l) = centroids(i,l) / count;
    end
end

end

