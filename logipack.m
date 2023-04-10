function cv=logipack(lm)
%
[m,n]=size(lm);cv=cell(1,m);
if m~=n
    %bad input
    return
else
    for i=1:m
        k=0;
        for j=1:n
            if lm(i,j)==true && k==0
                cv{i}=j;k=k+1;
            elseif lm(i,j)==true && k~=0
                cv{i}=[cv{i},j];k=k+1;
            end
        end
    end
end