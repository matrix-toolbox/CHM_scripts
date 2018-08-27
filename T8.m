function H = T8
% 20180101
% W. Bruzda, name[at]uj.edu.pl : name = w.bruzda
% http://chaos.if.uj.edu.pl/~karol/hadamard/
% https://github.com/matrix-toolbox/
%
% >> version % 9.1.0.441655 (R2016b)
% >> H = T8
% >> abs(H .* H'), norm(H * H' - 8 * eye(8), 'fro')
%
% some first attempt -- see: T8*.nb files

  a = -acot(1-sqrt(5))/2/pi;
  b = sqrt(8-sqrt(50-6*sqrt(5)))/4;
  c = sqrt(8+sqrt(50-6*sqrt(5)))/4;
  X = b + i*c;
  Z = (i - 1 - exp(pi*i*3/10) + exp(pi*i*4/5) - X + i*X') / (1 - i * X*X);
  W = -i * Z * X*X;
  T = [
    1     1                      1                    1                      1                     1                1 1;
    1     W                      Z                    X                     -i*X'                  exp(i*pi*3/10)  -i exp(i*pi*9/5);
    1    -X                      i*X'                -i*Z'                   W'*exp(3*pi*i/2)      exp(i*pi*13/10) -i exp(i*pi*4/5);
    1     Z*exp(i*pi/5)          W*exp(i*pi/5)       -i*X'*exp(i*pi/5)       X*exp(i*pi/5)         exp(i*pi*17/10)  i exp(i*pi/5);
    1 -i*X'*exp(i*pi/5)          X*exp(i*pi/5)        i*W'*exp(i*pi/5)      -i*Z'*exp(6*pi*i/5)    exp(i*pi*7/10)   i exp(i*pi*6/5);
    1       exp(2*pi*i*a)        exp(2*pi*i*(a+1/2))  exp(2*pi*i*(1/2-a))    exp(2*pi*i*(1-a))     1 -1 -1;
    1       exp(2*pi*i*(a+1/10)) exp(2*pi*i*(a+3/5))  exp(2*pi*i*(11/10-a))  exp(2*pi*i*(3/5-a))  -1  1 -1;
    1       exp(pi*i/5)          exp(pi*i/5)          exp(6*pi*i/5)          exp(6*pi*i/5)        -1 -1  1;
  ]
  H = T;
end
