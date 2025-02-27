N = 70;
Fc = 270e3;
f = [0 Fc/(fs/2) 1];
m = [1 1 0];
coeff = fir2(N, f, m);

figure;
plot(demod.Time, demod.Data);
xlabel("\textbf{Time (s)}", 'Interpreter','latex');
ylabel('\textbf{Amplitude}', 'Interpreter','latex');
title('\textbf{Demodulated signal ($f_c=500MHz$)}', 'Interpreter','latex');
