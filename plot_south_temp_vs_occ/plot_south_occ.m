figure;

title('South Wing: Number of Occupants');
hold on;
stairs(occ.date, occ.occ_fourth_south, 'Color', '#000000', 'LineWidth', 0.5, 'LineStyle', ':');
stairs(occ.date, occ.occ_third_south, 'Color', '#AAAAAA', 'LineWidth', 0.5, 'LineStyle', '-');
legend('Second Floor','Ground Floor');
ylabel('Count');
xlabel('date');
grid on;
