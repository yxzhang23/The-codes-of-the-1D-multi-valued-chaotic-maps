clc;clear;
b = 0.9*i;

T = linspace(0.2,1,1000);
N = length(T);
L = [];
LE = [];

for j = 1:N
    XX(:,j) = log(T(j)+b);
    disp(j);
end
LE = real(XX);
plot(T,zeros(1,N),'k-.');hold on
plot(T,LE,'MarkerSize',3,'color',[0 0 1],'MarkerSize',1.2,'linewidth',1.2);


set(gcf,'Position',[100,100,900,155]);
set(gca,'position',[0.11 0.1 0.87 0.68],'FontName','Times New Roman','FontSize',22,'XTick',0.2:0.2:1,'YTick',-0.3:0.3:0.3);


ylabel('\it LE','FontSize',24,'FontName','Times new roman');
set(gca,'XTickLabel','')
set(gca,'Ygrid','on') 
set(gca,'YTicklabel',{'-0.3','0','0.3'},'FontSize',22);


axis([0.2 1 -0.3 0.5]);