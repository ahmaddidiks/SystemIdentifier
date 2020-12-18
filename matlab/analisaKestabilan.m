%analisa kestabilan
%plot(x,y)
num = [45.71 0.6757];
den = [1 14.15 24.59 10.93];

%fungsi alih open loop
disp("Fungsi alih open loop")
sys = tf(num,den)

%fungsi alih close loop
disp("Fungsi alih close loop")
sys1 = feedback(sys,1)

%akar-akar persamaan karakteristiknya
disp("Akar-akar pers. karakteristiknya")
damp(sys1)

%Posisi akar2 pes. karakteristik
sgrid
pzmap(sys1)
grid on