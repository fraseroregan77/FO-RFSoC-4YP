data = csvread("iladata.csv", 2);

figure;
plot(data(:, 1), data(:, 6), LineWidth=1.5);
xlabel("\textbf{}", 'Interpreter','latex')
ylabel("\textbf{}", 'Interpreter','latex')
title("\textbf{}", 'Interpreter','latex')
xlim([0 750]);

fs = 333e6;
X = fft(data(:, 6));
Xabs = abs(X); % Obtain the magnitude
N = length(Xabs);
fgrid = fs*(0:(N-1))/(N);
Xabs = Xabs(1:floor(N/4));
fgrid = fgrid(1:floor(N/4));

figure;
plot(fgrid,Xabs);
ylim([0 1e7])

%%
% Parameters
fs = 100e6;       % Sampling frequency (333 MHz)
fc = 500e6;       % Carrier frequency (500 MHz)
fm = 100e3;       % Message frequency (100 kHz)

% Time vector
t = 0:1/fs:10000/fs;  % 10 cycles of message signal

x = sin(2*pi*fm*t);
y = sin(2*pi*fc*t);

z = x.*y

plot(t, z)