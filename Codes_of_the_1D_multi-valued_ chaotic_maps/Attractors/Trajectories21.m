clc;clear all;
tic;
x = 0.1+0.2i;

a = (-1-0.33i); c = 1+0.5i;

% 
% for m = 1:1000
%     tx = x;
%     x= a*complex_sqrt((x(1)).*(x(1)),2)+ c; 
% end
for m = 1:30000
    tx = x;
    x= a*complex_sqrt((x(1)).*(x(1)),2) + c; 
     XX(:,m) = x;
end
toc;
figure;
plot(real(XX(1,:)),imag(XX(1,:)),'.','MarkerSize',2,'color','[0 1 0]');hold on 
set(gcf,'Position',[100,100,500,400]);
set(gca,'position',[0.2 0.23 0.75 0.75],'FontName','Times New Roman','FontSize',24,'XTick',-4:1.5:2,'YTick',-3:2:5);
xlabel('\it x','FontSize',28,'FontName','Times new roman');
ylabel('\it y','FontSize',28,'FontName','Times new roman');

axis([ -4.3 2.3 -3.5  5.5]);

figure;
plot(real(XX(1,:)),imag(XX(1,:)),'.','MarkerSize',2,'color','[0 1 0]');hold on 
plot(real(XX(2,:)),imag(XX(2,:)),'.','MarkerSize',2,'color','[1 0 1]');hold on 
set(gcf,'Position',[100,100,500,400]);
set(gca,'position',[0.2 0.23 0.75 0.75],'FontName','Times New Roman','FontSize',24,'XTick',-4:2.5:6,'YTick',-4:2.2:5);
xlabel('\it x','FontSize',28,'FontName','Times new roman');
ylabel('\it y','FontSize',28,'FontName','Times new roman');

axis([ -4.3 6.3 -4.3  5.5]);

