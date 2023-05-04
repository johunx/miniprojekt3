% Clear variables and command window
clear
clf

% Load data
load bana-58.mat

% Plot the track
plotTrack(portx, porty, ver, v0,a0);
hold on

starthastighet = 50;

hastighet_xled = starthastighet*cos(pi/3);
hastighet_yled = starthastighet*sin(pi/3);
startvinkel = 60;
tspan = [0,50];
y0 = [70, hastighet_xled, 0, hastighet_yled];

[t,y] = ode45(@rocketEquation, tspan, y0);

plot(y(:,1),y(:,3))