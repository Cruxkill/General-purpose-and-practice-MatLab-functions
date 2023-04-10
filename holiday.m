function h=holiday(month,day)
%   Write a function called holiday that takes two input arguments called
%   month and day; both are scalar integers representing a month (1-12) and
%   a day (1-31). You do not need to check that the input is valid. The
%   function returns a logical true if the specified date is a holiday; if 
%   not, it returns false. For the purposes of this exercise, the following
%   dates are considered holidays: January 1st, July 4th, December 25th, and
%   December 31st.

hd=[1,1;7,4;12,25;12,31];
if and(month==hd(1,1),day==hd(1,2)) || and(month==hd(2,1),day==hd(2,2)) ||...
        and(month==hd(3,1),day==hd(3,2)) || and(month==hd(4,1),day==hd(4,2))
    h=true;
else
    h=false;
end
