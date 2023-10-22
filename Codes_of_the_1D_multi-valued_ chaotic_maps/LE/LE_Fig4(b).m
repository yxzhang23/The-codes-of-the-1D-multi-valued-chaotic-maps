clc;clear;
b = -0.95;

T = linspace(0.1,0.6, 625);
N = length(T);
L = [];
LE = [];

for j = 1:N
    XX(:,j) = log(T(j)*i+b);
    disp(j);
end
LE = real(XX);
plot(T,zeros(1,N),'k-.');hold on

plot(T,LE,'MarkerSize',3,'color',[0 1 0],'MarkerSize',1.2,'linewidth',1.2);


set(gcf,'Position',[100,100,900,155]);
set(gca,'position',[0.11 0.1 0.87 0.68],'FontName','Times New Roman','FontSize',22,'XTick',0.1:0.1:0.6,'YTick',-0.1:0.1:0.15);


ylabel('\it LE','FontSize',24,'FontName','Times new roman');
set(gca,'XTickLabel','')
set(gca,'Ygrid','on') 
set(gca,'YTicklabel',{'-0.1','0','0.1'},'FontSize',22);


axis([0.1 0.6 -0.1 0.15]);