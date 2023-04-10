function out=sum3and5muls(n)
%
    v1=3:3:n;v2=5:5:n;v2(mod(v2,3)==0)=[];out=sum(v1)+sum(v2);