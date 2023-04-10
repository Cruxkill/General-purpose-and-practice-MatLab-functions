function [nseg,poles]=fence(lng,seg)
%
    nseg=ceil(lng/seg);
    poles=1+nseg;