
clc;
clear all;
close all;
n=0:10;


for i=0:10
    if i>=0
        y(i+1)=i;
    else
        y(i+1)=0;
    end
    
end
stem(n,y);
axis([ -5 5 -5 5]);
title('Ramp signal');
xlabel('n');ylabel('r(n)');
    