function [t,y] = odeEuler(fun,tspan,y1, n)

a = tspan(1);
b = tspan(2);
t = linspace(a, b, n+1);
h = t(2) - t(1);
y = zeros(length(y1),n+1);

y(:,1) = y1;

for i=1:n
    y(:,i+1) = y(:,i) + h * fun(t(i), y(:,i));
end

end