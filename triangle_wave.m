function V=triangle_wave(n)
%*** Write a function called triangle_wave that computes the sum 
%               Sigma_k=0 ^n (-1^k)sin((2k+1)t)/(2k+1)^2
%for each of 1001 values of t uniformly spaced from 0 to 4π inclusive. The 
%input argument is a scalar non-negative integer n, and the output argument 
%is a row vector of 1001 such sums—one sum for each value of t. You can 
%test your function by calling it with n == 20 or greater and plotting the 
%result and you will see why the function is called “triangle_wave”.

t=0:4*pi/1000:4*pi;
k=0;V=(((-1)^k)*sin((2*k+1)*t))/((2*k+1)^2);
for k=1:n
    V=V+(((-1)^k)*sin((2*k+1)*t))/((2*k+1)^2);
end