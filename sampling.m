clc;
clear all;
close all;

t = 0:.01:1;
a1 = 10;
a2 = 20;
a3 = 40;
f1 = 4;
f2 = 8;
f3 = 16;

%orginal analog signal
x = a1 * sin(2*pi*f1*t) + a2 * sin(2*pi*f2*t) + a3 * sin(2*pi*f3*t);

%under sampling
fs1 = 50;
ts1 = 0:1/fs1:1;
x1 = a1 * sin(2*pi*f1*ts1) + a2 * sin(2*pi*f2*ts1) + a3 * sin(2*pi*f3*ts1);

%sampling at Nyquist Rate
fs2 = 60;
ts2 = 0:1/fs2:1;
x2 = a1 * sin(2*pi*f1*ts2) + a2 * sin(2*pi*f2*ts2) + a3 * sin(2*pi*f3*ts2);

%over sampling
fs3 = 100;
ts3 = 0:1/fs3:1;
x3 = a1 * sin(2*pi*f1*ts3) + a2 * sin(2*pi*f2*ts3) + a3 * sin(2*pi*f3*ts3);

subplot(2,2,1);
plot(t,x,'red');
xlabel('time');
ylabel('amplitude');
title('Original Analog Signal');

%hold on;

subplot(2,2,2)
plot(ts1,x1,'g');
xlabel('sampling point');
ylabel('amplitude');
title('Under Sampling Discret Signal');

subplot(2,2,3)
plot(ts1,x1,'b');
xlabel('sampling point');
ylabel('amplitude');
title('Nyquist Sampling Discret Signal');

subplot(2,2,4)
plot(ts1,x1);
xlabel('sampling point');
ylabel('amplitude');
title('Over Sampling Discret Signal');
