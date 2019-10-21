function [R3] = dist_robust(X)
%DIST_ROBUST Distancia de Mahalanobis usando metodos robustos

% vector de medias robustos obtenida bajo el m�todo de m�nima curtosis
[~,~,mm,Ss,~,~] = kur_main(X);
S3 = Ss;
S3_inv = inv(S3);
kurt_mu = mm;
kurt_centrados = X - kurt_mu;

% Distancia de Mahalanobis bajo m�todo Rubusto.
KDist = sqrt(kurt_centrados * S3_inv * kurt_centrados');
R3 = KDist;

end

