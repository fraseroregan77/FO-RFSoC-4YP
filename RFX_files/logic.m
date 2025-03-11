clc; clear; close all;

% Define time steps where transitions occur (in ns)
t = [0 10 20 30 40 50 60 70 80 90 100 110 120 130]; 

% Define signals with correct stair-step transitions
clk   = [1 0 1 0 1 0 1 0 1 0 1 0 1 0]; % Clock toggles every cycle
data  = [0 0 0 1 1 0 0 0 1 1 0 0 0 0]; % Data updates on valid+ready
valid = [0 0 0 1 1 0 0 0 1 1 0 0 0 0]; % Valid pulses when data is sent
ready = [0 0 0 1 1 0 0 0 1 1 0 0 0 0]; % Ready synchronizes with valid

% Create figure
figure;
hold on;
grid on;
ylim([-1, 5]);
yticks([0 1 2 3 4]);
yticklabels({'ready', 'valid', 'data', 'clock', ''});
xlabel('Time (ns)');
title('AXI4 Handshake Timing Diagram');

% Plot signals
stairs(t, clk + 3, 'k', 'LineWidth', 2);   % Clock (black)
stairs(t, data + 2, 'g', 'LineWidth', 2);  % Data (green)
stairs(t, valid + 1, 'r', 'LineWidth', 2); % Valid (red)
stairs(t, ready, 'm', 'LineWidth', 2);     % Ready (purple)

% Corrected Handshake markers at valid-ready transitions
handshake_times = [40, 100]; 
for i = 1:length(handshake_times)
    xline(handshake_times(i), '--r', 'AXI4 Handshake', ...
          'LabelVerticalAlignment', 'bottom', ...
          'LabelHorizontalAlignment', 'left');
end

legend({'Clock', 'Data', 'Valid', 'Ready'}, 'Location', 'northeast');

hold off;

%%
clc; clear; close all;

% Define time steps where transitions occur (in ns)
t = [0 30 40 80 90 130]; % Data only updates at handshake

% Define clock signal (1-0 alternating every 10 ns)
clk_t = 0:10:130;
clk = mod(0:length(clk_t)-1, 2); % Alternating 1, 0

% Define valid and ready signals
valid = [0 0 1 1 0 0]; 
ready = [1 1 0 0 1 1];

% Define data values (only updates at handshake)
data = [0 1 0 2 0 0]; % Example pattern with smooth transitions

% Create figure
figure;
hold on;
grid on;

% Y-axis offsets for alignment
clk_offset = 3;
data_offset = 2;
valid_offset = 1;
ready_offset = 0;

% Plot clock signal
stairs(clk_t, clk + clk_offset, 'k', 'LineWidth', 2);

% Plot shaded data region
for i = 1:length(t)-1
    x_fill = [t(i) t(i+1) t(i+1) t(i)]; % Time region
    y_fill = [data(i) data(i) data(i+1) data(i+1)] + data_offset; % Data values
    fill(x_fill, y_fill, [0.8 0.8 0.8], 'EdgeColor', 'k'); % Gray fill
end

% Plot data signal
stairs(t, data + data_offset, 'g', 'LineWidth', 2);

% Plot valid and ready signals
stairs(t, valid + valid_offset, 'r', 'LineWidth', 2);
stairs(t, ready + ready_offset, 'm', 'LineWidth', 2);

% Add AXI4 handshake markers
handshake_times = [40, 90]; % Points where valid & ready are high
for i = 1:length(handshake_times)
    xline(handshake_times(i), '--r', 'AXI4 Handshake', ...
          'LabelVerticalAlignment', 'bottom', ...
          'LabelHorizontalAlignment', 'left');
end

% Labels and legend
yticks([0 1 2 3]);
yticklabels({'ready', 'valid', 'data', 'clock'});
xlabel('Time (ns)');
title('AXI4 Handshake Timing Diagram');
legend({'Clock', 'Data', 'Valid', 'Ready'}, 'Location', 'northeast');

hold off;
