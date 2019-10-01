%tek boyuttaki conv() fonksiyonu hazir fonksiyon kullanmadan yaptik
%1D convolution function wihhout using build-in functions 
%writen by Sefa Kurtipek date: 01.10.2019
close all
clear all
x = [1:10];
h = [1 2];
XLength = length(x);
HLength = length(h);
X = [x,zeros(1,HLength)]; 
H = [h,zeros(1,XLength)];
Y = zeros(1,HLength+XLength-1);
for i=1:HLength+XLength-1
    Y(i)=0;
    for j=1:XLength
        if(i-j+1>0)
            Y(i)=Y(i)+X(j)*H(i-j+1);
        end
    end
end
stem(Y);
ylabel('Y[n]');
xlabel('----->n');
title('Convolution of 1D Two Signals without using conv() function');