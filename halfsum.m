function H=halfsum(A)
%Write a function called halfsum that takes as input an at most 
%two-dimensional array A and computes the sum of the elements of A that are 
%in the lower right triangular part of A, that is, elements in the 
%counter-diagonal (going from the bottom left corner, up and to the right) 
%and elements that are to the right of it. For example, if the input is 
%[1 2 3; 4 5 6; 7 8 9], then the function would return 38. 

[M,N]=size(A);H=zeros(M,N);
for i=M:-1:1
    for j=1:N
        if j>M-i
            H(i,j)=A(i,j);
        end
    end
end
H=sum(H(:));