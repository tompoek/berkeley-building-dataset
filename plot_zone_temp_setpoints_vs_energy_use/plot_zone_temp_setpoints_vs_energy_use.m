%%
figure;
subplot(3,1,1);
title('South Wing (2F): Cooling Temp. Setpoint');
hold on;
ax1 = stairs(zone_temp_sp_daily.date, zone_temp_sp_daily.zone_018_cooling_sp, 'Color', '#0072BD', 'LineWidth', 0.5, 'LineStyle', '--');
ax2 = stairs(zone_temp_sp_daily.date, zone_temp_sp_daily.zone_025_cooling_sp, 'Color', '#D95319', 'LineWidth', 0.5, 'LineStyle', '--');
ax3 = stairs(zone_temp_sp_daily.date, zone_temp_sp_daily.zone_026_cooling_sp, 'Color', '#EDB120', 'LineWidth', 0.5, 'LineStyle', '--');
ax5 = stairs(zone_temp_sp_daily.date, zone_temp_sp_daily.zone_016_cooling_sp, 'Color', '#0072BD', 'LineWidth', 0.5, 'LineStyle', '--');
ax6 = stairs(zone_temp_sp_daily.date, zone_temp_sp_daily.zone_017_cooling_sp, 'Color', '#D95319', 'LineWidth', 0.5, 'LineStyle', '--');
ax7 = stairs(zone_temp_sp_daily.date, zone_temp_sp_daily.zone_021_cooling_sp, 'Color', '#EDB120', 'LineWidth', 0.5, 'LineStyle', '--');
ax9 = stairs(zone_temp_sp_daily.date, zone_temp_sp_daily.zone_023_cooling_sp, 'Color', '#77AC30', 'LineWidth', 0.5, 'LineStyle', '--');
ax10 = stairs(zone_temp_sp_daily.date, zone_temp_sp_daily.zone_024_cooling_sp, 'Color', '#A2142F', 'LineWidth', 0.5, 'LineStyle', '--');
legend('Zone 018', 'Zone 025', 'Zone 026', ...
       'Zone 016', 'Zone 017', 'Zone 021', 'Zone 023', 'Zone 024');
ylabel('Temp (°C)');
grid on;

subplot(3,1,2);
title('South Wing (GF): Cooling Temp. Setpoint');
hold on;
ax11 = stairs(zone_temp_sp_daily.date, zone_temp_sp_daily.zone_048_cooling_sp, 'Color', '#0072BD', 'LineWidth', 0.5, 'LineStyle', '--');
ax12 = stairs(zone_temp_sp_daily.date, zone_temp_sp_daily.zone_055_cooling_sp, 'Color', '#D95319', 'LineWidth', 0.5, 'LineStyle', '--');
ax13 = stairs(zone_temp_sp_daily.date, zone_temp_sp_daily.zone_056_cooling_sp, 'Color', '#EDB120', 'LineWidth', 0.5, 'LineStyle', '--');
ax14 = stairs(zone_temp_sp_daily.date, zone_temp_sp_daily.zone_061_cooling_sp, 'Color', '#7E2F8E', 'LineWidth', 0.5, 'LineStyle', '--');
ax15 = stairs(zone_temp_sp_daily.date, zone_temp_sp_daily.zone_046_cooling_sp, 'Color', '#0072BD', 'LineWidth', 0.5, 'LineStyle', '--');
ax16 = stairs(zone_temp_sp_daily.date, zone_temp_sp_daily.zone_047_cooling_sp, 'Color', '#D95319', 'LineWidth', 0.5, 'LineStyle', '--');
ax17 = stairs(zone_temp_sp_daily.date, zone_temp_sp_daily.zone_051_cooling_sp, 'Color', '#EDB120', 'LineWidth', 0.5, 'LineStyle', '--');
ax19 = stairs(zone_temp_sp_daily.date, zone_temp_sp_daily.zone_053_cooling_sp, 'Color', '#77AC30', 'LineWidth', 0.5, 'LineStyle', '--');
ax20 = stairs(zone_temp_sp_daily.date, zone_temp_sp_daily.zone_054_cooling_sp, 'Color', '#A2142F', 'LineWidth', 0.5, 'LineStyle', '--');
legend('Zone 048', 'Zone 055', 'Zone 056', 'Zone 061', ...
       'Zone 046', 'Zone 047', 'Zone 051', 'Zone 053', 'Zone 054');
