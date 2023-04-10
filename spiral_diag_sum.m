function H=spiral_diag_sum(n)
%Write a function called spiral_diag_sum that takes an odd positive integer 
%n as an input and computes the sum of all the elements in the two 
%diagonals of the n-by-n spiral matrix. For example, starting with the 
%number 1 and moving to the right in a clockwise direction, a 5-by-5 spiral 
%is formed as follows: 
%                                  21 22 23 24 25
%                                  20  7  8  9 10
%                                  19  6  1  2 11
%                                  18  5  4  3 12
%                                  17 16 15 14 13 
%
%The sum of the red elements above is 101. Hint: the problem does not ask 
%for the matrix itself.(Inspired by Project Euler.) 
A=spiral(n);H=zeros(n,n);
for i=1:n
    for j=1:n
        if i==ceil(n/2) && j==ceil(n/2)
            H(i,j)=A(i,j);
        elseif i==j
            H(i,j)=A(i,j);
        elseif i==n+1-j
            H(i,j)=A(i,j);
        end
    end
end
H=sum(H(:));