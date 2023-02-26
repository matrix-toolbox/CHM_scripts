function [iiMax, nP, ZTolerance, YPattern, muFactor] = SH_10_0_1007()
% ------------------------------------------------------------------------------
% 2023-01-21 Wojciech Bruzda; name[at]uj.edu.pl : name = w.bruzda
%            https://chaos.if.uj.edu.pl/~karol/hadamard/
%            https://github.com/matrix-toolbox/
% ------------------------------------------------------------------------------
% Symmetric CHM of order N = 10 with generic d = 0 and #L = 1007.
% One must be very lucky to find a convergent path!
%
% Original Sinkhorn's output:
%  p(1) = -0.457691297403653 + 0.889111172059468i;
%  p(2) =  0.215365933598051 - 0.976533417065407i;
%  p(3) = -0.177500987434579 - 0.984120622413609i;
%  p(4) = -0.691612885559933 + 0.722268382616505i;
%  p(5) =  0.852953614675906 - 0.521986715550602i;
%  p(6) =  0.884377136254228 + 0.466773050711768i;
%  p(7) = -0.955697780057225 + 0.294349712406335i;
%  p(8) = -0.182570713228161 + 0.983192725090743i;
%  p(9) = -0.304333478267839 + 0.952565553652555i;
% p(10) = -0.128812685564802 - 0.991668942761436i;
% p(11) = -0.689639073441440 - 0.724153263047839i;
% p(12) = -0.874553829239262 + 0.484928448085842i;
% p(13) =  0.928364058940077 + 0.371672132488171i;
% p(14) = -0.250008434645491 - 0.968243658696565i;
% p(15) =  0.371478951020451 - 0.928441376150775i;
% p(16) =  0.965574707470842 + 0.260125900849180i;
% p(17) = -0.993871464385158 + 0.110541902828298i;
% p(18) = -0.993731246661208 - 0.111795390822525i;
% p(19) = -0.712305492305511 + 0.701869564542732i;
% p(20) = -0.530912472636126 + 0.847426661369227i;
% p(21) =  0.797365192665496 + 0.603497099848472i;
% p(22) =  0.911919133749282 + 0.410369947123274i;
% p(23) = -0.198609926620715 - 0.980078617789264i;
% p(24) =  0.406716231769697 - 0.913554545068360i;
% p(25) = -0.830201136412787 + 0.557463965740313i;
% p(26) = -0.453309168873584 - 0.891353351603695i;
% p(27) =  0.736813703636861 - 0.676095826146658i;
% p(28) = -0.410258274991787 - 0.911969378762666i;
% p(29) = -0.998802734105631 - 0.048919304401395i;
% p(30) =  0.992465162882440 + 0.122527141747175i;
% p(31) =  0.171675830740183 - 0.985153495217709i;
% p(32) = -0.710786867997711 + 0.703407441161951i;
% p(33) = -0.021405862652881 + 0.999770868271368i;
%
% No other soulution found...
% ------------------------------------------------------------------------------

    iiMax = 40000;
    nP = 33;
    ZTolerance = 6e-13;
    YPattern = @pattern;
    muFactor = 0.001;
end

function Y = pattern(p)
    x1 = -(1+p(1)+p(2)+p(3)+p(4)+p(5)+p(6)+p(7)+p(8));
    x2 = -(1+p(1)+p(9)+p(10)+p(11)+p(12)+p(13)+p(14)+p(15));
    x3 = -(1+p(3)+p(10)+p(16)^2/p(17)+p(19)+p(20)+p(21)+p(22)+p(23));
    x4 = -(1+p(4)+p(11)+p(16)+p(19)+p(24)+p(25)+p(26)+p(27));
    x5 = -(1+p(5)+p(12)+p(17)+p(20)+p(24)+p(28)+p(29)+p(30));
    x6 = -(1+p(6)+p(13)+p(16)^2/p(18)+p(21)+p(25)+p(28)+p(31)+p(32));
    x7 = -(1+p(7)+p(14)+p(16)+p(22)+p(26)+p(29)+p(31)+p(33));
    x8 = -(1+p(8)+p(15)+p(18)+p(23)+p(27)+p(30)+p(32)+p(33));
    Y = [
        1 1     1      1              1              1       1       1              1      1     ;
        1 x1    p(1)   p(2)           p(3)           p(4)    p(5)    p(6)           p(7)   p(8)  ;
        1 p(1)  x2     p(9)           p(10)          p(11)   p(12)   p(13)          p(14)  p(15) ;
        1 p(2)  p(9)   p(16)^2        p(16)^2/p(17)  p(16)   p(17)   p(16)^2/p(18)  p(16)  p(18) ;
        1 p(3)  p(10)  p(16)^2/p(17)  x3             p(19)   p(20)   p(21)          p(22)  p(23) ;
        1 p(4)  p(11)  p(16)          p(19)          x4      p(24)   p(25)          p(26)  p(27) ;
        1 p(5)  p(12)  p(17)          p(20)          p(24)   x5      p(28)          p(29)  p(30) ;
        1 p(6)  p(13)  p(16)^2/p(18)  p(21)          p(25)   p(28)   x6             p(31)  p(32) ;
        1 p(7)  p(14)  p(16)          p(22)          p(26)   p(29)   p(31)          x7     p(33) ;
        1 p(8)  p(15)  p(18)          p(23)          p(27)   p(30)   p(32)          p(33)  x8    ;
    ];
end

