clc; 
clear all;

len = 200;


XX = zeros(3,len);

x = 0.1+0.2i;
a =  1.2895 + 0.25i; c = -2-1i;

for m = 1:len


    x= a*complex_sqrt((x(1))^3,3) + c; 
      XX(:,m) = x;     
end
 
 






figure;


plot(real(XX(1,:)),'-','MarkerFaceColor',[0 1 0],'color',[0 0 1],'MarkerSize',1.2,'linewidth',1.5);
hold on;

set(gcf,'Position',[100,100,800,150]);
set(gca,'position',[0.09 0.3 0.87 0.65],'FontName','Times New Roman','FontSize',30,'XTick',0:40:200,'YTick',-1.9:1.4:1.1);
set(gca,'FontName','Times New Roman','FontSize',16);

xlabel('\it j','FontSize',24);
axis([0 200 -2 1.1]);