ylabel('Temp (°C)');
grid on;

subplot(3,1,3);
title('South Wing: HVAC Power');
hold on;
ax0 = stairs(ele_daily.date, ele_daily.hvac_S, 'Color', '#A2142F', 'LineWidth', 0.5);
legend('HVAC Power');
ylabel('Power (kW)');
xlabel('date');
grid on;

linkaxes([ax1.Parent,ax2.Parent,ax3.Parent,...
          ax5.Parent,ax6.Parent,ax7.Parent,ax9.Parent,ax10.Parent,...
          ax11.Parent,ax12.Parent,ax13.Parent,ax14.Parent,...
          ax15.Parent,ax16.Parent,ax17.Parent,ax19.Parent,ax20.Parent,...
          ax0.Parent], 'x');

%%
figure;
subplot(3,1,1);
title('South Wing (2F): Heating Temp. Setpoint');
hold on;
ax1 = stairs(zone_temp_sp_daily.date, zone_temp_sp_daily.zone_018_heating_sp, 'Color', '#0072BD', 'LineWidth', 0.5, 'LineStyle', '--');
ax2 = stairs(zone_temp_sp_daily.date, zone_temp_sp_daily.zone_025_heating_sp, 'Color', '#D95319', 'LineWidth', 0.5, 'LineStyle', '--');
ax3 = stairs(zone_temp_sp_daily.date, zone_temp_sp_daily.zone_026_heating_sp, 'Color', '#EDB120', 'LineWidth', 0.5, 'LineStyle', '--');
ax5 = stairs(zone_temp_sp_daily.date, zone_temp_sp_daily.zone_016_heating_sp, 'Color', '#0072BD', 'LineWidth', 0.5, 'LineStyle', '--');
ax6 = stairs(zone_temp_sp_daily.date, zone_temp_sp_daily.zone_017_heating_sp, 'Color', '#D95319', 'LineWidth', 0.5, 'LineStyle', '--');
ax7 = stairs(zone_temp_sp_daily.date, zone_temp_sp_daily.zone_021_heating_sp, 'Color', '#EDB120', 'LineWidth', 0.5, 'LineStyle', '--');
ax9 = stairs(zone_temp_sp_daily.date, zone_temp_sp_daily.zone_023_heating_sp, 'Color', '#77AC30', 'LineWidth', 0.5, 'LineStyle', '--');
ax10 = stairs(zone_temp_sp_daily.date, zone_temp_sp_daily.zone_024_heating_sp, 'Color', '#A2142F', 'LineWidth', 0.5, 'LineStyle', '--');
legend('Zone 018', 'Zone 025', 'Zone 026', ...
       'Zone 016', 'Zone 017', 'Zone 021', 'Zone 023', 'Zone 024');
ylabel('Temp (°C)');
grid on;

subplot(3,1,2);
title('South Wing (GF): Heating Temp. Setpoint');
hold on;
ax11 = stairs(zone_temp_sp_daily.date, zone_temp_sp_daily.zone_048_heating_sp, 'Color', '#0072BD', 'LineWidth', 0.5, 'LineStyle', '--');
ax12 = stairs(zone_temp_sp_daily.date, zone_temp_sp_daily.zone_055_heating_sp, 'Color', '#D95319', 'LineWidth', 0.5, 'LineStyle', '--');
ax13 = stairs(zone_temp_sp_daily.date, zone_temp_sp_daily.zone_056_heating_sp, 'Color', '#EDB120', 'LineWidth', 0.5, 'LineStyle', '--');
ax14 = stairs(zone_temp_sp_daily.date, zone_temp_sp_daily.zone_061_heating_sp, 'Color', '#7E2F8E', 'LineWidth', 0.5, 'LineStyle', '--');
ax15 = stairs(zone_temp_sp_daily.date, zone_temp_sp_daily.zone_046_heating_sp, 'Color', '#0072BD', 'LineWidth', 0.5, 'LineStyle', '--');
ax16 = stairs(zone_temp_sp_daily.date, zone_temp_sp_daily.zone_047_heating_sp, 'Color', '#D95319', 'LineWidth', 0.5, 'LineStyle', '--');
ax17 = stairs(zone_temp_sp_daily.date, zone_temp_sp_daily.zone_051_heating_sp, 'Color', '#EDB120', 'LineWidth', 0.5, 'LineStyle', '--');
ax19 = stairs(zone_temp_sp_daily.date, zone_temp_sp_daily.zone_053_heating_sp, 'Color', '#77AC30', 'LineWidth', 0.5, 'LineStyle', '--');
ax20 = stairs(zone_temp_sp_daily.date, zone_temp_sp_daily.zone_054_heating_sp, 'Color', '#A2142F', 'LineWidth', 0.5, 'LineStyle', '--');
legend('Zone 048', 'Zone 055', 'Zone 056', 'Zone 061', ...
       'Zone 046', 'Zone 047', 'Zone 051', 'Zone 053', 'Zone 054');
