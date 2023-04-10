function dd=day_diff(month1,day1,month2,day2)
%   DAY_DIFF that takes four scalar positive integer inputs, month1, day1, 
%   month2,day2. These represents the birthdays of two children who were 
%   born in 2015. The function returns a positive integer scalar that is 
%   equal to the difference between the ages of the two children in days. 
%   Make sure to check that the input values are of the correct types and 
%   they represent valid dates. If they are erroneous, return -1. An 
%   example call to the function would be 
%        >> dd = day_diff(1,30,2,1);  
%   which would make dd equal 2. You are not allowed to use the built-in 
%   function datenum or datetime.

month=[month1,month2];day=[day1,day2];
monthday=[31,28,31,30,31,30,31,31,30,31,30,31];

if ~isscalar(month1) || month(1)<1 || month(1)>12 || month(1)~=fix(month(1)) || ...
        ~isscalar(month2) || month(2)<1 || month(2)>12 || month(2)~=fix(month(2)) ||...
        ~isscalar(day1) || day(1)<1 || day(1)>monthday(month(1)) || day(1)~=fix(day(1)) ||...
        ~isscalar(day2) || day(2)<1 || day(2)>monthday(month(2)) || day(2)~=fix(day(2))
    dd=-1;
%    error('Invalid month')
else
    if month(1)>month(2)
        dd=(sum(monthday(1:month(1)-1))+day(1))-(sum(monthday(1:month(2)-1))+day(2));
    elseif month(1)<month(2)
        dd=(sum(monthday(1:month(2)-1))+day(2))-(sum(monthday(1:month(1)-1))+day(1));
    else
        if day(1)>=day(2)
            dd=day(1)-day(2);
        else
            dd=day(2)-day(1);
        end
    end
end