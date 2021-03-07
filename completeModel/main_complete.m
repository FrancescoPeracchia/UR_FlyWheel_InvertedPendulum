clear all
close all
clc


nphi=0
ntau=0
%inertia moments of the pendulum bar with respect to the fulcrum and the
%flywheel with respect to its rotation axis
Iw=
Ip=
%mass
Mw
Mp
%Lp is the pendulum length (from the flywheel axis to the fulcrum)
%Lc is the pendulum mass center distance to the fulcrum.
Lp
Lc


g=9.8
alpha1=Mw*(Lp.^2)+Lp
alpha2=((Mp*Lc)+(Mw*Lp))*g

betha=(1/(alpha1-Iw))+1/Iw

%due to infrared sensor
Km=


%Armatrure Data Resistence Induttance 
Ra=
La=0
Ka=
%torque constant
M=
