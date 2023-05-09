function [t,y] = RK2(@funk, tspan, y1, n);
a = tspan(1);
b = tspan(2);
h = (b-a)/n;
%tspan(2)-tspan(1)
y =zeros(length(y), length(t));
y(:,1)= y1;

for i=1:n
k1 = funk(t(i),y(:,i));
k2 = funk(t(i)+h,y(:,i)+h*k1);
k3 = 

end
end