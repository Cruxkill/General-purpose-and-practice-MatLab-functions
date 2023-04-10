function B=integerize(A)
%


if min(A(:))>=-128 && max(A(:))<=127
    %int8
    B='int8';
elseif min(A(:))>=-32768 && max(A(:))<=32767
    %int16
    B='int16';
elseif min(A(:))>=-2147483648 && max(A(:))<=2147483647
    %int32
    B='int32';
elseif min(A(:))>=-9223372036854775808 && max(A(:))<=9223372036854775807
    %int64
    B='int64';
else
    %NONE
    B='NONE';
end