function Y =complex_sqrt(X,n)
%%%%%This code is to calculate the n-th roots of a complex number X, distributing the solutions uniformly around the complex plane.
complex_angle=(angle(X)+(0:2*pi:2*(n-1)*pi))/n;
Y = repmat(abs(X).^(1/n),[1,n]).*(cos(complex_angle)+1i*sin(complex_angle));
