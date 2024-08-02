%%
figure;

subplot(2,1,1);
title('North Wing Daily Average: [Temp.Diff. RTU AC Setpoint - Outdoor] vs [HVAC Energy Use]');
hold on;
ax1 = stairs(rtu_sa_t_sp_daily.date, rtu_sa_t_sp_daily.rtu_north, 'Color', '#0072BD', 'LineWidth', 0.5);
ax2 = stairs(site_weather_daily.date, site_weather_daily.air_temp, 'Color', '#D95319', 'LineWidth', 0.5);
legend('RTU Setpoint', 'Outdoor');
ylabel('Temperature (°C)');
grid on;

subplot(2,1,2);
ax0 = stairs(ele_daily.date, ele_daily.hvac_N, 'Color', '#A2142F', 'LineWidth', 0.5);
legend('HVAC Power');
ylabel('Power (kW)');
xlabel('date');
grid on;

linkaxes([ax1.Parent,ax2.Parent,ax0.Parent], 'x');

%%
figure;

subplot(2,1,1);
title('South Wing Daily Average: [Temp.Diff. RTU AC Setpoint - Outdoor] vs [HVAC Energy Use]');
hold on;
ax1 = stairs(rtu_sa_t_sp_daily.date, rtu_sa_t_sp_daily.rtu_south, 'Color', '#0072BD', 'LineWidth', 0.5);
ax2 = stairs(site_weather_daily.date, site_weather_daily.air_temp, 'Color', '#D95319', 'LineWidth', 0.5);
legend('RTU Setpoint', 'Outdoor');
ylabel('Temperature (°C)');
grid on;

subplot(2,1,2);
ax0 = stairs(ele_daily.date, ele_daily.hvac_S, 'Color', '#A2142F', 'LineWidth', 0.5);
legend('HVAC Power');
ylabel('Power (kW)');
xlabel('date');
grid on;

linkaxes([ax1.Parent,ax2.Parent,ax0.Parent], 'x');

%%
figure;
scatter(abs(rtu_sa_t_sp_daily.rtu_north-site_weather_daily.air_temp),ele_daily.hvac_N,...
    'MarkerFaceColor','blue','MarkerEdgeColor','blue','MarkerFaceAlpha',.2,'MarkerEdgeAlpha',.2);
xlabel('Daily Average Temp.Diff (RTU Setpoint - Outdoor)');
ylabel('Daily Average Energy Use');
title('HVAC Daily Scatter Plot: Temp.Diff (RTU Setpoint - Outdoor) vs Energy Use');
grid on;
hold on;
scatter(abs(rtu_sa_t_sp_daily.rtu_south-site_weather_daily.air_temp),ele_daily.hvac_S,...
    'MarkerFaceColor','red','MarkerEdgeColor','red','MarkerFaceAlpha',.2,'MarkerEdgeAlpha',.2);
legend('North wing','South wing');

%%
figure;
histogram2(abs(rtu_sa_t_sp_daily.rtu_north-site_weather_daily.air_temp), ele_daily.hvac_N, 'DisplayStyle', 'tile', 'ShowEmptyBins', 'on');
colorbar;
grid on;
xlabel('Daily Average Temp.Diff (RTU Setpoint - Outdoor) in °C');
ylabel('Daily Average Energy Use in kW');
title('North wing: HVAC Daily Heatmap: Temp.Diff (RTU Setpoint - Outdoor) vs Energy Use');

%%
figure;
histogram2(abs(rtu_sa_t_sp_daily.rtu_south-site_weather_daily.air_temp), ele_daily.hvac_S, 'DisplayStyle', 'tile', 'ShowEmptyBins', 'on');
colorbar;
grid on;
xlabel('Daily Average Temp.Diff (RTU Setpoint - Outdoor) in °C');
ylabel('Daily Average Energy Use in kW');
title('South wing: HVAC Daily Heatmap: Temp.Diff (RTU Setpoint - Outdoor) vs Energy Use');

%%