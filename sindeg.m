function [sinm,avg]=sindeg(deg)
    sinm=sin(deg*pi/180);
    [m,n]=size(deg);
    avg=sum(sum(sinm))/(m*n);