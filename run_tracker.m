
%error('Note: you need  to compile the Matconvnet according to Readme.txt, and then comment the FIRST line in run_HDT.m')
function  [positions_8]=run_tracker(video)
addpath(genpath('./sequences'));
addpath(genpath('./matconvnet1.08'));
addpath(genpath('./cnnnet'));
run('./matconvnet1.08/matlab/vl_setupnn.m')
pathModel = './cnnnet/vgg-verydeep-19.mat';
base_path='./sequences';
show_visualization = 1;

[img_files, pos, target_sz]=load_video_info(base_path,video);

% extra area surrounding the target
padding = struct('generic', 1.5, 'large', 1, 'height', 0.4);
lambda = 1e-4;  %regularization
output_sigma_factor = 0.1;  %spatial bandwidth (proportional to target)
interp_factor = 0.01;  
cell_size = 4;
bSaveImage = 0;

[positions] = tracker_ensemble(img_files, pos, target_sz, ...
                                padding, lambda, output_sigma_factor, interp_factor, ...
                                cell_size, show_visualization, bSaveImage, pathModel);

%postions(y,x,h,w)
%vottir2015��bounding box
%���ĸ������꣨left-top��left-bottom,right-bottom,right-top��(x1,y1,x2,y2,...)
 positions_8=[ positions(:,2)-1/2*positions(:,4),positions(:,1)+1/2*positions(:,3),positions(:,2)-1/2*positions(:,4),positions(:,1)-1/2*positions(:,3),positions(:,2)+1/2*positions(:,4),positions(:,1)-1/2*positions(:,3),...  
     positions(:,2)+1/2*positions(:,4),positions(:,1)+1/2*positions(:,3)];
 