ylabel('Temp (°C)');
grid on;

subplot(3,1,3);
title('South Wing: HVAC Power');
hold on;
ax0 = stairs(ele_daily.date, ele_daily.hvac_S, 'Color', '#A2142F', 'LineWidth', 0.5);
legend('HVAC Power');
ylabel('Power (kW)');
xlabel('date');
grid on;

linkaxes([ax1.Parent,ax2.Parent,ax3.Parent,...
          ax5.Parent,ax6.Parent,ax7.Parent,ax9.Parent,ax10.Parent,...
          ax11.Parent,ax12.Parent,ax13.Parent,ax14.Parent,...
          ax15.Parent,ax16.Parent,ax17.Parent,ax19.Parent,ax20.Parent,...
          ax0.Parent], 'x');

%%
figure;
subplot(3,1,1);
title('North Wing (2F): Cooling Temp. Setpoint');
hold on;
ax1 = stairs(zone_temp_sp_daily.date, zone_temp_sp_daily.zone_036_cooling_sp, 'Color', '#0072BD', 'LineWidth', 0.5, 'LineStyle', '--');
ax2 = stairs(zone_temp_sp_daily.date, zone_temp_sp_daily.zone_037_cooling_sp, 'Color', '#D95319', 'LineWidth', 0.5, 'LineStyle', '--');
ax3 = stairs(zone_temp_sp_daily.date, zone_temp_sp_daily.zone_038_cooling_sp, 'Color', '#EDB120', 'LineWidth', 0.5, 'LineStyle', '--');
ax4 = stairs(zone_temp_sp_daily.date, zone_temp_sp_daily.zone_039_cooling_sp, 'Color', '#FF0000', 'LineWidth', 0.5, 'LineStyle', '--');
ax5 = stairs(zone_temp_sp_daily.date, zone_temp_sp_daily.zone_041_cooling_sp, 'Color', '#00FF00', 'LineWidth', 0.5, 'LineStyle', '--');
ax6 = stairs(zone_temp_sp_daily.date, zone_temp_sp_daily.zone_019_cooling_sp, 'Color', '#7E2F8E', 'LineWidth', 0.5, 'LineStyle', '--');
ax7 = stairs(zone_temp_sp_daily.date, zone_temp_sp_daily.zone_027_cooling_sp, 'Color', '#D95319', 'LineWidth', 0.5, 'LineStyle', '--');
ax8 = stairs(zone_temp_sp_daily.date, zone_temp_sp_daily.zone_030_cooling_sp, 'Color', '#FF00FF', 'LineWidth', 0.5, 'LineStyle', '--');
ax9 = stairs(zone_temp_sp_daily.date, zone_temp_sp_daily.zone_032_cooling_sp, 'Color', '#77AC30', 'LineWidth', 0.5, 'LineStyle', '--');
ax10 = stairs(zone_temp_sp_daily.date, zone_temp_sp_daily.zone_035_cooling_sp, 'Color', '#A2142F', 'LineWidth', 0.5, 'LineStyle', '--');
legend('Zone 036', 'Zone 037', 'Zone 038', 'Zone 039', 'Zone 041', ...
       'Zone 019', 'Zone 027', 'Zone 030', 'Zone 032', 'Zone 035');
ylabel('Temp (°C)');
grid on;

