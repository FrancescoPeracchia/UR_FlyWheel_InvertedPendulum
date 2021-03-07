clear all
close all
clc


A=[0 1 0;23.2031 0 0.0045; -23.5031 0 -19.9513]
B=[0;0.1393;-621.6819]
C=[107.47 0 0]
D=[0]

MyTF=TF(A,B,C,D)
P=pole(MyTF)
[Z,gain]=zero(MyTF)



