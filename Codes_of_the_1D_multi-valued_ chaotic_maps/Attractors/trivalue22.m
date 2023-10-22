clc;clear all;
tic;

x = 0.1+0.2i;
mem_before = memory;

a =  1.2895 + 0.25i; c = -2-1i;

for m = 1:30000
    tx = x;
    x= a*complex_sqrt((x(1))^3,3) + c; 
     XX(:,m) = x;
end

toc;
figure;
plot(real(XX(1,:)),imag(XX(1,:)),'.','MarkerSize',2,'color','[0 0 1]');hold on 
set(gcf,'Position',[100,100,500,400]);
set(gca,'position',[0.2 0.23 0.75 0.75],'FontName','Times New Roman','FontSize',24,'XTick',-2.1:0.8:1.2,'YTick',-2.5:1:1.7);
xlabel('\it x','FontSize',28,'FontName','Times new roman');
ylabel('\it y','FontSize',28,'FontName','Times new roman');
% axis equal
% legend1 = legend(h1,'( \it q_1(0),\it q_2(0) )');
axis([ -2.1 1.2 -2.7 1.7]);
% 
figure;
plot(real(XX(1,:)),imag(XX(1,:)),'.','MarkerSize',2,'color','[0 0 1]');hold on 
plot(real(XX(2,:)),imag(XX(2,:)),'.','MarkerSize',2,'color','[1 0 0.5]');hold on 
plot(real(XX(3,:)),imag(XX(3,:)),'.','MarkerSize',2,'color','[0.5 0 1]');hold on 
set(gcf,'Position',[100,100,500,400]);
set(gca,'position',[0.2 0.23 0.75 0.75],'FontName','Times New Roman','FontSize',24,'XTick',-5.2:1.6:1.3,'YTick',-4.8:1.6:2.2);
xlabel('\it x','FontSize',28,'FontName','Times new roman');
ylabel('\it y','FontSize',28,'FontName','Times new roman');
% axis equal
% legend1 = legend(h1,'( \it q_1(0),\it q_2(0) )');
axis([ -5.2 1.3  -4.8  2.2]);

