
%%%% This code is  to calculate the second root of a complex square root.
function Y =complex_sqrt_2(X)

complex_angle=(angle(X)+(2*pi))/2;
Y = abs(X).^(1/2).*(cos(complex_angle)+1i*sin(complex_angle));

