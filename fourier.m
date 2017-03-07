% 20170217
% name[at]alumni.uj.edu.pl, name = w.bruzda

function F = fourier(N, METHOD)
    switch METHOD
    case 'classic'
        F = fourier_classic(N);
    case 'hermitian'
        F = fourier_h(N);
    otherwise
        error('Not implemented!');
    end
end

function F = fourier_classic(N)
    F = zeros(N, N);
%   r = 1 : N; % problem with vectorisation in older Maltab versions...
%   c = 1 : N;
%   F = exp(2 * pi * i * (r - 1) .* transpose(c - 1) / N); % dephased classic Fourier

    for r = 1 : N
    for c = 1 : N
        F(r, c) = exp(2 * pi * i * (r - 1) * (c - 1) / N); % dephased classic Fourier
    end
    end
end

function H = fourier_h(n)
    N = n^2; % hermitian Fouriers exist only in square dimensions
    H = zeros(N, N);
    w = exp(2 * pi * i / n);
%   r = 0 : N - 1;
%   c = 0 : N - 1;
%   H = w.^(mod(r, n) .* floor(transpose(c) / n) - mod(transpose(c), n) .* floor(r / n))

    for r = 0 : N - 1 % non-vectorized version
        for c = 0 : N - 1
            H(r + 1, c + 1) = w^(mod(r, n) * floor(c / n) - mod(c, n) * floor(r / n));
        end
    end

%   for r1 = 0 : n - 1 % yet another version
%   for r2 = 0 : n - 1
%   for c1 = 0 : n - 1
%   for c2 = 0 : n - 1
%       H(r1 + n * r2 + 1, c1 + n * c2 + 1) = w^(r1 * c2 - c1 * r2);
%   end, end, end, end
end

