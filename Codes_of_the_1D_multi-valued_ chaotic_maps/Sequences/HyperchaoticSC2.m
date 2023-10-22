clc; 
clear all;

len = 200;


XX = zeros(3,len);

x = 0.1+0.2i;
a =  1.36; c = -1;

for m = 1:len


    x= a*complex_sqrt((x(1))^3,3) + c; 
      XX(:,m) = x;     
end
 



figure;



plot(real(XX(1,:)),'-','MarkerFaceColor',[0 1 0],'color',[0 0 1],'MarkerSize',1.2,'linewidth',1.5);
hold on;

set(gcf,'Position',[100,100,800,150]);
set(gca,'position',[0.09 0.3 0.87 0.65],'FontName','Times New Roman','FontSize',30,'XTick',0:40:200,'YTick',-0.9:0.7:0.5);
set(gca,'FontName','Times New Roman','FontSize',16);


set(gca,'XTickLabel','')

axis([0 200  -1 0.55]);