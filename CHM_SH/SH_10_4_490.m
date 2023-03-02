function [iiMax, nP, ZTolerance, YPattern, muFactor] = SH_10_4_490()
% ------------------------------------------------------------------------------
% 2023-01-21 Wojciech Bruzda; name[at]uj.edu.pl : name = w.bruzda
%            https://chaos.if.uj.edu.pl/~karol/hadamard/
%            https://github.com/matrix-toolbox/
% ------------------------------------------------------------------------------
% Symmetric CHM of order N = 10 with generic d = 4 and #L = 490.
% It also contains:
% ..............................................................................
% s1) BH(10, 8) with d = 8 and #L = 8, see "BH_10_8.8.m".
% ..............................................................................
% s2) non-BH with d = 4, #L = 216 for
%  p1 = -0.701321763703834 - 0.712844852513746i
%  p2 = +0.985257313237556 + 0.171079007221553i
%  p3 = -0.974997042477527 + 0.222217837178018i
%  p4 = +0.610479836742180 - 0.792031797929377i
%  p5 = -0.416314878596351 - 0.909220502331148i
%  p6 = -0.342054000712097 + 0.939680297014282i
%  p7 = +0.033368976767415 + 0.999443100626292i
%  p8 = -0.482368017957168 - 0.875968661112984i
%  p9 = +0.287949576699794 + 0.957645571847126i
% p10 = +0.999400743679922 + 0.034614354421519i
% p11 = +0.821610608564751 - 0.570049127614331i
% p12 = -0.610479836742359 + 0.792031797929239i
% p13 = -0.867925367157476 - 0.496694631584196i
% p14 = -0.969920517276044 - 0.243421835846688i
% p15 = -0.974997042477564 + 0.222217837177854i
% p16 = -0.416314878596148 - 0.909220502331241i
% p17 = -0.969920517276106 - 0.243421835846441i
% p18 = +0.999400743679943 + 0.034614354420903i
% p19 = +0.033368976767325 + 0.999443100626295i
% p20 = +0.985257313237560 + 0.171079007221529i
% p21 = -0.342054000712126 + 0.939680297014271i
% p22 = -0.701321763703977 - 0.712844852513604i
% ..............................................................................
% s3) non-BH with d = 4, #L = 220 for
%  p1 = -0.874660295610294 - 0.484736389476707i
%  p2 = -0.101032812204355 + 0.99488309406587i
%  p3 = +0.943466351929444 - 0.331468313382963i
%  p4 = +0.785637054385722 + 0.618687658496698i
%  p5 = -0.500811917203535 - 0.865556135433699i
%  p6 = -0.668567538617243 + 0.743651427960225i
%  p7 = -0.958847203745488 - 0.283922594855462i
%  p8 = -0.507922419436445 - 0.86140281856622i
%  p9 = +0.882738780502246 + 0.469864071192305i
% p10 = -0.663727105669826 - 0.747974818559526i
% p11 = +0.676290891026386 + 0.73663466570257i
% p12 = -0.785637054385614 - 0.618687658496834i
% p13 = -0.566177863805503 + 0.824283098538747i
% p14 = +0.956476714058402 + 0.291808662421186i
% p15 = -0.500811917203476 - 0.865556135433733i
% p16 = +0.94346635192952 - 0.331468313382746i
% p17 = -0.663727105669852 - 0.747974818559503i
% p18 = +0.956476714058444 + 0.29180866242105i
% p19 = -0.958847203745481 - 0.283922594855486i
% p20 = -0.101032812204202 + 0.994883094065886i
% p21 = -0.874660295610236 - 0.48473638947681i
% p22 = -0.668567538617579 + 0.743651427959923i
% ------------------------------------------------------------------------------

    iiMax = 40000;
    nP = 22;
    ZTolerance = 6e-13;
    YPattern = @pattern;
    muFactor = 0.0007;
end

function Y = pattern(p)
    Y = [
        1  1     1      1      1      1      1     1      1      1     ;
        1  p(1)  p(2)   p(3)   p(4)   p(5)   p(6)  p(7)   p(8)   p(9)  ;
        1  p(2)  p(10)  p(11)  p(12)  p(13)  p(7)  p(14)  p(15)  p(16) ;
        1  p(3)  p(11)  p(17) -p(4)   p(18)  p(5)  p(13)  p(19)  p(20) ;
        1  p(4)  p(12) -p(4)  -1     -p(4)   p(4)  p(12) -p(12) -p(12) ;
        1  p(5)  p(13)  p(18) -p(4)   p(17)  p(3)  p(11)  p(20)  p(19) ;
        1  p(6)  p(7)   p(5)   p(4)   p(3)   p(1)  p(2)   p(9)   p(8)  ;
        1  p(7)  p(14)  p(13)  p(12)  p(11)  p(2)  p(10)  p(16)  p(15) ;
        1  p(8)  p(15)  p(19) -p(12)  p(20)  p(9)  p(16)  p(21)  p(22) ;
        1  p(9)  p(16)  p(20) -p(12)  p(19)  p(8)  p(15)  p(22)  p(21) ;
    ];
end
