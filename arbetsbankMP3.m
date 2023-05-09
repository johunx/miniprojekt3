% Clear variables and command window
clear
clc

% Load data
load bana-58.mat

% Plot the track
plotTrack(portx, porty, ver, v0,a0);
hold on

starthastighet = 50;

hastighet_xled = starthastighet*cos(pi/3);
hastighet_yled = starthastighet*sin(pi/3);
tspan = [0,38];
y0 = [70, hastighet_xled, 0, hastighet_yled];


[t,y] = ode45(@rocketEquation, tspan, y0);

plot(y(:,1),y(:,3))



%%
vinklar = [pi/2 pi/2 5*pi/4 5*pi/4 3*pi/2 3*pi/2 7*pi/4 7*pi/4 3*pi/2 3*pi/2 pi pi 5*pi/4 5*pi/4];

vinklarTid = [0 5 5 8 8 13 13 17 17 26 26 33 33 40];
vinklar = rad2deg(vinklar)
plot(vinklarTid, vinklar);

grid on
xlabel('Tid (s)')
ylabel('Vinkel (grader)')
title('Vinkel över tid')
ylim([0 360])
xlim([0 38])

%% farttabell
hastighet = sqrt(y(:,2).^2+y(:,4).^2);
plot(t,hastighet);
hold on
grid on
plot(0, 50, 'rx', LineWidth=3)
xlabel('Avstånd x (m)')
ylabel('Fart (m/s)')
title('Fart över avstånd')
legend('Fart (m/s) över avstånd','Begynnelsefart', Location='northeast')
