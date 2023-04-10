function output=dial(input)
%
val=isstrprop(input, 'alphanum');
m=1;for i=1:length(val);m=m*val(i);end
if length(input)<=16 && m
    for i=1:length(input)
        if input(i)=='A' || input(i)=='B' || input(i)=='C'
            input(i)='2';
        elseif input(i)=='D' || input(i)=='E' || input(i)=='F'
            input(i)='3';
        elseif input(i)=='G' || input(i)=='H' || input(i)=='I'
            input(i)='4';
        elseif input(i)=='J' || input(i)=='K' || input(i)=='L'
            input(i)='5';
        elseif input(i)=='M' || input(i)=='N' || input(i)=='O'
            input(i)='6';
        elseif input(i)=='P' || input(i)=='Q' || input(i)=='R' || input(i)=='S'
            input(i)='7';
        elseif input(i)=='T' || input(i)=='U' || input(i)=='V'
            input(i)='8';
        elseif input(i)=='W' || input(i)=='X' || input(i)=='Y' || input(i)=='Z'
            input(i)='9';
        end
    end
    output=uint64(str2double(input));
else
    %Bad input
    output=uint64(0);
end