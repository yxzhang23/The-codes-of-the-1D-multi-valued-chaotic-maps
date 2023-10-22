clc;clear all;

x = 0.1+0.2i;
% r = 10000;
% h1= plot(x,y,'r.','MarkerSize',30);
% hold on;


a = 0.4+1i; c = -1i;

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
figure;
plot(real(XX(1,:)),imag(XX(1,:)),'.','MarkerSize',2,'color','[0 1 0]');hold on 
set(gcf,'Position',[100,100,500,400]);
set(gca,'position',[0.15 0.15 0.82 0.82],'FontName','Times New Roman','FontSize',14,'XTick',-1:0.7:1.8,'YTick',-1.5:0.5:0.5);
xlabel('\it x','FontSize',19,'FontName','Times new roman');
ylabel('\it y','FontSize',19,'FontName','Times new roman');
axis equal
% legend1 = legend(h1,'( \it q_1(0),\it q_2(0) )');
axis([ -1 1.8  -1.5 0.6]);
A = [-0.153260132822468,-0.137807648013567,-0.711972127527052,-0.270565426257092,0.0423400090546635,0.720016112766544,1.52689847982037,1.38630009305998,0.337837837809972,-0.337837837809972;
    - 0.199111701069611,-0.767095186687334,-0.555354277235665,-0.0658861614898590,-0.703080109063312,-1.23889203462071,-0.775540701068167,0.216682199448195,0.472972972925849,-0.472972972925849]
plot(A(1,:),A(2,:),'-*','MarkerSize',5,'color','[0 0 1]');hold on 

plot(-0.337837837809972,-0.472972972925849,'*','Color',[0,0,1]); hold on
text(-0.3,-0.472972972925849, '$\bar{z}_2$', 'Interpreter', 'latex', 'FontSize', 12, 'FontWeight', 'bold', 'Color', 'blue');

plot(0.337837837809972,0.472972972925849,'*','Color',[0,0,1]); hold on
text(0.30837837809972,0.5472972925849, '$z(k+8)$', 'Interpreter', 'latex', 'FontSize', 12, 'FontWeight', 'bold', 'Color', 'blue');

plot(1.38630009305998, 0.216682199448195,'*','Color',[0,0,1]); hold on
text(1.38630009305998, 0.26682199448195, '$z(k+7)$', 'Interpreter', 'latex', 'FontSize', 12, 'FontWeight', 'bold', 'Color', 'blue');

plot(1.52689847982037,     - 0.775540701068167,'*','Color',[0,0,1]); hold on
text(1.089847982037,     - 0.7540701068167, '$z(k+6)$', 'Interpreter', 'latex', 'FontSize', 12, 'FontWeight', 'bold', 'Color', 'blue');

plot( 0.720016112766544,   -1.23889203462071,'*','Color',[0,0,1]); hold on
text(0.720016112766544,   -1.3, '$z(k+5)$', 'Interpreter', 'latex', 'FontSize', 12, 'FontWeight', 'bold', 'Color', 'blue');

plot(0.0423400090546635 ,  - 0.703080109063312,'*','Color',[0,0,1]); hold on
text(0.123400090546635 ,  - 0.6803080109063312, '$z(k+4)$', 'Interpreter', 'latex', 'FontSize', 12, 'FontWeight', 'bold', 'Color', 'blue');

plot(-0.270565426257092,   -0.0658861614898590,'*','Color',[0,0,1]); hold on
text(-0.420565426257092,   0.05050, '$z(k+3)$', 'Interpreter', 'latex', 'FontSize', 12, 'FontWeight', 'bold', 'Color', 'blue');

plot(-0.711972127527052,  -0.555354277235665,'*','Color',[0,0,1]); hold on
text(-0.711972127527052,  -0.655354277235665, '$z(k+2)$', 'Interpreter', 'latex', 'FontSize', 12, 'FontWeight', 'bold', 'Color', 'blue');

plot(-0.137807648013567, -0.767095186687334,'*','Color',[0,0,1]); hold on
text(-0.12, -0.8, '$z(k+1)$', 'Interpreter', 'latex', 'FontSize', 12, 'FontWeight', 'bold', 'Color', 'blue');


 plot(-0.153260132822468, - 0.199111701069611,'*','Color',[1,0,0]); hold on
 text(-0.08, - 0.192, '$z(k)$', 'Interpreter', 'latex', 'FontSize', 12, 'FontWeight', 'bold', 'Color', 'blue');

z0 =-0.337837837809972- 0.472972972925849i; % 圆心
r = 0.3378; % 半径
theta = linspace(0, 2*pi, 100); % 角度范围
x = real(z0) + r*cos(theta); % x 坐标
y = imag(z0) + r*sin(theta); % y 坐标
plot(x, y); % 画圆
axis equal; % 等比例显示坐标轴
hold on;
% 画出圆心和半�?
plot(real(z0), imag(z0), 'r.', 'MarkerSize', 20); % 圆心
% plot([real(z0), real(z0)+r*cos(-pi/4)], [imag(z0), imag(z0)+r*sin(-pi/4)], 'r-'); % 半径

