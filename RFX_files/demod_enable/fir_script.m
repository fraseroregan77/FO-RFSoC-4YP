N = 200;
Fc = 300e3;
fs = 333e6;
f = [0 Fc/(fs/2) 1];
m = [1 1 0 ];
coeff = fir2(N, f, m);

%freqz(coeff)
% figure;
% plot(demod.Time, demod.Data);
% xlabel("\textbf{Time (s)}", 'Interpreter','latex');
% ylabel('\textbf{Amplitude}', 'Interpreter','latex');
% title('\textbf{Demodulated signal ($f_c=500MHz$)}', 'Interpreter','latex');

fd = (40*333e6)/256

figure;
plot(output.Time, output.Data, LineWidth=1.5);
title("\textbf{Output of Transmitter System}", 'Interpreter','latex')
xlabel("\textbf{Time (s)}", 'Interpreter','latex')
ylabel("\textbf{Magnitude}", 'Interpreter','latex')
xlim([0 0.75e-5])
ylim([-0.5e4 7e4])


figure;
plot(before.Time, before.Data);
title("\textbf{Mixer Output (Pre Cast)}", 'Interpreter','latex')
xlabel("\textbf{Time (s)}", 'Interpreter','latex')
ylabel("\textbf{Magnitude}", 'Interpreter','latex')
xlim([0 2.75e-5])



% figure;
% plot(Demodulated.Time, Demodulated.Data);
% title("\textbf{Demodulated Signal (Full System Test)}", 'Interpreter','latex')
% xlabel("\textbf{Time (s)}", 'Interpreter','latex')
% ylabel("\textbf{Magnitude}", 'Interpreter','latex')
% % xlim([0.1e-5 0.15e-5])
% 
% figure;
% plot(precast.Time, precast.Data);
% title("\textbf{Demodulated Signal (Full System Test Pre Cast)}", 'Interpreter','latex')
% xlabel("\textbf{Time (s)}", 'Interpreter','latex')
% ylabel("\textbf{Magnitude}", 'Interpreter','latex')
% xlim([0.1e-5 2.5e-5])


%%

tdata = tdata_out.Data;
ttime = tdata_out.Time;

% figure;
% plot(ttime, tdata)
% title("\textbf{Output of Transmitter System}", 'Interpreter','latex')
% xlabel("\textbf{Time (s)}", 'Interpreter','latex')
% ylabel("\textbf{Magnitude}", 'Interpreter','latex')
% xlim([0 0.5e-5])
% ylim([0 6.5e4])
% 
% 
% figure;
% subplot(2, 1, 1)
% plot(final.Time, final.Data)
% title("\textbf{Output of Receiver System}", 'Interpreter','latex')
% xlabel("\textbf{Time (s)}", 'Interpreter','latex')
% ylabel("\textbf{Magnitude}", 'Interpreter','latex')
% xlim([1e-5 1.5e-5])
% ylim([-1e9 5e9])
% subplot(2, 1, 2)
% plot(final.Time, final.Data)
% title("\textbf{Output of Receiver System (Zoomed)}", 'Interpreter','latex')
% xlabel("\textbf{Time (s)}", 'Interpreter','latex')
% ylabel("\textbf{Magnitude}", 'Interpreter','latex')
% xlim([2e-6 2.5e-6])

figure;
subplot(2, 1, 1)
plot(ahh.Time, ahh.Data)
title("\textbf{Output of Low Pass Filter}", 'Interpreter','latex')
xlabel("\textbf{Time (s)}", 'Interpreter','latex')
ylabel("\textbf{Magnitude}", 'Interpreter','latex')
xlim([1e-5 2e-5])
subplot(2, 1, 2)
plot(ahh.Time, ahh.Data)
title("\textbf{Output of Low Pass Filter (Zoomed)}", 'Interpreter','latex')
xlabel("\textbf{Time (s)}", 'Interpreter','latex')
ylabel("\textbf{Magnitude}", 'Interpreter','latex')
xlim([1e-5 1.1e-5])

