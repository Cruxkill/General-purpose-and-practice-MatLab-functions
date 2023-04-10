function x = find_zero(f,x1,x2)
%
dx=1;
minx=x1;maxx=x2;
for i=1:5
    dx=dx*1e-2;x=minx;y=f(x);
    while abs(y)>=dx
        x=x+dx;y=f(x);
    end
    minx=x-dx;maxx=x+dx;
end