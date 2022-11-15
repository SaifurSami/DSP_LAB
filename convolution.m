clc;
clear all;
close all;

x = input('Enter the first sequence ');
h = input('Enter the second sequence ');

lx = length(x);
lh = length(h);
l = lx+lh-1;

X = [x,zeros(1,lh)];
H = [h,zeros(1,lx)];

y = zeros(1,l);

for i=1:l
    for j=1:i
        y(i) = y(i) + X(j) * H(i-j+1);
    end
end
lg = -1:1:5;
stem(lg,y);
xlabel('--->n');
ylabel('y(n)');
title('convolution of two signals');

hold on;

y1 = conv(x,h);
stem(lg,y1);



