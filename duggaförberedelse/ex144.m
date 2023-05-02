[t,y] = ode45(@yprim1,[0 3],1)
plot(t,y,'o'), xlabel('t'),ylabel('y')

%% b)
[t,y]=ode45(@yprim2,[0 5],2);
plot(t,y),xlabel('t'), ylabel('y')