subplot(3,1,2);
title('North Wing (GF): Cooling Temp. Setpoint');
hold on;
ax11 = stairs(zone_temp_sp_daily.date, zone_temp_sp_daily.zone_064_cooling_sp, 'Color', '#0072BD', 'LineWidth', 0.5, 'LineStyle', '--');
ax12 = stairs(zone_temp_sp_daily.date, zone_temp_sp_daily.zone_065_cooling_sp, 'Color', '#D95319', 'LineWidth', 0.5, 'LineStyle', '--');
ax13 = stairs(zone_temp_sp_daily.date, zone_temp_sp_daily.zone_066_cooling_sp, 'Color', '#EDB120', 'LineWidth', 0.5, 'LineStyle', '--');
ax14 = stairs(zone_temp_sp_daily.date, zone_temp_sp_daily.zone_067_cooling_sp, 'Color', '#FF0000', 'LineWidth', 0.5, 'LineStyle', '--');
ax15 = stairs(zone_temp_sp_daily.date, zone_temp_sp_daily.zone_069_cooling_sp, 'Color', '#00FF00', 'LineWidth', 0.5, 'LineStyle', '--');
ax16 = stairs(zone_temp_sp_daily.date, zone_temp_sp_daily.zone_049_cooling_sp, 'Color', '#7E2F8E', 'LineWidth', 0.5, 'LineStyle', '--');
ax17 = stairs(zone_temp_sp_daily.date, zone_temp_sp_daily.zone_057_cooling_sp, 'Color', '#D95319', 'LineWidth', 0.5, 'LineStyle', '--');
ax18 = stairs(zone_temp_sp_daily.date, zone_temp_sp_daily.zone_059_cooling_sp, 'Color', '#FF00FF', 'LineWidth', 0.5, 'LineStyle', '--');
ax19 = stairs(zone_temp_sp_daily.date, zone_temp_sp_daily.zone_062_cooling_sp, 'Color', '#77AC30', 'LineWidth', 0.5, 'LineStyle', '--');
ax20 = stairs(zone_temp_sp_daily.date, zone_temp_sp_daily.zone_063_cooling_sp, 'Color', '#A2142F', 'LineWidth', 0.5, 'LineStyle', '--');
legend('Zone 064', 'Zone 065', 'Zone 066', 'Zone 067', 'Zone 069', ...
       'Zone 049', 'Zone 057', 'Zone 059', 'Zone 062', 'Zone 063');
ylabel('Temp (°C)');
grid on;

subplot(3,1,3);
title('North Wing: HVAC Power');
hold on;
ax0 = stairs(ele_daily.date, ele_daily.hvac_N, 'Color', '#A2142F', 'LineWidth', 0.5);
legend('HVAC Power');
ylabel('Power (kW)');
xlabel('date');
grid on;

linkaxes([ax1.Parent,ax2.Parent,ax3.Parent,ax4.Parent,ax5.Parent,...
          ax6.Parent,ax7.Parent,ax8.Parent,ax9.Parent,ax10.Parent,...
          ax11.Parent,ax12.Parent,ax13.Parent,ax14.Parent,ax15.Parent,...
          ax16.Parent,ax17.Parent,ax18.Parent,ax19.Parent,ax20.Parent,...
          ax0.Parent], 'x');

%%
figure;
subplot(3,1,1);
title('North Wing (2F): Heating Temp. Setpoint');
hold on;
ax1 = stairs(zone_temp_sp_daily.date, zone_temp_sp_daily.zone_036_heating_sp, 'Color', '#0072BD', 'LineWidth', 0.5, 'LineStyle', '--');
ax2 = stairs(zone_temp_sp_daily.date, zone_temp_sp_daily.zone_037_heating_sp, 'Color', '#D95319', 'LineWidth', 0.5, 'LineStyle', '--');
ax3 = stairs(zone_temp_sp_daily.date, zone_temp_sp_daily.zone_038_heating_sp, 'Color', '#EDB120', 'LineWidth', 0.5, 'LineStyle', '--');
ax4 = stairs(zone_temp_sp_daily.date, zone_temp_sp_daily.zone_039_heating_sp, 'Color', '#FF0000', 'LineWidth', 0.5, 'LineStyle', '--');
ax5 = stairs(zone_temp_sp_daily.date, zone_temp_sp_daily.zone_041_heating_sp, 'Color', '#00FF00', 'LineWidth', 0.5, 'LineStyle', '--');
ax6 = stairs(zone_temp_sp_daily.date, zone_temp_sp_daily.zone_019_heating_sp, 'Color', '#7E2F8E', 'LineWidth', 0.5, 'LineStyle', '--');
ax7 = stairs(zone_temp_sp_daily.date, zone_temp_sp_daily.zone_027_heating_sp, 'Color', '#D95319', 'LineWidth', 0.5, 'LineStyle', '--');
ax8 = stairs(zone_temp_sp_daily.date, zone_temp_sp_daily.zone_030_heating_sp, 'Color', '#FF00FF', 'LineWidth', 0.5, 'LineStyle', '--');
ax9 = stairs(zone_temp_sp_daily.date, zone_temp_sp_daily.zone_032_heating_sp, 'Color', '#77AC30', 'LineWidth', 0.5, 'LineStyle', '--');
ax10 = stairs(zone_temp_sp_daily.date, zone_temp_sp_daily.zone_035_heating_sp, 'Color', '#A2142F', 'LineWidth', 0.5, 'LineStyle', '--');
legend('Zone 036', 'Zone 037', 'Zone 038', 'Zone 039', 'Zone 041', ...
       'Zone 019', 'Zone 027', 'Zone 030', 'Zone 032', 'Zone 035');
