clc;clear all;


% x = 0.4;
% x = -0.73 + 0.44i
% x = -0.34-0.489i
% r = 10000;
% h1= plot(x,y,'r.','MarkerSize',30);
% hold on;

tic;
a = 0.4+1i; c = -1i;
x = 0.1+0.2i;
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
set(gca,'position',[0.2 0.23 0.75 0.75],'FontName','Times New Roman','FontSize',24,'XTick',-1:0.7:1.8,'YTick',-1.5:0.5:0.5);
xlabel('\it x','FontSize',28,'FontName','Times new roman');
ylabel('\it y','FontSize',28,'FontName','Times new roman');
% axis equal
% legend1 = legend(h1,'( \it q_1(0),\it q_2(0) )');
axis([ -1 1.8  -1.5 0.6]);

figure;
plot(real(XX(1,:)),imag(XX(1,:)),'.','MarkerSize',2,'color','[0 1 0]');hold on 
plot(real(XX(2,:)),imag(XX(2,:)),'.','MarkerSize',2,'color','[1 0 1]');hold on 
set(gcf,'Position',[100,100,500,400]);
set(gca,'position',[0.2 0.23 0.75 0.75],'FontName','Times New Roman','FontSize',24,'XTick',-1.8:0.9:1.8,'YTick',-2.6:0.8:0.7);
xlabel('\it x','FontSize',28,'FontName','Times new roman');
ylabel('\it y','FontSize',28,'FontName','Times new roman');
% axis equal
% legend1 = legend(h1,'( \it q_1(0),\it q_2(0) )');
axis([ -1.8 1.8 -2.65  0.65]);

