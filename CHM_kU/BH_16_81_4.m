function Y = BH_16_81_4
% ------------------------------------------------------------------------------
% 2023-05-05 Wojciech Bruzda; name[at]uj.edu.pl : name = w.bruzda
%            https://chaos.if.uj.edu.pl/~karol/hadamard/
%            https://github.com/matrix-toolbox/
% ------------------------------------------------------------------------------
% BH matrix BH(16, 4) from Butson Home;
% https://wiki.aalto.fi/display/Butson/Matrices+up+to+monomial+equivalence
% Offset = 8.
% ------------------------------------------------------------------------------

    Y = B16q4(8);

%   Y = exp(2j*pi*[
%       0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0 ;
%       0  0  0  0  0  0  0  0  2  2  2  2  2  2  2  2 ;
%       0  0  0  0  2  2  2  2  0  0  0  0  2  2  2  2 ;
%       0  0  0  0  2  2  2  2  2  2  2  2  0  0  0  0 ;
%       0  0  2  2  0  0  2  2  0  0  2  2  0  0  2  2 ;
%       0  0  2  2  0  0  2  2  2  2  0  0  2  2  0  0 ;
%       0  0  2  2  2  2  0  0  0  0  2  2  2  2  0  0 ;
%       0  0  2  2  2  2  0  0  2  2  0  0  0  0  2  2 ;
%       0  2  0  2  0  2  0  2  0  2  0  2  0  2  0  2 ;
%       0  2  0  2  0  2  0  2  2  0  2  0  2  0  2  0 ;
%       0  2  0  2  2  0  2  0  0  2  0  2  2  0  2  0 ;
%       0  2  0  2  2  0  2  0  2  0  2  0  0  2  0  2 ;
%       0  2  2  0  0  2  2  0  1  3  3  1  1  3  3  1 ;
%       0  2  2  0  0  2  2  0  3  1  1  3  3  1  1  3 ;
%       0  2  2  0  2  0  0  2  1  3  3  1  3  1  1  3 ;
%       0  2  2  0  2  0  0  2  3  1  1  3  1  3  3  1 ;
%   ]/4);

end
