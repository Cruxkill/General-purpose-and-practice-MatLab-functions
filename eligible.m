function acceptance=eligible(v,q)
%
    acceptance=false;
    if v>88 && q>88
        if (v+q)/2>=92
            acceptance=true;
        end
    end