function row=logiunpack(cv)
%
row=zeros(numel(cv),numel(cv));
for i=1:numel(cv)%columns
    row(i,cv{i})=true;
end
row=logical(row);