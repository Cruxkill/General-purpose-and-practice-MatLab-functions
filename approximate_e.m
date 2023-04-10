function [ap_e,k]=approximate_e(delta)
%Write a function called approximate_e that uses the following formula to 
%compute e, Euler’s number:
%                   e= Sigma_k=0 ^inf (1/k!)= 1+1+1/2+1/6+1/24+...
%Instead of going to infinity, the function stops at the smallest k for 
%which the approximation differs from exp(1) (i.e., the value returned 
%MATLAB’s built-in function) by no more than the positive scalar, delta, 
%which is the only input argument. The first output of the function is the 
%approximate value of e, while the second is k. (Note: if your program or 
%the grader takes a long time, you may have created an infinite loop and 
%need to hit Ctrl-C on your keyboard.) You are not allowed to use the 
%built-in function factorial.

k=-1;ap_e=0;
while exp(1)-ap_e>delta
    k=k+1;
    fact=1;
    if k>0
        for i=1:k
            fact=(fact*i);
        end
    end
    fprintf('    1/%d\n',fact)
    ap_e=ap_e+(1/fact);
    
end