function prctg=zero_stat(M)
%
    [m,n]=size(M);N=m*n;prctg=(1-(sum(sum(M))/N))*100;