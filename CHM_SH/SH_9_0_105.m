function [iiMax, nP, ZTolerance, YPattern, muFactor] = SH_9_0_105()
% ------------------------------------------------------------------------------
% 2023-01-15 Wojciech Bruzda; name[at]uj.edu.pl : name = w.bruzda
%            https://chaos.if.uj.edu.pl/~karol/hadamard/
%            https://github.com/matrix-toolbox/
% ------------------------------------------------------------------------------
% Symmetric CHM of order N = 9 with generic d = 0 and #L = 105.
% ------------------------------------------------------------------------------

    iiMax = 10000;
    nP = 4;
    ZTolerance = 5e-13;
    YPattern = @pattern;
    muFactor = 0.01;
end

function Y = pattern(p)
    Y = [
        1     1        1        1        1        1        1        1        1      ;
        1     p(1)     p(2)     p(2)'    p(1)'    p(3)     p(4)     p(4)'    p(3)'  ;
        1     p(2)     p(4)     p(4)'    p(2)'    p(1)'    p(3)     p(3)'    p(1)   ;
        1     p(2)'    p(4)'    p(4)     p(2)     p(1)     p(3)'    p(3)     p(1)'  ;
        1     p(1)'    p(2)'    p(2)     p(1)     p(3)'    p(4)'    p(4)     p(3)   ;
        1     p(3)     p(1)'    p(1)     p(3)'    p(4)'    p(2)'    p(2)     p(4)   ;
        1     p(4)     p(3)     p(3)'    p(4)'    p(2)'    p(1)'    p(1)     p(2)   ;
        1     p(4)'    p(3)'    p(3)     p(4)     p(2)     p(1)     p(1)'    p(2)'  ;
        1     p(3)'    p(1)     p(1)'    p(3)     p(4)     p(2)     p(2)'    p(4)'  ;
    ];
end