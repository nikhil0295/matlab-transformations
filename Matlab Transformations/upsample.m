x=[1 2 3 3 ];
n=1:4;

l=2;
n1=l*n;
y(1)=0;
for i=n1
    if(i<=size(x,2))
    y(i)=x(i);
    else
        y(i)=0;
    end
end

subplot(2,1,1);
stem(x);
subplot(2,1,2);
stem(y);

