figure('Name','south_2f_temp_vs_occ');

subplot(4,1,1);
title('South Wing: Temperature @Wall-mounted Sensors');
hold on;
ax1 = stairs(zone_temp_exterior.date, zone_temp_exterior.zone_018_temp, 'Color', '#0072BD', 'LineWidth', 0.5, 'LineStyle', ':');
ax2 = stairs(zone_temp_exterior.date, zone_temp_exterior.zone_025_temp, 'Color', '#D95319', 'LineWidth', 0.5, 'LineStyle', ':');
ax3 = stairs(zone_temp_exterior.date, zone_temp_exterior.zone_026_temp, 'Color', '#EDB120', 'LineWidth', 0.5, 'LineStyle', ':');
ax4 = stairs(zone_temp_exterior.date, zone_temp_exterior.zone_045_temp, 'Color', '#7E2F8E', 'LineWidth', 0.5, 'LineStyle', ':');
legend('Zone 018', 'Zone 025', 'Zone 026', 'Zone 045');
ylabel('Temp (°C)');
grid on;

subplot(4,1,2);
title('South Wing: Temperature @Wall-mounted Sensors');
hold on;
ax5 = stairs(zone_temp_exterior.date, zone_temp_exterior.zone_016_temp, 'Color', '#0072BD', 'LineWidth', 0.5, 'LineStyle', ':');
ax6 = stairs(zone_temp_exterior.date, zone_temp_exterior.zone_017_temp, 'Color', '#D95319', 'LineWidth', 0.5, 'LineStyle', ':');
ax7 = stairs(zone_temp_exterior.date, zone_temp_exterior.zone_021_temp, 'Color', '#EDB120', 'LineWidth', 0.5, 'LineStyle', ':');
ax8 = stairs(zone_temp_exterior.date, zone_temp_exterior.zone_022_temp, 'Color', '#7E2F8E', 'LineWidth', 0.5, 'LineStyle', ':');
ax9 = stairs(zone_temp_exterior.date, zone_temp_exterior.zone_023_temp, 'Color', '#77AC30', 'LineWidth', 0.5, 'LineStyle', ':');
ax10 = stairs(zone_temp_exterior.date, zone_temp_exterior.zone_024_temp, 'Color', '#A2142F', 'LineWidth', 0.5, 'LineStyle', ':');
legend('Zone 016', 'Zone 017', 'Zone 021', 'Zone 022', 'Zone 023', 'Zone 024');
ylabel('Temp (°C)');
grid on;

subplot(4,1,3);
title('South Wing: Temperature @Workstation Sensors');
hold on;
ax11 = stairs(zone_temp_interior.date, zone_temp_interior.cerc_templogger_1, 'Color', '#FF0000', 'LineWidth', 0.5, 'LineStyle', ':');
ax12 = stairs(zone_temp_interior.date, zone_temp_interior.cerc_templogger_2, 'Color', '#00FF00', 'LineWidth', 0.5, 'LineStyle', ':');
ax13 = stairs(zone_temp_interior.date, zone_temp_interior.cerc_templogger_3, 'Color', '#0000FF', 'LineWidth', 0.5, 'LineStyle', ':');
legend('Logger 1', 'Logger 2', 'Logger 3');
ylabel('Temp (°C)');
grid on;

subplot(4,1,4);
title('South Wing: Number of Occupants');
hold on;
ax0 = stairs(occ.date, occ.occ_fourth_south, 'Color', 'black', 'LineWidth', 0.5);
legend('Second Floor');
ylabel('Count');
xlabel('date');
grid on;

linkaxes([ax1.Parent,ax2.Parent,ax3.Parent,ax4.Parent,...
          ax5.Parent,ax6.Parent,ax7.Parent,ax8.Parent,ax9.Parent,ax10.Parent,...
          ax11.Parent,ax12.Parent,ax13.Parent,...
          ax0.Parent], 'x');
