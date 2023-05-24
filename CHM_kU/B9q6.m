function B = B9q6(j)
% ------------------------------------------------------------------------------
% 2022-12-25 Wojciech Bruzda; name[at]uj.edu.pl : name = w.bruzda
%            https://chaos.if.uj.edu.pl/~karol/hadamard/
%            https://github.com/matrix-toolbox/
% ------------------------------------------------------------------------------
% Taken from Butson Home;
% https://wiki.aalto.fi/display/Butson/Matrices+up+to+monomial+equivalence
% ------------------------------------------------------------------------------

    BH{1} = [ 0 0 0 0 0 0 0 0 0;0 0 0 0 2 3 3 3 4;0 0 2 4 4 0 2 4 2;0 0 4 2 4 3 5 1 2;0 2 4 4 2 0 4 2 0;0 3 0 3 0 3 3 5 1;0 3 2 5 4 3 1 1 5;0 3 4 1 2 5 1 5 3;0 4 2 2 0 1 5 3 4];
    BH{2} = [ 0 0 0 0 0 0 0 0 0;0 0 0 0 2 3 3 3 4;0 0 2 4 4 0 2 4 2;0 0 4 2 4 3 5 1 2;0 2 4 4 2 0 4 2 0;0 3 0 3 4 2 2 0 5;0 3 2 5 2 4 0 0 3;0 3 4 1 0 4 2 4 1;0 4 2 2 0 1 5 3 4];
    BH{3} = [ 0 0 0 0 0 0 0 0 0;0 0 0 0 2 3 3 3 4;0 0 2 4 4 0 2 4 2;0 0 4 2 4 3 5 1 2;0 2 4 4 2 1 5 3 0;0 3 1 4 1 4 4 0 2;0 3 3 0 5 4 2 2 0;0 3 5 2 3 0 2 0 4;0 4 2 2 0 2 0 4 4];
    BH{4} = [ 0 0 0 0 0 0 0 0 0;0 0 0 0 2 3 3 3 4;0 0 2 4 4 0 2 4 2;0 0 4 2 4 3 5 1 2;0 2 4 4 2 1 5 3 0;0 3 1 4 5 3 3 1 0;0 3 3 0 3 5 1 1 4;0 3 5 2 1 5 3 5 2;0 4 2 2 0 2 0 4 4];
    BH{5} = [ 0 0 0 0 0 0 0 0 0;0 0 0 0 2 3 3 3 4;0 0 2 4 4 0 2 4 2;0 0 4 2 4 3 5 1 2;0 2 4 4 2 2 0 4 0;0 3 0 3 2 0 4 0 3;0 3 2 5 0 4 4 2 1;0 3 4 1 4 0 2 2 5;0 4 2 2 0 3 1 5 4];
    BH{6} = [ 0 0 0 0 0 0 0 0 0;0 0 0 0 2 3 3 3 4;0 0 2 4 4 0 2 4 2;0 0 4 2 4 3 5 1 2;0 2 4 4 2 2 0 4 0;0 3 0 3 4 1 3 1 5;0 3 2 5 2 5 5 1 3;0 3 4 1 0 5 3 3 1;0 4 2 2 0 3 1 5 4];
    BH{7} = [ 0 0 0 0 0 0 0 0 0;0 0 0 1 2 3 3 4 4;0 0 2 4 0 4 4 2 2;0 2 0 4 4 0 2 2 4;0 2 4 0 4 2 4 0 2;0 2 4 3 0 3 1 4 0;0 4 2 1 4 5 1 4 2;0 4 2 4 2 2 0 0 4;0 4 4 2 2 0 4 2 0];
    BH{8} = [ 0 0 0 0 0 0 0 0 0;0 0 0 1 2 3 3 4 4;0 0 4 3 2 5 5 2 2;0 2 2 5 0 3 5 2 4;0 2 4 0 4 4 2 0 2;0 2 4 3 0 1 3 4 0;0 4 0 3 4 3 1 2 0;0 4 2 1 4 1 5 4 2;0 4 2 4 2 0 2 0 4];
    BH{9} = [ 0 0 0 0 0 0 0 0 0;0 0 0 2 2 2 4 4 4;0 0 0 4 4 4 2 2 2;0 2 4 0 2 4 0 2 4;0 2 4 2 4 0 4 0 2;0 2 4 4 0 2 2 4 0;0 4 2 0 4 2 0 4 2;0 4 2 2 0 4 4 2 0;0 4 2 4 2 0 2 0 4];
    BH{10} = [ 0 0 0 0 0 0 0 0 0;0 0 0 2 2 2 4 4 4;0 0 0 4 4 4 2 2 2;0 2 4 0 2 4 0 2 4;0 2 4 2 4 0 4 0 2;0 2 4 4 0 2 2 4 0;0 4 2 0 4 2 1 5 3;0 4 2 2 0 4 5 3 1;0 4 2 4 2 0 3 1 5];
    BH{11} = [ 0 0 0 0 0 0 0 0 0;0 0 0 2 2 2 4 4 4;0 0 0 4 4 4 2 2 2;0 2 4 0 2 4 0 2 4;0 2 4 2 4 0 4 0 2;0 2 4 4 0 2 2 4 0;0 4 2 0 4 2 2 0 4;0 4 2 2 0 4 0 4 2;0 4 2 4 2 0 4 2 0];
    BH{12} = [ 0 0 0 0 0 0 0 0 0;0 0 0 2 2 2 4 4 4;0 0 0 4 4 4 2 2 2;0 2 4 0 2 4 0 2 4;0 2 4 2 4 0 4 0 2;0 2 4 4 0 2 2 4 0;0 4 2 0 4 2 3 1 5;0 4 2 2 0 4 1 5 3;0 4 2 4 2 0 5 3 1];
    BH{13} = [ 0 0 0 0 0 0 0 0 0;0 0 0 2 2 2 4 4 4;0 0 0 4 4 4 2 2 2;0 2 4 0 2 4 0 2 4;0 2 4 2 4 0 4 0 2;0 2 4 4 0 2 2 4 0;0 4 2 0 4 2 4 2 0;0 4 2 2 0 4 2 0 4;0 4 2 4 2 0 0 4 2];
    BH{14} = [ 0 0 0 0 0 0 0 0 0;0 0 0 2 2 2 4 4 4;0 0 0 4 4 4 2 2 2;0 2 4 0 2 4 0 2 4;0 2 4 2 4 0 4 0 2;0 2 4 4 0 2 2 4 0;0 4 2 0 4 2 5 3 1;0 4 2 2 0 4 3 1 5;0 4 2 4 2 0 1 5 3];
    BH{15} = [ 0 0 0 0 0 0 0 0 0;0 0 0 2 2 2 4 4 4;0 0 0 4 4 4 2 2 2;0 2 4 0 2 4 1 3 5;0 2 4 2 4 0 5 1 3;0 2 4 4 0 2 3 5 1;0 4 2 1 5 3 0 4 2;0 4 2 3 1 5 4 2 0;0 4 2 5 3 1 2 0 4];
    BH{16} = [ 0 0 0 0 0 0 0 0 0;0 0 0 2 2 2 4 4 4;0 0 0 4 4 4 2 2 2;0 2 4 0 2 4 1 3 5;0 2 4 2 4 0 5 1 3;0 2 4 4 0 2 3 5 1;0 4 2 1 5 3 1 5 3;0 4 2 3 1 5 5 3 1;0 4 2 5 3 1 3 1 5];
    BH{17} = [ 0 0 0 0 0 0 0 0 0;0 0 0 2 2 2 4 4 4;0 0 0 4 4 4 2 2 2;0 2 4 0 2 4 1 3 5;0 2 4 2 4 0 5 1 3;0 2 4 4 0 2 3 5 1;0 4 2 1 5 3 2 0 4;0 4 2 3 1 5 0 4 2;0 4 2 5 3 1 4 2 0];

    MAX_BH = size(BH, 2);
    if j > MAX_BH
        error("Index out of scope! Must be in range 1 .. %d", MAX_BH);
    else
        B = exp(2j * pi * BH{j} / 6);
    end

end
