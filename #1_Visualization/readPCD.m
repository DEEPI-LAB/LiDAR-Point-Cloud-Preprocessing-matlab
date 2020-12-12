% *********************************************
% Point Cloud Data preprocessing #1 Visualization
% Jongwon Kim
% Deep.I Inc
% deepi.contac.us@gmail.com
% https://deep-eye.tistory.com
% *********************************************

addpath(genpath('../#0_Sample'))
addpath(genpath('../#0_Function'))

% load pcd file
lidar_dir = fopen('1.bin');
lidar_file = fread(lidar_dir,[4 inf],'single')';
fclose(lidar_dir);

% X, Y, Z, INTENSITY
% 1st preprocessing
xyzi = round(lidar_file,1); 

tic
%2D scatter
visualization2D(xyzi)
toc
tic
%3D scatter 
visualization3D(xyzi)
toc
