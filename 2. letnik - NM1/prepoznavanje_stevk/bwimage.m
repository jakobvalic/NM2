function bwimage(v)
% Opis:
%  bwimage narise crno belo sliko, ki je podana z vektorjem
%
% Definicija:
%  bwimage(v)
%
% Vhodni podatek:
%  v    vektor velikosti 256, ki predstavlja crno belo sliko velikosti
%       16 x 16
 
A = reshape(squeeze(v),16,16)';  

A = (A-min(min(A))*ones(size(A)));
A = (20/max(max(A)))*A;

map = [
    1.0000    1.0000    1.0000
    0.8715    0.9028    0.9028
    0.7431    0.8056    0.8056
    0.6146    0.7083    0.7083
    0.4861    0.6111    0.6111
    0.3889    0.4722    0.5139
    0.2917    0.3333    0.4167
    0.1944    0.1944    0.3194
    0.0972    0.0972    0.1806
         0         0    0.0417
    ];
colormap(map);
image(A);

end