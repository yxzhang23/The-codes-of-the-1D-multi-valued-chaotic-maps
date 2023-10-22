%求复数的正整数次方根，并且返回所有复数根。
% X可以是标量，也可以是向量。
% n必须是正整数。
% Y是L*n的矩阵，其中L是X的长度。
function Y =complex_sqrt(X,n)
% [~,b]=size(X);
% if b>1
%     X=X.';%进行转置但复数元素的值不会改变，使用"'"转置会造成复数元素的值改变
% end
% X = (i)^3;n =3;
complex_angle=(angle(X)+(0:2*pi:2*(n-1)*pi))/n;
Y = repmat(abs(X).^(1/n),[1,n]).*(cos(complex_angle)+1i*sin(complex_angle));
% end

