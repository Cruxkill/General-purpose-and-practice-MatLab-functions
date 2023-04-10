function amag = accelerate(F1,F2,m)
    amag=sqrt(sum(((F1+F2)/m).^2));
end