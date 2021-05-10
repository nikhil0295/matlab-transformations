clc,clear all,close all;
x=[1 2 3];
fx=fliplr(x);

zo=zeros((length(fx)+length(x)-1),length(fx));
temp=x;
j=0;
for i=1:length(fx)
     zo(i:(length(x)+j),i)=temp;
    j=j+1;
end
y=zo*fx(:);

    subplot(2,1,1),stem(x);
    title('Autocorrelation');
    xlabel('n');
    ylabel('x(n)');
     subplot(2,1,2),stem(y);
    xlabel('n');
    ylabel('y(n)');
    