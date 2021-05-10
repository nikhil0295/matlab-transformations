clc;
clear all;
close all;
n=1:1:16;
for i=1:30;
    if((i>0 && i<=4)||(i>8&&i<=12))
        y(i)=1;
    else if((i>=5&& i<=8)||(i>=13 && i<=16))
            y(i)=-1;
        
        end
    end
end
stem(n,y);
title('square wave');
xlabel('n');ylabel('x(n)');

