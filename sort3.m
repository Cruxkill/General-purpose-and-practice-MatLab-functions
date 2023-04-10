function [v1,v2,v3]=sort3(v)
%
    if v(1)>=v(2)
        if v(3)>=v(1)
            v1=v(2);v2=v(1);v3=v(3);
        elseif v(3)<=v(2)
            v1=v(3);v2=v(2);v3=v(1);
        else
            v1=v(2);v2=v(3);v3=v(1);
        end
    elseif v(2)>=v(1)
        if v(3)>=v(2)
            v1=v(1);v2=v(2);v3=v(3);
        elseif v(3)<=v(1)
            v1=v(3);v2=v(1);v3=v(2);
        else
            v1=v(1);v2=v(3);v3=v(2);
        end
    end