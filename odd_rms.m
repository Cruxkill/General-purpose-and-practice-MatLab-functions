function orms=odd_rms(nn)
%
    v=1:(2*nn-1);v=v(mod(v,2)~=0);v=v.^2;
    orms=sqrt(mean(sum(v)/numel(v)));