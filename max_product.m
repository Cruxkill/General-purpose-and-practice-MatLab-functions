function [product, ind] = max_product(v,n)
%*** Write a function max_product that takes v a vector and n, a positive 
%integer, as inputs and computes the largest product of n consecutive 
%elements of v. It returns the product and the index of the element of v 
%that is the first term of the product. If there are multiple such products 
%in v, the function must return the one with the smallest starting index. 
%As an example, the following call 
%>> [product, ind] = max_product([1 2 2 1 3 1],3); 
%will assign 6 to product and 3 to ind since the max 3-term product in the 
%input vector is 2*1*3. If v has fewer than n elements, the function 
%returns 0 and -1, respectively.
N=numel(v);
if N<n
    product=0;ind=-1;
else
    temp=zeros(N,1);
    for i=1:N
        temp(i)=1;
        if i>N-(n-1);return;end
        for k=i:i+n-1
            temp(i)=temp(i)*v(k);
        end
        if i==1
            product=temp(i);ind=i;
        else
            if temp(i)>product
                product=temp(i);ind=i;
            end
        end
    end
end 