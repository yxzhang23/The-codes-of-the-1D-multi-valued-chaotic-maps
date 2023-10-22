clc;clear all;
tic;
x = 0.1+0.2i;
% r = 10000;
% h1= plot(x,y,'r.','MarkerSize',30);
% hold on;



a =  1.36; c = -1;

% for m = 1:1000
%     tx = x;
%     x= a*complex_sqrt((x(1))^3,3)+ c; 
% end
for m = 1:30000
    tx = x;
    x= a*complex_sqrt((x(1))^3,3) + c; 
     XX(:,m) = x;
end
toc;
figure;
plot(real(XX(1,:)),imag(XX(1,:)),'.','MarkerSize',2,'color','[0 0 1]');hold on 
set(gcf,'Position',[100,100,500,400]);
set(gca,'position',[0.2 0.23 0.75 0.75],'FontName','Times New Roman','FontSize',24,'XTick',-1:0.4:0.6,'YTick',-1.2:0.6:1.2);
xlabel('\it x','FontSize',28,'FontName','Times new roman');
ylabel('\it y','FontSize',28,'FontName','Times new roman');
% axis equal
% legend1 = legend(h1,'( \it q_1(0),\it q_2(0) )');
axis([-1.05 0.65 -1.3  1.3]);

figure;
plot(real(XX(1,:)),imag(XX(1,:)),'.','MarkerSize',2,'color','[0 0 1]');hold on 
plot(real(XX(2,:)),imag(XX(2,:)),'.','MarkerSize',2,'color','[1 0 0.5]');hold on 
plot(real(XX(3,:)),imag(XX(3,:)),'.','MarkerSize',2,'color','[0.5 0 1]');hold on 
set(gcf,'Position',[100,100,500,400]);
set(gca,'position',[0.2 0.23 0.75 0.75],'FontName','Times New Roman','FontSize',24,'XTick',-2.5:0.8:0.7,'YTick',-1.6:0.8:1.6);
xlabel('\it x','FontSize',28,'FontName','Times new roman');
ylabel('\it y','FontSize',28,'FontName','Times new roman');
% axis equal
% legend1 = legend(h1,'( \it q_1(0),\it q_2(0) )');
axis([ -2.5  0.7  -1.7  1.7]);

