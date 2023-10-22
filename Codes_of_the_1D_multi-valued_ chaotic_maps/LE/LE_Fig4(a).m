clc;clear;


T = linspace(0.8,1.4,1000);
N = length(T);
L = [];
LE = [];

for j = 1:N
    XX(:,j) = log(T(j));
    disp(j);
end
LE = XX;
plot(T,zeros(1,N),'k-.');hold on
% plot(T,LE(:,1),'MarkerSize',3,'color',[0.63 0.13 0.94],'MarkerSize',1.2,'linewidth',1.2);
plot(T,LE,'MarkerSize',3,'color',[0 1 0],'MarkerSize',1.2,'linewidth',1.2);



set(gcf,'Position',[100,100,900,155]);
set(gca,'position',[0.11 0.1 0.87 0.68],'FontName','Times New Roman','FontSize',22,'XTick',0.8:0.15:1.4,'YTick',-0.3:0.3:0.3);
% set(gca,'position',[0.11 0.1 0.87 0.68],'FontName','Times New Roman','FontSize',22,'XTick',0.3:0.2:1.5,'YTick',-0.8:0.8:0.8);
% grid on;
% xlabel('\it R(a)','FontSize',24,'FontName','Times new roman');

ylabel('\it LE','FontSize',24,'FontName','Times new roman');
set(gca,'XTickLabel','')
set(gca,'Ygrid','on') 
set(gca,'YTicklabel',{'-0.3','0','0.3'},'FontSize',22);


% plot(T,LE(:,2),'b');

axis([0.8 1.4 -0.4 0.4]);




