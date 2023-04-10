function cent=centuries(year)
%
cent='';
if isscalar(year)
    if year<=3000 && year>=1 && uint16(year)==year && isinteger(uint16(year))
        cents={'I' 'II' 'III' 'IV' 'V' 'VI' 'VII' 'VIII' 'IX' 'X' 'XI' 'XII' ...
            'XIII' 'XIV' 'XV' 'XVI' 'XVII' 'XVIII' 'XIX' 'XX' 'XXI' 'XXII' ...
            'XXIII' 'XXIV' 'XXV' 'XXVI' 'XXVII' 'XXVIII' 'XXIX' 'XXX'};
        cent=cents{ceil(year/100)};
    end
end    