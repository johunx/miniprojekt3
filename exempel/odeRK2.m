function [t,y] = odeRK2(fun,tspan,y1,n)

a = tspan(1);
b = tspan(2);
t = linspace(a,b,n+1);
h = t(2)-t(1);

y = zeros(1,length(t));
y(1) = y1;

for i = 1:n
    k1 = fun(t(i),y(i));
    k2 = fun(t(i)+h,y(i) + h*k1);    
    y(i+1) = y(i) + h*(k1+k2)/2;
end

end