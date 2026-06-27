clear; clc; close all;

% Transfer function:
% 8*(s/0.1 + 1) / (s*(s*s + s + 1)*(s/2 + 1))
num = 8 * [10 1];
den = conv([1 0], conv([1 1 1], [0.5 1]));

sys = tf(num, den);

figure('Color', 'w', 'Position', [100 100 900 700]);
bode(sys);
grid on;
title('Bode Plot of 8(s/0.1+1) / (s(s^2+s+1)(s/2+1))');

exportgraphics(gcf, 'bode_plot.png', 'Resolution', 300);
savefig(gcf, 'bode_plot.fig');