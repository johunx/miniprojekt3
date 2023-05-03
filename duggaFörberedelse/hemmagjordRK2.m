function [t,y]=hemmagjordRK2(fun,tspan,y1,n)

a = tspan(1);
b = tspan(2);
t = linspace(a,b,n+1);
h = t(1)-t(2);

