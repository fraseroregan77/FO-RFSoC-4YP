N = 100;
Fc = 220e3;
fs = 2.048e9;
f = [0 Fc/(fs/2) 1];
m = [1 1 0];
coeff = fir2(N, f, m);

freqz(coeff)
figure;
plot(demod.Time, demod.Data);
xlabel("\textbf{Time (s)}", 'Interpreter','latex');
ylabel('\textbf{Amplitude}', 'Interpreter','latex');
title('\textbf{Demodulated signal ($f_c=500MHz$)}', 'Interpreter','latex');
%%

tdata = tdata_out.Data;
ttime = tdata_out.Time;

castData = precast.Data;
castTime = precast.Time;

Ts = mean(diff(ttime)); % Sampling period
Fs = 1/Ts; % Sampling frequency

% Compute FFT
N = length(tdata); % Number of samples
Y = fft(tdata); % Compute FFT
f = (0:N-1)*(Fs/N); % Frequency vector

% Compute magnitude spectrum (normalized)
Y_mag = abs(tdata)/N;

% Plot the FFT results
figure;
plot(f(1:N/2), 2*Y_mag(1:N/2)); % Plot only first half (positive frequencies)
xlabel('Frequency (Hz)');
ylabel('Magnitude');
title('FFT of Simulink Output');
grid on;
