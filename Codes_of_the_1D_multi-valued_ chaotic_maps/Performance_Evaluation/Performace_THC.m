close all;
clear all;
clc;

% 
len = 30000;

t1 = 2; m = 5;
r=1/10*(1:100)'/100;
logr = log10(r);
Hp = [];


% a =  0.9899+0.7i; c = -1;
%  a =  1.36; c = -1;
% a =  (1.01+0.4111i); c = -2-1i;
a =  1.2895 + 0.25i; c = -2-1i;



XX = zeros(3,len);


x = 0.1+0.2i;


   for k = 1:1000      
    x= a*complex_sqrt((x(1))^3,3) + c; 
   end
   
for k = 1:len
    x= a*complex_sqrt((x(1))^3,3) + c; 
               XX(:,k) = x;
end




 [Log2C,Log2r]=gencorint(real(XX(1,:)),2,1,logr,inf,1,[],2);
 CD1 = findCD(Log2r,Log2C);
 [Log2C,Log2r]=gencorint(imag(XX(1,:)),2,1,logr,inf,1,[],2);
 CD2 = findCD(Log2r,Log2C);
 [Log2C,Log2r]=gencorint(real(XX(2,:)),2,1,logr,inf,1,[],2);
 CD3 = findCD(Log2r,Log2C);
 [Log2C,Log2r]=gencorint(imag(XX(2,:)),2,1,logr,inf,1,[],2);
 CD4 = findCD(Log2r,Log2C);
 [Log2C,Log2r]=gencorint(real(XX(3,:)),2,1,logr,inf,1,[],2);
 CD5 = findCD(Log2r,Log2C);
 [Log2C,Log2r]=gencorint(imag(XX(3,:)),2,1,logr,inf,1,[],2);
 CD6 = findCD(Log2r,Log2C);
 CD3D = [CD1,CD2,CD3,CD4,CD5,CD6];
 MEANCD = mean(CD3D);
 STDCD  = std(CD3D);
 
 
   spe1 = SE_entroy(real(XX(1,:)));
   spe2 = SE_entroy(imag(XX(1,:)));
   spe3 = SE_entroy(real(XX(2,:)));
   spe4 = SE_entroy(imag(XX(2,:)));
   spe5 = SE_entroy(real(XX(3,:)));
   spe6 = SE_entroy(imag(XX(3,:)));
   SPE3D = [spe1,spe2,spe3,spe4,spe5,spe6];
   MEANSPE3D = mean(SPE3D);
   STDSPE3D  = std(SPE3D);
 
 




 
%  
   [Tep1,Tep2] = pec(real(XX(1,:)),m,t1);
   Hp1 = Tep1/log(factorial(m)); 
   [Tep1,Tep2] = pec(imag(XX(1,:)),m,t1);
   Hp2 = Tep1/log(factorial(m));
   [Tep1,Tep2] = pec(real(XX(2,:)),m,t1);
   Hp3 = Tep1/log(factorial(m)); 
   [Tep1,Tep2] = pec(imag(XX(2,:)),m,t1);
   Hp4 = Tep1/log(factorial(m)); 
   [Tep1,Tep2] = pec(real(XX(3,:)),m,t1);
   Hp5 = Tep1/log(factorial(m)); 
   [Tep1,Tep2] = pec(imag(XX(3,:)),m,t1);
   Hp6 = Tep1/log(factorial(m)); 
    HP3D = [Hp1,Hp2,Hp3,Hp4,Hp5,Hp6];
    MEANHP3D = mean(HP3D);
    STDHP3D  = std(HP3D);
    
    
