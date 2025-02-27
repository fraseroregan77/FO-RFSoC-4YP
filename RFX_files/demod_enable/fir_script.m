N = 70;
Fc = 270e3;
f = [0 Fc/(fs/2) 1];
m = [1 1 0];
coeff = fir2(N, f, m);