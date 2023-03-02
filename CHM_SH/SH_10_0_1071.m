function [iiMax, nP, ZTolerance, YPattern, muFactor] = SH_10_0_1071()
% ------------------------------------------------------------------------------
% 2023-01-21 Wojciech Bruzda; name[at]uj.edu.pl : name = w.bruzda
%            https://chaos.if.uj.edu.pl/~karol/hadamard/
%            https://github.com/matrix-toolbox/
% ------------------------------------------------------------------------------
% Symmetric CHM of order N = 10 with generic d = 0 and #L = 1071.
%
% Original Sinkhorn's output:
%  p(1) =  0.373274248795404 + 0.927721043841427i;
%  p(2) = -0.214916451009970 + 0.976632438067300i;
%  p(3) =  0.770849190598095 - 0.637017680566452i;
%  p(4) = -0.777743711489954 - 0.628581513598539i;
%  p(5) =  0.045544876064623 - 0.998962293714962i;
%  p(6) = -0.905682133939904 + 0.423957394394840i;
%  p(7) = -0.771776615160375 + 0.635893746070517i;
%  p(8) = -0.506214339900365 - 0.862407700614528i;
%  p(9) =  0.635494866101769 + 0.772105093337879i;
% p(10) = -0.990934773398868 - 0.134343867999006i;
% p(11) = -0.983129971143855 + 0.182908337258538i;
% p(12) =  0.999969901184602 + 0.007758654835501i;
% p(13) = -0.198929373055548 - 0.980013828747190i;
% p(14) =  0.769204839519842 - 0.639002280793468i;
% p(15) = -0.852936438563240 + 0.522014781180626i;
% p(16) = -0.998974759570380 - 0.045270627798834i;
% p(17) =  0.956213595813705 - 0.292669710050466i;
% p(18) = -0.814665856919658 + 0.579930635136099i;
% p(19) =  0.530262370785803 - 0.847833602854133i;
% p(20) = -0.581242402704461 - 0.813730464772178i;
% p(21) =  0.933046397837325 + 0.359756055519282i;
% p(22) = -0.956003065486114 - 0.293356675024027i;
% p(23) =  0.651447137812538 - 0.758694027020018i;
% p(24) =  0.521633618064312 + 0.853169601254719i;
% p(25) = -0.938891902263588 - 0.344212137879914i;
% p(26) =  0.003593000622054 + 0.999993545152432i;
% p(27) =  0.845073590965151 + 0.534650003135943i;
% p(28) = -0.776624686164498 - 0.629963567867138i;
% p(29) = -0.297018587905185 - 0.954871697370285i;
% p(30) = -0.388707026952414 - 0.921361409653028i;
% p(31) = -0.970748463682452 - 0.240098771879739i;
% p(32) =  0.991528207390393 - 0.129891546873512i;
% p(33) = -0.386501973368423 - 0.922288579882845i;
% p(34) = -0.006147578446285 + 0.999981103461084i;
% p(35) =  0.485714985850429 + 0.874117241861936i;
%
% No other solution found...
% ------------------------------------------------------------------------------

    iiMax = 40000;
    nP = 35;
    ZTolerance = 6e-13;
    YPattern = @pattern;
    muFactor = 0.001;
end

function Y = pattern(p)
    x1 = -(1+p(1)+p(2)+p(3)+p(4)+p(5)+p(6)+p(7)+p(8));
    x2 = -(1+p(1)+p(9)+p(10)+p(11)+p(12)+p(13)+p(14)+p(15));
    x3 = -(1+p(3)+p(10)+p(16)+p(21)+p(22)+p(23)+p(24)+p(25));
    x4 = -(1+p(4)+p(11)+p(17)+p(21)+p(26)+p(27)+p(28)+p(29));
    x5 = -(1+p(5)+p(12)+p(18)+p(22)+p(26)+p(30)+p(31)+p(32));
    x6 = -(1+p(6)+p(13)+p(17)*p(19)/p(18)+p(23)+p(27)+p(30)+p(33)+p(34));
    x7 = -(1+p(7)+p(14)+p(19)+p(24)+p(28)+p(31)+p(33)+p(35));
    x8 = -(1+p(8)+p(15)+p(20)+p(25)+p(29)+p(32)+p(34)+p(35));
    Y = [
        1  1     1      1                 1    1      1     1                 1     1     ;
        1  x1    p(1)   p(2)              p(3)  p(4)  p(5)  p(6)              p(7)  p(8)  ;
        1  p(1)  x2     p(9)              p(10) p(11) p(12) p(13)             p(14) p(15) ;
        1  p(2)  p(9)   p(17)*p(19)       p(16) p(17) p(18) p(17)*p(19)/p(18) p(19) p(20) ;
        1  p(3)  p(10)  p(16)             x3    p(21) p(22) p(23)             p(24) p(25) ;
        1  p(4)  p(11)  p(17)             p(21) x4    p(26) p(27)             p(28) p(29) ;
        1  p(5)  p(12)  p(18)             p(22) p(26) x5    p(30)             p(31) p(32) ;
        1  p(6)  p(13)  p(17)*p(19)/p(18) p(23) p(27) p(30) x6                p(33) p(34) ;
        1  p(7)  p(14)  p(19)             p(24) p(28) p(31) p(33)             x7    p(35) ;
        1  p(8)  p(15)  p(20)             p(25) p(29) p(32) p(34)             p(35) x8    ;
    ];
end
