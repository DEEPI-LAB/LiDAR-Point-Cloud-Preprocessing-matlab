% *********************************************
% Point Cloud Data preprocessing
% Jongwon Kim
% Deep.I Inc
% deepi.contac.us@gmail.com
% https://deep-eye.tistory.com
% *********************************************

addpath('sample\','-end')

% load pcd file
lidar_dir = fopen('1.bin');
lidar_file = fread(lidar_dir,[4 inf],'single')';
fclose(lidar_dir);

% extract x,y,z points
 x = lidar_file(:,1:3); 
