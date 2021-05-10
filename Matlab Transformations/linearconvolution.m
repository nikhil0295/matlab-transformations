clc;
clear all;
close all;
x=[1 3 2 5 7];
h=[1 1 1 1];
to=zeros((length(x)+length(h)-1),length(h));

for i=1:length(h)
    to(i:i+(length(h)),i)=x;
   
end

    
y=to*h';
for i=1:(length(x)+length(h)-1)
    
        if(i<=(length(h)-1))
        y(i)=y(i)+y(i+length(x));
        else
            if (i>length(x))
               y(i)=0;
            else
                y(i)=y(i);
          
            end
        end
end

subplot(3,1,1),stem(x);
title('Circular convolution from linear convolution');
xlabel('n');
ylabel('x(n)');
subplot(3,1,2),stem(h);
xlabel('n');
ylabel('h(n)');
subplot(3,1,3),stem(y);
xlabel('n');
ylabel('y(n)');