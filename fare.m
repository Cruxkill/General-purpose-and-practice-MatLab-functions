function total=fare(dist,age)
%
    dist=round(dist);
    if dist<=1
        total=2;
    elseif dist<=10
        total=2+((dist-1)*0.25);
    else
        total=2+(9*0.25)+((dist-10)*0.10);
    end
    if age<=18 || age>=60
        total=total*0.8;
    end