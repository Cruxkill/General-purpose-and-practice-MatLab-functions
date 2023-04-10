function p=poly_val(c0,c,x)
%   Write a function called poly_val that is called like this 
%   p = poly_val(c0,c,x), where c0 and x are scalars, c is a vector, and p 
%   is a scalar. If c is an empty matrix, then p = c0. If c is a scalar, 
%   then p = c0+ c*x. Otherwise, p equals the polynomial,
%   
%   where N is the length of the vector c. Here are three example runs:
%   >> format long
%   >> p = poly_val(-17,[],5000)
%   p = 
%     -17
%   >> p = poly_val(3.2,[3,-4,10],2.2)
%   p =
%      96.920000000000030
%   >> p = poly_val(1,[1,1,1,1],10)
%   p =
%      11111

if numel(c)<1
    p=c0;
elseif isscalar(c)
    p=c0+c*x;
else
    ind=1:numel(c);
    [m,n]=size(c);
    if n<m
        c=c';
    end
    p=c0+(sum(c.*x.^ind));
end