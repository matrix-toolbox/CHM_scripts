function Y = TU_16_10_48(p)
% ------------------------------------------------------------------------------
% 2022-12-29 Wojciech Bruzda; name[at]uj.edu.pl : name = w.bruzda
%            https://chaos.if.uj.edu.pl/~karol/hadamard/
%            https://github.com/matrix-toolbox/
% ------------------------------------------------------------------------------
% p1   p2   d    #L     q : BH(16, q)
% -----------------------------------
% r    r    10   48     --
% 1/3  1/3  10   12     12
% 1/4  1/3  17   12     12
% 1/2  1/3  21   12     12
% 2/3  1/4  25   12     12
% 1/3  0    31   12     12
% a/b  0    31   --     f(a,b)
% 0    0    35   4      12
% 0    1/4  35   4      4
% 1/4  0    37   4      4
% 1/4  1/4  39   4      4
% :    :    :    :      :
%
%
% ********************************************
% "exhaustive" check for Y(p1/16, p2/16)
% p1    p2    d
% 1  &  1  &  10
% 2  &  3  &  11
% 4  &  1  &  17
% 0  &  1  &  21
% 1  &  4  &  25
% 1  &  0  &  31
% 4  &  0  &  37
% 0  &  0  &  35
% 4  &  4  &  39
% ********************************************
% ------------------------------------------------------------------------------

    a = exp(2j*pi*p(1));
    b = exp(2j*pi*p(2));

    Y = [
        1   1    1     1        1        1        1     1     1      1      1       1      1      1      1      1    ;
        1  -1   -a^2   a^2      a^2     -a^2      1    -1     a     -a     -a       a     -a      a      a     -a    ;
        1  -1    a^2  -a^2     -a^2      a^2      1    -1     1j*a   1j*a   1j*a    1j*a  -1j*a  -1j*a  -1j*a  -1j*a ;
        1   1   -1    -1       -1       -1        1     1     1j    -1j    -1j      1j     1j    -1j    -1j     1j   ;
        1  -1j   a*b   1j*a*b  -1j*a*b  -a*b     -1     1j    1      b     -b      -1     -1j*b  -1j     1j     1j*b ;
        1  -1j  -a/b  -1j*a/b   a/b      1j*a/b  -1j    1    -1      1/b    1j      1j/b  -1j/b   1j    -1/b   -1    ;
        1   1j  -a/b   1j*a/b   a/b     -1j*a/b   1j    1    -1/b   -1      1j/b   -1j    -1j    -1j/b  -1      1/b  ;
        1   1j   a*b  -1j*a*b   1j*a*b  -a*b     -1    -1j   -b      1     -1       b      1j    -1j*b   1j*b  -1j   ;
        1  -1j  -a*b  -1j*a*b   1j*a*b   a*b     -1     1j    1     -b      b      -1      1j*b  -1j     1j    -1j*b ;
        1  -1j   a/b   1j*a/b  -a/b     -1j*a/b  -1j    1    -1     -1/b    1j     -1j/b   1j/b   1j     1/b   -1    ;
        1   1j   a/b  -1j*a/b  -a/b      1j*a/b   1j    1     1/b   -1     -1j/b   -1j    -1j     1j/b  -1     -1/b  ;
        1   1j  -a*b   1j*a*b  -1j*a*b   a*b     -1    -1j    b      1     -1      -b      1j     1j*b  -1j*b  -1j   ;
        1  -1   -a^2   a^2     -a^2      a^2      1    -1    -a      a     -1j*a   -1j*a   a     -a      1j*a   1j*a ;
        1   1   -1    -1       -1       -1       -1    -1    -1j     1j     1       1     -1j     1j     1      1    ;
        1   1    1     1        1        1       -1    -1    -1     -1     -1j      1j    -1     -1     -1j     1j   ;
        1  -1    a^2  -a^2      a^2     -a^2      1    -1    -1j*a  -1j*a   a      -a      1j*a   1j*a  -a      a    ;
    ];

    w = exp(2j*pi/3);

    DL = diag([1,1,1,1,1,-a*b,1j*a*b,1j,w^2,w^2*a*b,exp(5j*pi/6)*a*b,-exp(5j*pi/6),-1,a^2,-a^2,1]);
    DR = diag([1,1,1,1,1,-1,a^2,-a^2,1j/a,1/a,1j,1,-1j/a,-1/a,1j,1]);
    Y = DL * Y * DR;

end

