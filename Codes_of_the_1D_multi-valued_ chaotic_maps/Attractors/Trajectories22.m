clc;clear all;
tic;
x = 0.1+0.2i;
% r = 10000;
% h1= plot(x,y,'r.','MarkerSize',30);
% hold on;


a = (-0.91+0.65i); c = 1+0.5i;

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
set(gca,'position',[0.2 0.23 0.75 0.75],'FontName','Times New Roman','FontSize',24,'XTick',-1.4:0.7:1.6,'YTick',-1:0.7:1.8);
xlabel('\it x','FontSize',28,'FontName','Times new roman');
ylabel('\it y','FontSize',28,'FontName','Times new roman');
% axis equal
% legend1 = legend(h1,'( \it q_1(0),\it q_2(0) )');
axis([ -1.4 1.6 -1 1.9]);

figure;
plot(real(XX(1,:)),imag(XX(1,:)),'.','MarkerSize',2,'color','[0 1 0]');hold on 
plot(real(XX(2,:)),imag(XX(2,:)),'.','MarkerSize',2,'color','[1 0 1]');hold on 
set(gcf,'Position',[100,100,500,400]);
set(gca,'position',[0.2 0.23 0.75 0.75],'FontName','Times New Roman','FontSize',24,'XTick',-1.4:1.1:3.2,'YTick',-1:0.7:2);
xlabel('\it x','FontSize',28,'FontName','Times new roman');
ylabel('\it y','FontSize',28,'FontName','Times new roman');
% axis equal
% legend1 = legend(h1,'( \it q_1(0),\it q_2(0) )');
axis([ -1.4 3.3  -1  2]);

