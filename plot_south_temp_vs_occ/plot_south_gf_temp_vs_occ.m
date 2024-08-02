figure('Name','south_gf_temp_vs_occ');

subplot(4,1,1);
title('South Wing: Temperature @Wall-mounted Sensors');
hold on;
ax1 = stairs(zone_temp_exterior.date, zone_temp_exterior.zone_048_temp, 'Color', '#0072BD', 'LineWidth', 0.5, 'LineStyle', ':');
ax2 = stairs(zone_temp_exterior.date, zone_temp_exterior.zone_055_temp, 'Color', '#D95319', 'LineWidth', 0.5, 'LineStyle', ':');
ax3 = stairs(zone_temp_exterior.date, zone_temp_exterior.zone_056_temp, 'Color', '#EDB120', 'LineWidth', 0.5, 'LineStyle', ':');
ax4 = stairs(zone_temp_exterior.date, zone_temp_exterior.zone_061_temp, 'Color', '#7E2F8E', 'LineWidth', 0.5, 'LineStyle', ':');
legend('Zone 048', 'Zone 055', 'Zone 056', 'Zone 061');
ylabel('Temp (°C)');
grid on;

subplot(4,1,2);
title('South Wing: Temperature @Wall-mounted Sensors');
hold on;
ax5 = stairs(zone_temp_exterior.date, zone_temp_exterior.zone_046_temp, 'Color', '#0072BD', 'LineWidth', 0.5, 'LineStyle', ':');
ax6 = stairs(zone_temp_exterior.date, zone_temp_exterior.zone_047_temp, 'Color', '#D95319', 'LineWidth', 0.5, 'LineStyle', ':');
ax7 = stairs(zone_temp_exterior.date, zone_temp_exterior.zone_051_temp, 'Color', '#EDB120', 'LineWidth', 0.5, 'LineStyle', ':');
ax8 = stairs(zone_temp_exterior.date, zone_temp_exterior.zone_052_temp, 'Color', '#7E2F8E', 'LineWidth', 0.5, 'LineStyle', ':');
ax9 = stairs(zone_temp_exterior.date, zone_temp_exterior.zone_053_temp, 'Color', '#77AC30', 'LineWidth', 0.5, 'LineStyle', ':');
ax10 = stairs(zone_temp_exterior.date, zone_temp_exterior.zone_054_temp, 'Color', '#A2142F', 'LineWidth', 0.5, 'LineStyle', ':');
legend('Zone 046', 'Zone 047', 'Zone 051', 'Zone 052', 'Zone 053', 'Zone 054');
ylabel('Temp (°C)');
grid on;

subplot(4,1,3);
title('South Wing: Temperature @Workstation Sensors');
hold on;
ax11 = stairs(zone_temp_interior.date, zone_temp_interior.cerc_templogger_9, 'Color', '#FF0000', 'LineWidth', 0.5, 'LineStyle', ':');
ax12 = stairs(zone_temp_interior.date, zone_temp_interior.cerc_templogger_10, 'Color', '#00FF00', 'LineWidth', 0.5, 'LineStyle', ':');
ax13 = stairs(zone_temp_interior.date, zone_temp_interior.cerc_templogger_11, 'Color', '#0000FF', 'LineWidth', 0.5, 'LineStyle', ':');
ax14 = stairs(zone_temp_interior.date, zone_temp_interior.cerc_templogger_12, 'Color', '#FF00FF', 'LineWidth', 0.5, 'LineStyle', ':');
legend('Logger 9', 'Logger 10', 'Logger 11', 'Logger 12');
ylabel('Temp (°C)');
grid on;

subplot(4,1,4);
title('South Wing: Number of Occupants');
hold on;
ax0 = stairs(occ.date, occ.occ_third_south, 'Color', 'black', 'LineWidth', 0.5);
legend('Ground Floor');
ylabel('Count');
xlabel('date');
grid on;

linkaxes([ax1.Parent,ax2.Parent,ax3.Parent,ax4.Parent,...
          ax5.Parent,ax6.Parent,ax7.Parent,ax8.Parent,ax9.Parent,ax10.Parent,...
          ax11.Parent,ax12.Parent,ax13.Parent,ax14.Parent,...
          ax0.Parent], 'x');
