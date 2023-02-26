function Y = BH_10_9_12B
% ------------------------------------------------------------------------------
% 2023-02-24 Wojciech Bruzda; name[at]uj.edu.pl : name = w.bruzda
%            https://chaos.if.uj.edu.pl/~karol/hadamard/
%            https://github.com/matrix-toolbox/
% ------------------------------------------------------------------------------
% Symmetric BH(10, 12) with d = 9 and #L = 12.
% It is a special solution of "SH_10_0_349B.m".
% ------------------------------------------------------------------------------

    Y = exp(2j*pi*[
        0  0  0  0  0  0  0  0  0  0;
        0  6  5  3  9 11  9  5  3 11;
        0  5 11  4  6  2  2  8 10  8;
        0  3  4  6  0 10  6 10  9  4;
        0  9  6  0  0  6  3  6  0  6;
        0 11  2 10  6  2  8  8  4  5;
        0  9  2  6  3  8  0  2  6  8;
        0  5  8 10  6  8  2 11  4  2;
        0  3 10  9  0  4  6  4  6 10;
        0 11  8  4  6  5  8  2 10  2;
    ] / 12);

end
