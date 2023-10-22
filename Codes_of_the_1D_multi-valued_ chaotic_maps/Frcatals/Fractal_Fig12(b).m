% Fractal Plot for 1D-TWF Map
% This script generates a fractal plot illustrating the complex behavior of
% the 1D-TWF map across different
% initial conditions (x_0, y_0). The colormap 'hot' is used to represent
% iterations, creating a visually striking fractal pattern.

% Define parameters and grid for the plot
c = 1 - 0.3i;
res = 5000;
iter = 500;
xc = 1.8; yc = 0.28;
xoom = 8;
x0 = xc - 2.8 / xoom; x1 = xc + 2.8 / xoom;
y0 = yc - 2.8 / xoom; y1 = yc + 2.8 / xoom;
x = linspace(x0, x1, res);
y = linspace(y0, y1, res);
[xx, yy] = meshgrid(x, y);
z = xx + yy * 1i;
N = zeros(res, res);

C = c * ones(res, res); 

% Perform iterations to generate the fractal plot
for k = 1:iter
    z = (0.95 - 0.01i) * complex_sqrt_2(z.^3) + C;
    
    N(abs(z) > 100) = k;
    C(abs(z) > 100) = 0;
    z(abs(z) > 100) = 0;
end

% Create and customize the fractal plot
colormap hot;
image(x, flip(y), N);
set(gcf, 'Position', [100, 100, 500, 500]);
axis square;
set(gca, 'position', [0.18 0.09 0.8 0.97], 'FontName', 'Times New Roman', 'FontSize', 22);
set(gca, 'xtick', [1.5 1.8 2.1], 'FontName', 'Times New Roman', 'FontSize', 24);
set(gca, 'ytick', [0 0.3 0.6], 'FontName', 'Times New Roman', 'FontSize', 24);
set(gca, 'yticklabel', {' 0.6',' 0.3','0'});

xlabel('\it x_0', 'FontSize', 28, 'FontName', 'Times New Roman');
h = ylabel('\it y_0', 'FontSize', 28, 'FontName', 'Times New Roman');
set(h, 'Units', 'Normalized');
pos = get(h, 'Position');
set(h, 'Position', [pos(1) + 0.05 pos(2) pos(3)]);
title('Fractal Plot for 1D-TFC Map', 'FontSize', 28, 'FontName', 'Times New Roman');


