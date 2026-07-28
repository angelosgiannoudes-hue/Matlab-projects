N=input("How many pendulums are there? ");
l=zeros(N,1);
v=zeros(N,1);
f0=zeros(N,1);
for i=1:N
    l(i)=input("What's the length of this pendulum? ");
    v(i)=input("What's the angular velocity of this pendulum? ");
    f0(i)=input("What's the initial phase of this pendulum? ");
end
t=0:0.01:2*pi/v(1);
x=zeros(length(t),1);
y=zeros(length(t),1);
for j=1:length(t)
    for i=1:N
        x(j)=x(j)+l(i)*cos(v(i)*t(j)+f0(i));
        y(j)=y(j)+l(i)*sin(v(i)*t(j)+f0(i));
    end
end
plot(x,y)
axis equal
