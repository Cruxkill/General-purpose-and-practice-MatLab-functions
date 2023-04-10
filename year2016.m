function m=year2016(k)
%
m=[];
if isscalar(k)
    if k>=1 && k<=12 && uint8(k)==k && isinteger(uint8(k))
        %Good value
        %Jan 1 Fri
        days=[31 29 31 30 31 30 31 31 30 31 30 31];
        months={'January' 'February' 'March' 'April' 'May' 'June' 'July' 'August' ...
            'September' 'October' 'November' 'December'};daycount=4;
        for i=1:k
            for j=1:days(i)
                daycount=daycount+1;
                if daycount==1;day='Mon';
                elseif daycount==2;day='Tue';
                elseif daycount==3;day='Wed';
                elseif daycount==4;day='Thu';
                elseif daycount==5;day='Fri';
                elseif daycount==6;day='Sat';
            elseif daycount==7;day='Sun';daycount=0;
                end
                m(j).month=months{i};m(j).date=j;m(j).day=day;
            end
            if i~=k;clear m;end
        end
    end
end