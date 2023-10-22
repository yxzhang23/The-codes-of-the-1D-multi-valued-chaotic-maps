clc; 
clear all;

len =200;


XX = zeros(2,len);

x = 0.1+0.2i;
a = (-0.91+0.65i); c = 1+0.5i;

for m = 1:len


      x= a*complex_sqrt((x(1)).*(x(1)),2) + c; 
      XX(:,m) = x;     
end
 



figure;



plot(real(XX(1,:)),'-','MarkerFaceColor',[0 1 0],'color',[0 1 0],'MarkerSize',1.2,'linewidth',1.5);
hold on;

set(gcf,'Position',[100,100,800,150]);
set(gca,'position',[0.09 0.3 0.87 0.65],'FontName','Times New Roman','FontSize',30,'XTick',0:40:200,'YTick',-1:1.2:1.4);
set(gca,'FontName','Times New Roman','FontSize',16);


set(gca,'XTickLabel','')

axis([0 200   -1.1 1.5]);