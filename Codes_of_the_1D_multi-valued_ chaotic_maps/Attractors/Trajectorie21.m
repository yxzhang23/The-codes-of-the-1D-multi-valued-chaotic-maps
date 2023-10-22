clc;clear all;
tic;
x = 0.1+0.2i;
% r = 10000;
% h1= plot(x,y,'r.','MarkerSize',30);
% hold on;


a = 0.0005+1.3999i; c = -1i;

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
set(gca,'position',[0.2 0.23 0.75 0.75],'FontName','Times New Roman','FontSize',24,'XTick',-1.4:0.7:1.4,'YTick',-1:0.6:0.96);
xlabel('\it x','FontSize',28,'FontName','Times new roman');
ylabel('\it y','FontSize',28,'FontName','Times new roman');
% axis equal
% legend1 = legend(h1,'( \it q_1(0),\it q_2(0) )');
axis([ -1.4 1.4 -1.0002  0.9613]);

figure;
plot(real(XX(1,:)),imag(XX(1,:)),'.','MarkerSize',2,'color','[0 1 0]');hold on 
plot(real(XX(2,:)),imag(XX(2,:)),'.','MarkerSize',2,'color','[1 0 1]');hold on 
set(gcf,'Position',[100,100,500,400]);
set(gca,'position',[0.2 0.23 0.75 0.75],'FontName','Times New Roman','FontSize',24,'XTick',-1.4:0.7:1.4,'YTick',-2.9:0.9:0.96);
xlabel('\it x','FontSize',28,'FontName','Times new roman');
ylabel('\it y','FontSize',28,'FontName','Times new roman');
% axis equal
% legend1 = legend(h1,'( \it q_1(0),\it q_2(0) )');
axis([ -1.4 1.4 -2.9613  0.9613]);