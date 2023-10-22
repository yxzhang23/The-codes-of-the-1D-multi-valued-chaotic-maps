clc;
clear all;
%%%% This code can be used to compute the dynamic behavior types of 1D-TWC map.
% Initialization
IC = [0.1 0.2];
L =100;
A = linspace(0,1.7, L);
B = linspace(0,1, L);
CH = [];
P1 = [];
P2 = [];
P3 = [];
P4 = [];
P5 = [];
P6 = [];
P7 = []; 
P8 = [];
MP = [];


% Computation
for m = 1 : L
    a = A(m);
    for j = 1 : L
        b = B(j);
        
        
        % Sequence of iterations
        S = [IC'];         
        for k = 2 : 5001
            x = S(1, k - 1);
            y = S(2, k - 1);
             


            zz = (a+ b*1i)*complex_sqrt((x+y*1i)^3,3)-2-i;
            zz = zz(1);

            
            
            S1 = real(zz);
            S2 = imag(zz);     
            
            S = [S [S1; S2]];
        end
        
        
        % Truncated sequence of iterations
        cut_length = 100;
        S_cut = S(:, length(S) - cut_length + 1 : length(S));
        
        
        % Exclude unbounded points
        if abs(max(S_cut(1, :)) - min(S_cut(1, :))) < 100 && ...
           abs(max(S_cut(2, :)) - min(S_cut(2, :))) < 100
       
            
            % Standard deviation
            STD = [];
            for p = 1 : 8
                for q = 1 : p                                       % Each period has p * 2 stds 
                    std_ = std(S_cut(:, q : p : cut_length)');      % Compute std of the subsequence started at q with period p
                    STD = [STD std_'];
                end
            end
            
            
            % Permitted error
            pe = 1e-3;
            
            
            % Distinguish points with period 1-8
            flagg = false;
            k = 1;
            for p = 1 : 8
                if STD(:, k : k + p - 1) < pe
                    flagg = true;
                    break;
                end
                k = k + p;
            end
            
            
            if flagg == true
                % The point is a point with period 1-8
                switch p
                    case 1
                        P1 = [P1, [a; b]];
                    case 2
                        P2 = [P2, [a; b]];
                    case 3
                        P3 = [P3, [a; b]];
                    case 4
                        P4 = [P4, [a; b]];
                    case 5
                        P5 = [P5, [a; b]];
                    case 6
                        P6 = [P6, [a; b]];
                    case 7
                        P7 = [P7, [a; b]];
                    case 8
                        P8 = [P8, [a; b]];
                end
            else
                % The point is not a point with period 1-8
%                 LE_LS;
                LLE = log(abs(a+ b*1i));
                if LLE > 0
                    CH = [CH, [a; b]];
                else
                    MP = [MP, [a; b]];
                end
            end
        end
        
    end
end



% Data Recording
% save('datasqrt1_0.5i.mat');