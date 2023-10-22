% Bifurcation diagram for 1D-TWC map with varying 'a_I' values
% This code generates a bifurcation diagram illustrating the behavior of
% the 1D-TWC map with changing 'a_I' parameters. The resulting plot shows
% the real and imaginary parts of the system's output for different 'a_I'
% values.

% Clear the workspace and command window
clc; clear all;

% Set the number of iterations for each 'a' value
len = 75;

% Initialize the constant parameter 'b'
b = 0;

% Iterate over 'a' values from 0.8 to 1.4 with a step size of 0.0008
for a = 0.8:0.0008:1.4
    % Set initial complex number
    x = 0.1 + 0.2i;
    
    % Iterate 10,000 times to reach a stable state
    for m = 1:10000
        x = (a * 1i + b) * complex_sqrt((x(1)).*(x(1)),2) - 1i;
    end
    
    % Arrays to store real and imaginary parts of resulting complex numbers
    X = zeros(1, len);
    A = zeros(1, len);
    Y = zeros(1, len);
    
    % Perform len iterations to create the bifurcation diagram
    for m = 1:len
        x = (a * 1i + b) * complex_sqrt((x(1)).*(x(1)),2) - 1i;
        x = x(1);
        
        % Store real, imaginary, and 'a' values for plotting
        X(m) = real(x);
        Y(m) = imag(x);
        A(m) = a;
    end 
    
    % Plot real and imaginary parts of the complex numbers
    plot(A, Y, '.', 'MarkerSize', 1, 'color', [0 0 0]); 
    hold on
    plot(A, X, '.', 'MarkerSize', 1, 'color', [0.85 0.27 0.45]);
    hold on
end

% Set plot properties
set(gcf, 'Position', [100, 100, 900, 310]);
set(gca, 'position', [0.11 0.29 0.87 0.68], 'FontName', 'Times New Roman', 'FontSize', 22, 'XTick', 0.8:0.15:1.4, 'YTick', -1.8:0.9:1.8);
xlabel('\it a_I', 'FontSize', 24, 'FontName', 'Times New Roman');
ylabel('\it x,y', 'FontSize', 24, 'FontName', 'Times New Roman');
axis([0.8 1.4 -1.8 1.8]);
% Comment: This script generates a bifurcation diagram for the given
% 1D-TWC map, showing the system's behavior across different 'a_I' values.





