clc;clear all
%% pre-processing select mat file
load S2_gt.mat
%% the target name is gt
% num is the number of classification
num = 8;
imshow(gt,[]);
N=length(gt);
for i=1:num
    subplot(3,3,i);imshow(gt==i-1);
end
imwrite(class_img,'class.tif');
% output images are pngs
Output_path='D:\work\[code]change_to_gray\';
for i=1:8
     I=(gt==i-1);
     imwrite(I,[Output_path,'imc',int2str(i),'.png']);
end