close all; clear all;
bitrate = [1;2;4;8;16];
load census;

tr = csvread('matlab_WSPSNR_coaster_TR.csv');

figure;
%TR
[t, gof] = fit(bitrate, tr, 'poly2');
plot(t, bitrate, tr, 'o');

axis([0 18 30 50]);
set(gca, 'xtick', [0:4:20], 'ytick', [30:4:50]);
xlabel('Bitrate (Mbps)');
ylabel('SPSNR-NN');
legend('Sample', 'Fitted Curve', 'Location', 'SouthEast');
hold on;

% for 3-column figures
set(gca,'FontSize',20)
set(gca, 'FontName', 'Times New Roman');
set(gca,'TickDir','out')
set(get(gca, 'xlabel'), 'interpreter', 'latex');
set(get(gca, 'xlabel'), 'FontName', 'Times New Roman');
set(get(gca, 'xlabel'), 'FontSize', 20);
set(get(gca, 'ylabel'), 'interpreter', 'latex');
set(get(gca, 'ylabel'), 'FontName', 'Times New Roman');
set(get(gca, 'ylabel'), 'FontSize', 20);
set(legend(), 'interpreter', 'latex');
set(legend(), 'FontName', 'Times New Roman');
set(legend(), 'FontSize', 20);
set(gcf, 'WindowStyle', 'normal');
set(gca, 'Unit', 'inches');
set(gca, 'Position', [.65 .65 4.6 3.125]);
set(gcf, 'Unit', 'inches');
set(gcf, 'Position', [0.25 2.5 5.5 4.05]);

 % for 3-column figures
set(gca,'FontSize',20)
set(gca, 'FontName', 'Times New Roman');
set(gca,'TickDir','out')
set(get(gca, 'xlabel'), 'interpreter', 'latex');
set(get(gca, 'xlabel'), 'FontName', 'Times New Roman');
set(get(gca, 'xlabel'), 'FontSize', 20);
set(get(gca, 'ylabel'), 'interpreter', 'latex');
set(get(gca, 'ylabel'), 'FontName', 'Times New Roman');
set(get(gca, 'ylabel'), 'FontSize', 20);
set(legend(), 'interpreter', 'latex');
set(legend(), 'FontName', 'Times New Roman');
set(legend(), 'FontSize', 20);
set(gcf, 'WindowStyle', 'normal');
set(gca, 'Unit', 'inches');
set(gca, 'Position', [.65 .65 4.6 3.125]);
set(gcf, 'Unit', 'inches');
set(gcf, 'Position', [0.25 2.5 5.5 4.05]);