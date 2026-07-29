N=100;
c1=zeros(40000,1);
n=0;
for a=-2:0.01:2
    for b=-2:0.01:2
        c=a+b*i;
        z=zeros(N+1,1);
        for j=2:N+1
            z(j)=z(j-1)*z(j-1)+c;
        end
        if abs(z(N+1))<100
           n=n+1;
           c1(n)=c;
        end
    end
end
plot(c1, 'k.')
axis equal
