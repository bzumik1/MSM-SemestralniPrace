%% inicializace
clc
close all
clear vars
%% zadání
m1 = 5; %kg
m2 = 2; %kg
a = 0.5; %m
b = 0.75; %m
c = 1.25; %m
d = 1; %m
k = 5.8*100; %N/m
kt = 1.1*100; %Nm/rad
b1 = 6.1; %Ns
b2 = 8.8; %Ns
g = 9.81; %m/s2

phi10 = deg2rad(5); %rad
dphi10 = 0; %rad/s
phi20 = 0; %rad
dphi20 = 0; %rad/s
%% dopoètené hodnoty
G1 = m1*g; %kgm/s2°
G2 = m2*g; %kgm/s2
x10 = phi10; %rad
x20 = dphi10; %rad/s
x30 = phi20; %rad
x40 = dphi20; %rad/s

pokus ="finished"