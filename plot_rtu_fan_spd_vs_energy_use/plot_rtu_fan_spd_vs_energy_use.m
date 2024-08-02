%%
figure;

subplot(2,1,1);
title('North Wing: [RTU Supply Air Fan Speed] vs [HVAC Energy Use]');
hold on;
ax1 = stairs(rtu_fan_spd_daily.date, rtu_fan_spd_daily.rtu_fan_spd_north, 'Color', '#7E2F8E', 'LineWidth', 0.5, 'LineStyle', '-');
legend('RTU-1&2 Average');
ylabel('Fan Speed (%)');
grid on;

subplot(2,1,2);
ax0 = stairs(ele_daily.date, ele_daily.hvac_N, 'Color', '#A2142F', 'LineWidth', 0.4);
legend('HVAC Power');
ylabel('Power (kW)');
xlabel('date');
grid on;

linkaxes([ax1.Parent,ax0.Parent], 'x');

%%
figure;

subplot(2,1,1);
title('South Wing: [RTU Supply Air Fan Speed] vs [HVAC Energy Use]');
hold on;
ax1 = stairs(rtu_fan_spd_daily.date, rtu_fan_spd_daily.rtu_fan_spd_south, 'Color', '#7E2F8E', 'LineWidth', 0.5, 'LineStyle', '-');
legend('RTU-3&4 Average');
ylabel('Fan Speed (%)');
grid on;

subplot(2,1,2);
ax0 = stairs(ele_daily.date, ele_daily.hvac_S, 'Color', '#A2142F', 'LineWidth', 0.4);
legend('HVAC Power');
ylabel('Power (kW)');
xlabel('date');
grid on;

linkaxes([ax1.Parent,ax0.Parent], 'x');

%%
figure;

subplot(2,1,1);
title('South Wing: [RTU Supply Air Fan Speed] vs [HVAC Energy Use]');
hold on;
ax1 = stairs(rtu_fan_spd_daily.date, rtu_fan_spd_daily.rtu_fan_spd_south, 'Color', '#7E2F8E', 'LineWidth', 0.5, 'LineStyle', '-');
legend('RTU-3&4 Average');
ylabel('Fan Speed (%)');
grid on;

subplot(2,1,2);
ax0 = stairs(ele_daily.date, ele_daily.hvac_S, 'Color', '#A2142F', 'LineWidth', 0.4);
legend('HVAC Power');
ylabel('Power (kW)');
xlabel('date');
grid on;

linkaxes([ax1.Parent,ax0.Parent], 'x');

%%
figure;
scatter(rtu_fan_spd_daily.rtu_fan_spd_north,ele_daily.hvac_N,...
    'MarkerFaceColor','blue','MarkerEdgeColor','blue','MarkerFaceAlpha',.2,'MarkerEdgeAlpha',.2);
xlabel('Daily Average Fan Speed');
ylabel('Daily Average Energy Use');
title('HVAC Daily Scatter Plot');
grid on;
hold on;
scatter(rtu_fan_spd_daily.rtu_fan_spd_south,ele_daily.hvac_S,...
    'MarkerFaceColor','red','MarkerEdgeColor','red','MarkerFaceAlpha',.2,'MarkerEdgeAlpha',.2);
legend('North wing','South wing');

%%
figure;
histogram2(rtu_fan_spd_daily.rtu_fan_spd_north, ele_daily.hvac_N, 'DisplayStyle', 'tile', 'ShowEmptyBins', 'on');
colorbar;
grid on;
xlabel('Daily Average Fan Speed in %');
ylabel('Daily Average Energy Use in kW');
title('North wing: HVAC Daily Heatmap RTU Fan Speed vs HVAC Power');
xlim([40,100]);

%%
figure;
histogram2(rtu_fan_spd_daily.rtu_fan_spd_south, ele_daily.hvac_S, 'DisplayStyle', 'tile', 'ShowEmptyBins', 'on');
colorbar;
grid on;
xlabel('Daily Average Fan Speed in %');
ylabel('Daily Average Energy Use in kW');
title('South wing: HVAC Daily Heatmap RTU Fan Speed vs HVAC Power');
xlim([40,100]);

%%