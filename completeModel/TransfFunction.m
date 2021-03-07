
%reference:
%https://en.wikipedia.org/wiki/State-space_representation
function [numerator,denominator]=TransfFunction(alpha1, alpha2, nphi, ntau, Iw, M, betha, La, Ka, Km, Ra)


%STATE MATRIX
A=[0   1   0   0   0;
    alpha2/(alpha1-Iw) -nphi/(alpha1-Iw) 0 ntau/(alpha1-Iw) -M/(alpha1-Iw);
    0   0   0   1   0;
    -alpha2/(alpha1-Iw) nphi/(alpha1-Iw) 0 -ntau*betha M*betha;
    0   0   0  -M/La  -Ra/La]


%INPUT MATRIX
B=[0;0;0;0;-Ka/La]


%OUTPUT MATRIX
C=[Km 0 0 0 0]


%FEEDFORWARD MATRIX
D=[0]


[numerator,denominator] = ss2tf(A,B,C ,D);
sys = tf(numerator,denominator)



end

