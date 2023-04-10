function OI=income(rate,price)
    days=6;hr=16;
    OI=sum((rate.*price)*days*hr);
end