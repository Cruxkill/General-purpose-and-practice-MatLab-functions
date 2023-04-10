function Q=intquad(n,m)
    Q1=zeros(n,m);
    Q2(1:n,1:m)=1;Q3(1:n,1:m)=2;Q4(1:n,1:m)=3;
    Q=[Q1,Q2;Q3,Q4];