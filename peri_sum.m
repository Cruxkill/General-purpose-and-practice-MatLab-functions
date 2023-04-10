function ps=peri_sum(A)
    ps=[A(1,1:end-1),A(1:end-1,end)',A(end,end:-1:2),A(end:-1:2,1)'];
    ps=sum(ps(:));
end