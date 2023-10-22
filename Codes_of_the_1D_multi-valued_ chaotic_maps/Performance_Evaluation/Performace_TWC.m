close all;
clear all;
clc;


len = 30000;

t1 = 2; m = 5;
r=1/10*(1:100)'/100;
logr = log10(r);
Hp = [];

% a = 0.0005+1.3999i; c = -1i;
% a = 0.4+1i; c = -1i;
% a = (-1-0.33i); c = 1+0.5i;
a = (-0.91+0.65i); c = 1+0.5i;



XX = zeros(2,len);


x = 0.1+0.2i;

% 

   for k = 1:1000      
          x= a*complex_sqrt((x(1)).*(x(1)),2) + c; 
   end
   
for k = 1:len
          x= a*complex_sqrt((x(1)).*(x(1)),2) + c; 
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
 CD2D = [CD1,CD2,CD3,CD4];
 MEANCD = mean(CD2D);
 STDCD  = std(CD2D);
 
 
 
   spe1 = SE_entroy(real(XX(1,:)));
   spe2 = SE_entroy(imag(XX(1,:)));
   spe3 = SE_entroy(real(XX(2,:)));
   spe4 = SE_entroy(imag(XX(2,:)));
   SPE2D = [spe1,spe2,spe3,spe4];
   MEANSPE2D = mean(SPE2D);
   STDSPE2D  = std(SPE2D);
 
 



 

   [Tep1,Tep2] = pec(real(XX(1,:)),m,t1);
   Hp1 = Tep1/log(factorial(m)); 
   [Tep1,Tep2] = pec(imag(XX(1,:)),m,t1);
   Hp2 = Tep1/log(factorial(m));
   [Tep1,Tep2] = pec(real(XX(2,:)),m,t1);
   Hp3 = Tep1/log(factorial(m)); 
   [Tep1,Tep2] = pec(imag(XX(2,:)),m,t1);
   Hp4 = Tep1/log(factorial(m)); 
    HP2D = [Hp1,Hp2,Hp3,Hp4];
    MEANHP2D = mean(HP2D);
    STDHP2D  = std(HP2D);


% save data2D4
