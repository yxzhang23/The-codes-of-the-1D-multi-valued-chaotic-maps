%�������������η��������ҷ������и�������
% X�����Ǳ�����Ҳ������������
% n��������������
% Y��L*n�ľ�������L��X�ĳ��ȡ�
function Y =complex_sqrt(X,n)
% [~,b]=size(X);
% if b>1
%     X=X.';%����ת�õ�����Ԫ�ص�ֵ����ı䣬ʹ��"'"ת�û���ɸ���Ԫ�ص�ֵ�ı�
% end
% X = (i)^3;n =3;
complex_angle=(angle(X)+(0:2*pi:2*(n-1)*pi))/n;
Y = repmat(abs(X).^(1/n),[1,n]).*(cos(complex_angle)+1i*sin(complex_angle));
% end

