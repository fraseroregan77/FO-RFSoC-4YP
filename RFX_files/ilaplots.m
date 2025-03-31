data = csvread("iladata.csv", 2);

figure;
subplot(2, 1, 1)
plot(data(:, 1), data(:, 6), LineWidth=1.5);
xlabel("\textbf{Number of Samples}", 'Interpreter','latex')
ylabel("\textbf{Magnitude}", 'Interpreter','latex')
title("\textbf{ILA Signal (m\_axis\_tdata)}", 'Interpreter','latex')
xlim([0 1600])
grid on
subplot(2, 1, 2)
plot(data(:, 1), data(:, 6), LineWidth=1.5);
xlabel("\textbf{Number of Samples}", 'Interpreter','latex')
ylabel("\textbf{Magnitude}", 'Interpreter','latex')
title("\textbf{ILA Signal (m\_axis\_tdata)}", 'Interpreter','latex')
grid on
xlim([0 300]);

% Sampling frequency
fs = 333e6;

% Compute FFT
X = fft(data(:, 6)); 
N = length(X); % Number of samples

% Normalize magnitude
Xabs = abs(X) / N;  

% Shift FFT to center zero frequency
X_shifted = fftshift(Xabs);

% Generate two-sided frequency axis
fgrid = (-N/2:N/2-1) * (fs/N); 

% Plot two-sided spectrum
figure;
plot(fgrid, X_shifted, 'LineWidth', 1.5);
xlabel("\textbf{Frequency (Hz)}", 'Interpreter', 'latex');
ylabel("\textbf{Magnitude}", 'Interpreter', 'latex');
title("\textbf{Two-Sided FFT of ILA Signal (m\_axis\_tdata)}", 'Interpreter', 'latex');
ylim([0 max(X_shifted)*1.1]); % Adjust y-axis limit
xlim([-fs/2 fs/2]); % Show full two-sided range
grid on;
%%
data = csvread("ILA_Data_saxisTX.csv", 2);

figure;
subplot(2, 1, 1)
plot(data(:, 1), data(:, 4), LineWidth=1.5);
xlabel("\textbf{Number of Samples}", 'Interpreter','latex')
ylabel("\textbf{Magnitude}", 'Interpreter','latex')
title("\textbf{ILA Signal (m\_axis\_tx\_tdata)}", 'Interpreter','latex')
xlim([0 16000])
grid on
subplot(2, 1, 2)
plot(data(:, 1), data(:, 4), LineWidth=1.5);
xlabel("\textbf{Number of Samples}", 'Interpreter','latex')
ylabel("\textbf{Magnitude}", 'Interpreter','latex')
title("\textbf{ILA Signal (m\_axis\_tx\_tdata)}", 'Interpreter','latex')
xlim([300 1100]);
grid on

% Sampling frequency
fs = 333e6; 

% Compute FFT
X = fft(data(:, 4)); 
N = length(X); % Number of samples

% Normalize magnitude
Xabs = abs(X) / N;  

% Shift FFT to center zero frequency
X_shifted = fftshift(Xabs);

% Generate two-sided frequency axis
fgrid = (-N/2:N/2-1) * (fs/N); 

% Plot two-sided spectrum
figure;
plot(fgrid, X_shifted, 'LineWidth', 1.5);
xlabel("\textbf{Frequency (Hz)}", 'Interpreter', 'latex');
ylabel("\textbf{Magnitude}", 'Interpreter', 'latex');
title("\textbf{Two-Sided FFT of ILA Signal (m\_axis\_tx\_tdata)}", 'Interpreter', 'latex');
ylim([0 max(X_shifted)*1.1]); % Adjust y-axis limit
xlim([-fs/2 fs/2]); % Show full two-sided range
grid on;
