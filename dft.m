clc;
clear all;
close all;

fs = 8000;
ts = 0:1/fs:1;
f1 = 1500;
f2 = 1785;
input_signal = sin(2*pi*f1*ts) + 0.5 * sin(2*pi*f2*ts + 3*pi/4);
%%hold on;

% 8 point dft

len = 8 ;
n = 0:len-1;
y = calculate_dft(input_signal, -1, len, 1);

subplot(2,2,1);
stem(n,abs(y));
title('Magnitude');
hold on;

subplot(2,2,2);
stem(n,real(y));
title('Real Part');
hold on;

subplot(2,2,3);
stem(n,abs(y).^2);
title('Power Spectrum');
hold on;

idft = calculate_dft(y,1,len,len);
subplot(2,2,4);
plot(n,idft);

%function output = calculate_dft(signal,coff,len,division)
%output = zeros(1,len);

%for j=1:len 
%    for k=1:len
%        output(j) = output(j)+signal(k) * exp(coff*1i*2*pi*(j-1)*(k-1)/len);
%    end
%    output(j) = output(j)/division;
%end
%end

%#... Time shifting property
%m = 2;
%for k = 0:nPoint-1
%  xD(k+1) = xD(k+1)*exp(-i*2*pi*k*m/nPoint);
%endfor

%for k = 0:nPoint-1
%  xInv(k+1) = 0;
%  for n = 0:nPoint-1
%    xInv(k+1) = xInv(k+1)+xD(n+1)*exp(i*2*pi*n*k/nPoint);
%  endfor
%  xInv(k+1) = xInv(k+1)/nPoint;
%endfor

%#... Ploting shifted Inverse DFT
%n = 0:nPoint-1
%subplot(3,2,5);
%stem(n, xInv, ".");
%axis tight;



