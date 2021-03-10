% *********************************************
% Point Cloud Data preprocessing #4 Voxcelization
% Jongwon Kim
% Deep.I Inc
% deepi.contac.us@gmail.com
% https://deep-eye.tistory.com
% *********************************************

%%
addpath(genpath('../#0_Sample'))
addpath(genpath('../#0_Function'))
addpath(genpath('../#1_Visualization'))
addpath(genpath('../#2_Segmentation'))
addpath(genpath('../##3_Transformation'))
% load pcd file
lidar_dir = fopen('1.bin');
lidar_file = fread(lidar_dir,[4 inf],'single')';
fclose(lidar_dir);

% X, Y, Z, INTENSITY
% 1st preprocessing
xyzi = round(lidar_file,2); 

% 2nd preprocessing
xyzi = ROIextraction(xyzi,[-30,30],[-30,30],[-2,5],'height'); 

% 2D Voxcelization
w = 200;
h = 200;
[count2D, ~, ~, ~] = histcn(xyzi(:,1:2), w , h);
hist_xyzi = voxcelization2D(count2D);

scatter(hist_xyzi(:,1),hist_xyzi(:,2),'.r')

% 3D Voxcelization
w = 200;
h = 200;
ch = 50;
[count3D, ~, ~, LOC] = histcn(xyzi(:,1:3), w , h, ch);
hist_xyzi = voxcelization3D(count3D,ch);

scatter3(hist_xyzi(:,1),hist_xyzi(:,2),hist_xyzi(:,3),'.r')

