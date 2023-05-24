function check_TU(X)
% ------------------------------------------------------------------------------
% 2023-01-27 Wojciech Bruzda; name[at]uj.edu.pl : name = w.bruzda
%            https://chaos.if.uj.edu.pl/~karol/hadamard/
%            https://github.com/matrix-toolbox/
% ------------------------------------------------------------------------------
% Confirmation of 2-Unitarity.
% ------------------------------------------------------------------------------

    SL3(X, "minimal");
    d = sqrt(size(X, 1));
    printf("LU-invariance:\n");
    SL3(kron(DM(d), DM(d)) * X * kron(DM(d), DM(d)), "minimal")
    epX = e_p(X);
    gtX = g_t(X);
    printf("ep(X) = (%g, %g)\ngt(X) = (%g, %g) \n", real(epX), imag(epX), real(gtX), imag(gtX));

end

