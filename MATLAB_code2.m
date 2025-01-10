% Read data from an Excel file, selecting data from columns A to I and rows 4 to 1040001.
data = readmatrix('New Microsoft Excel Worksheet (2).xlsx', 'Range', 'A1:I480000');

k = zeros(4800,2);
j = 1;

% Loop through the 'data' matrix, starting from row 1 to 1040000, with a step size of 1000.
for i=1:100:480000
    
    k(j,1) = data(i,9);
    k(j,2) = data(i,5);
    j = j+1;
end

figure;
hold on
plot(k(441:701, 1), k(441:701, 2), '-', 'LineWidth', 1);
plot(k(701:961, 1), k(701:961, 2), '-', 'LineWidth', 1);
plot(k(1641:1901, 1), k(1641:1901, 2), '-', 'LineWidth', 1);
plot(k(1901:2161, 1), k(1901:2161, 2), '-', 'LineWidth', 1);
plot(k(2641:2901, 1), k(2641:2901, 2), '-', 'LineWidth', 1);
plot(k(2901:3161, 1), k(2901:3161, 2), '-', 'LineWidth', 1);
plot(k(3441:3701, 1), k(3441:3701, 2), '-', 'LineWidth', 1);
plot(k(3701:3961, 1), k(3701:3961, 2), '-', 'LineWidth', 1);
plot(k(4041:4301, 1), k(4041:4301, 2), '-', 'LineWidth', 1);
plot(k(4301:4561, 1), k(4301:4561, 2), '-', 'LineWidth', 1);

xlabel('Packing fraction');         % Label for the x-axis
ylabel('Pressure');      % Label for the y-axis
title('Pressure vs Packing fraction'); % Title of the plot
grid on;                 % Turn on the grid for better visualization