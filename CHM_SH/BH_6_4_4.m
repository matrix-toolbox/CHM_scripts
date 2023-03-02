function Y = BH_6_4_4
% ------------------------------------------------------------------------------
% 2023-02-02 Wojciech Bruzda; name[at]uj.edu.pl : name = w.bruzda
%            https://chaos.if.uj.edu.pl/~karol/hadamard/
%            https://github.com/matrix-toolbox/
% ------------------------------------------------------------------------------
% Symmetric BH(6, 4) with d = 4 and #L = 4.
% ------------------------------------------------------------------------------

    Y = [
        1   1   1   1   1   1 ;
        1  -1  -I   I   1  -1 ;
        1  -I  -1  -I   I   I ;
        1   I  -I  -1  -1   1 ;
        1   1   I  -1  -I  -1 ;
        1  -1   I   1  -1  -I ;
    ];

end