
%reference:
%https://en.wikipedia.org/wiki/State-space_representation
function [sys]=TF(A,B,C,D)

[numerator,denominator] = ss2tf(A,B,C ,D);
sys = tf(numerator,denominator)

%OR
%I=[1 0 0;0 1 0; 0 0 1]
%syms s
%G=C*inv((s*I)-A)*B
%[numerator,denominator]=numden(G)

%double(solve(numerator,s))
%double(solve(denominator,s))


end
