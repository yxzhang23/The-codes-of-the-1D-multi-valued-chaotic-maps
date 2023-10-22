function CD = findCD(Log2r, Log2C)
%Log2r = 0.02; Log2C = 4;
Len = length(Log2r);

for n = 1:Len
    if isinf(Log2C(n))
        if n == 1 && ~isinf(Log2C(n+1))
            Log2C(n) = Log2C(n+1);
        elseif n == 1 && isinf(Log2C(n+1))
             Log2C(n) = Log2C(n+2);
        elseif  ~isinf(Log2C(n-1))
             Log2C(n) = Log2C(n-1);
        else
             Log2C(n) = 0;
        end
    end
end

p = polyfit(Log2r,Log2C,1);
CD = p(1);

