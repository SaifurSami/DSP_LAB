clc;
clear all;
close all;

t = 0:.001:1;
a = 26;
f = 5;

%orginal analog signal
x_con = a * sin(2*pi*f*t);
subplot(3,1,1);
plot(t,x_con,'r');
title('Analog Signal');
hold on;

%sampling
fs = 250;
ts = 0:1/fs:1;
x_dis = a * sin(2*pi*f*ts);
subplot(3,1,2);
stem(ts,x_dis);
title('Sampled Signal');
hold on;

%quantization
nBits = 3;
qLevels = 2^(nBits);
scalingFactor = (max(x_dis) - min(x_dis))/(qLevels-1);
x_quan = x_dis/scalingFactor;
x_quan = round(x_quan);
x_quan = x_quan * scalingFactor;
subplot(3,1,3);
plot(ts,x_quan,LineWidth=1,Color='g');
title('Quantized Signal');

