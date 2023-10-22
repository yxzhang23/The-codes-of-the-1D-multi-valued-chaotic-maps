% Draw basin of attraction
load('datas3_2_i.mat');
figure;
% set(gcf,'color','w');
[A_mesh, B_mesh] = meshgrid(A, B);
A_col = reshape(A_mesh, [], 1);
B_col = reshape(B_mesh, [], 1);
C1 = cat(2, A_col, B_col);
C2 = C1';
% color = summer(10);
for i = 1 : 11
    switch i    
        case 1
            plot(C2(1, :), C2(2, :), '.', 'color',[0.0784 0.1569 0.5529]); hold on;                      
        case 2
            plot(P1(1, :), P1(2, :), '.', 'color', [90/255 100/255 255/255]);   hold on;                              
        case 3                                                                     
           plot(P2(1, :), P2(2, :), '.', 'color', [0.63 0.13 0.94 ]);hold on;  
        case 4
           plot(P3(1, :), P3(2, :), '.', 'color', [0.24 0.57 0.25]);hold on;  
        case 5
           plot(P4(1, :), P4(2, :), '.', 'color', [0.5 0.5 0.5]);hold on;  
        case 6
            plot(P5(1, :), P5(2, :), '.', 'color', [1 0.75 0.8]);hold on;  
        case 7
           plot(P6(1, :), P6(2, :), '.', 'color', 'y');hold on;  
%         case 8
%             plot(P7(1, :), P7(2, :), '.', 'color', 'r');hold on;  
        case 9
             plot(P8(1, :), P8(2, :), '.', 'color', 'g');hold on;  
        case 10
            plot(MP(1, :), MP(2, :), '.', 'color', 'k');hold on;  
        case 11
            plot(CH(1, :), CH(2, :), '.', 'color', [ 0.965  0.318 0.114]);     hold on;   
    end
end
RGB=[        90/255 100/255 255/255
    0.63 0.13 0.94
     0.24 0.57 0.25
     0.5 0.5 0.5
     1   0.75 0.8  
     1 1 0
     1  0 0 
     0 1 0 
     0 0 0  
      0.965  0.318 0.114
      0.0784 0.1569 0.5529
   ];


% Create and set the colormap

colormap(RGB)
cb = colorbar();
set(cb,'position',[0.92 0.19 .02 0.78])
% Set color labels (one for each row in RGB)
label =[1 2 3 4 5 6 7 8 9 10 11];

caxis([0,numel(label)])
cb.YTick = 0.5 : 1 : numel(label);
labelChar = strsplit(sprintf('%0.2e ',label));
cb.TickLabels = labelChar(1:end-1);
cb.TickLabels = { 'P1',  'P2' ,   'P3' ,  'P4' ,   'P5'  ,  'P6' ,  'P7'  ,  'P8', 'MP','CH','UB'   };
cb.FontSize = 15; 
set(gcf,'Position',[100,100,700,560]);
set(gca,'position',[0.16 0.19 0.75 0.78],'FontName','Times New Roman','FontSize',24,'XTick',0:0.3:1.5,'YTick',0:0.3:1.2);
xlabel('\it c_R','FontSize',28,'FontName','Times new roman');
ylabel('\it c_I','FontSize',28,'FontName','Times new roman');
axis([0 1.5  0 1.2]);