ylabel('Temp (°C)');
grid on;

subplot(3,1,2);
title('North Wing (GF): Heating Temp. Setpoint');
hold on;
ax11 = stairs(zone_temp_sp_daily.date, zone_temp_sp_daily.zone_064_heating_sp, 'Color', '#0072BD', 'LineWidth', 0.5, 'LineStyle', '--');
ax12 = stairs(zone_temp_sp_daily.date, zone_temp_sp_daily.zone_065_heating_sp, 'Color', '#D95319', 'LineWidth', 0.5, 'LineStyle', '--');
ax13 = stairs(zone_temp_sp_daily.date, zone_temp_sp_daily.zone_066_heating_sp, 'Color', '#EDB120', 'LineWidth', 0.5, 'LineStyle', '--');
ax14 = stairs(zone_temp_sp_daily.date, zone_temp_sp_daily.zone_067_heating_sp, 'Color', '#FF0000', 'LineWidth', 0.5, 'LineStyle', '--');
ax15 = stairs(zone_temp_sp_daily.date, zone_temp_sp_daily.zone_069_heating_sp, 'Color', '#00FF00', 'LineWidth', 0.5, 'LineStyle', '--');
ax16 = stairs(zone_temp_sp_daily.date, zone_temp_sp_daily.zone_049_heating_sp, 'Color', '#7E2F8E', 'LineWidth', 0.5, 'LineStyle', '--');
ax17 = stairs(zone_temp_sp_daily.date, zone_temp_sp_daily.zone_057_heating_sp, 'Color', '#D95319', 'LineWidth', 0.5, 'LineStyle', '--');
ax18 = stairs(zone_temp_sp_daily.date, zone_temp_sp_daily.zone_059_heating_sp, 'Color', '#FF00FF', 'LineWidth', 0.5, 'LineStyle', '--');
ax19 = stairs(zone_temp_sp_daily.date, zone_temp_sp_daily.zone_062_heating_sp, 'Color', '#77AC30', 'LineWidth', 0.5, 'LineStyle', '--');
ax20 = stairs(zone_temp_sp_daily.date, zone_temp_sp_daily.zone_063_heating_sp, 'Color', '#A2142F', 'LineWidth', 0.5, 'LineStyle', '--');
legend('Zone 064', 'Zone 065', 'Zone 066', 'Zone 067', 'Zone 069', ...
       'Zone 049', 'Zone 057', 'Zone 059', 'Zone 062', 'Zone 063');
ylabel('Temp (°C)');
grid on;

subplot(3,1,3);
title('North Wing: HVAC Power');
hold on;
ax0 = stairs(ele_daily.date, ele_daily.hvac_N, 'Color', '#A2142F', 'LineWidth', 0.5);
legend('HVAC Power');
ylabel('Power (kW)');
xlabel('date');
grid on;

linkaxes([ax1.Parent,ax2.Parent,ax3.Parent,ax4.Parent,ax5.Parent,...
          ax6.Parent,ax7.Parent,ax8.Parent,ax9.Parent,ax10.Parent,...
          ax11.Parent,ax12.Parent,ax13.Parent,ax14.Parent,ax15.Parent,...
          ax16.Parent,ax17.Parent,ax18.Parent,ax19.Parent,ax20.Parent,...
          ax0.Parent], 'x');

%%