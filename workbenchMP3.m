% Clear variables and command window
clear
clf

% Load data
load bana-58.mat

% Plot the track
plotTrack(portx, porty, ver, v0,a0);

c = 0.3
g = 9.82
massa = 20
bränsle = 10
t = 5
