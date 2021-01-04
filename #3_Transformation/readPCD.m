% *********************************************
% Point Cloud Data preprocessing #1 Visualization
% Jongwon Kim
% Deep.I Inc
% deepi.contac.us@gmail.com
% https://deep-eye.tistory.com
% *********************************************

addpath(genpath('../#0_Sample'))
addpath(genpath('../#0_Function'))
addpath(genpath('../#1_Visualization'))
addpath(genpath('../#2_Segmentation'))
% load pcd file
lidar_dir = fopen('1.bin');
lidar_file = fread(lidar_dir,[4 inf],'single')';
fclose(lidar_dir);

% X, Y, Z, INTENSITY
% 1st preprocessing
xyzi = round(lidar_file,2); 

% 2nd preprocessing
xyzi = ROIextraction(xyzi,[-30,30],[-30,30],[-2,5],'height'); 

% 3rd preprocessing
aidx = segmentation(xyzi,60);

% 2D scatter
gscatter(xyzi(:,1),xyzi(:,2),aidx);
legend off
title('angle segmentation')

% 4th preprocessing
roi = xyzi(aidx == 2,:);
gt = xyzi(aidx ~= 2,:);
scatter(roi (:,1),roi (:,2),'.r');
hold on
scatter(gt (:,1),gt  (:,2),'.k');


x = xyzi;

z  =deg2rad(+30);

u_1 = [cos(z) ; 0; -sin(z)];
u_2 = [0 ; 1 ;0];
u_3 = [sin(z) ; 0 ;  cos(z)];
P = [u_1 , u_2 , u_3];

x_p = x(:,1);
y_p = x(:,2);
z_p = x(:,3);

new_x = (inv(P)*[x_p' ; y_p' ; z_p'])';
new_x(:,1) = new_x(:,1);
new_x(:,2) = new_x(:,2);

x = new_x;

scatter3(x (:,1),x (:,2),x (:,3),'.k');
