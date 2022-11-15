clc;
clear all;
close all;

x = [2 -1 3 7 1 2 -3];

%x = input('Enter the 1st Sequence : '); 

xBar = fliplr(x);
len = length(x)*2 - 1;

X = [x,zeros(1,length(x))];
Y = [xBar,zeros(1,length(x))];

result = zeros(1,len);

for i=1:len
    for j=1:i
        result(i) = result(i) + X(j) * Y(i+1-j);
    end
end


lag = -(length(xBar)-1):1:(length(x)-1);
stem(lag,result);
result
lag
hold on;

%with built in function
[r,ll] = xcorr(x,x);
r
ll
stem(ll,r);
