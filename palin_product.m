function n = palin_product(dig,lim)
%
n1=1;n=0;
minn=10^(dig-1);maxn=(10^(dig))-1;
num1=minn;
num2=minn;
while num2<maxn
    nu=num1*num2;
    if nu<lim
        ns=num2str(nu);
        if strcmp(ns, fliplr(ns)) && nu>n
            n=nu;
        end
    end
    if num1==maxn;
        num1=minn+n1;
        num2=num2+1;
        n1=n1+1;
    else
        num1=num1+1;
    end
end