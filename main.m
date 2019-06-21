clc
close all
clear all

images_dir = 'Images';
listing = cat(1, dir(fullfile(images_dir, '*.jpg')));
% The final output will be saved in this directory:
result_dir = fullfile(images_dir, 'results');
% Preparations for saving results.
if ~exist(result_dir, 'dir'), mkdir(result_dir); end

for i_img = 1:length(listing)-1

	img_origin = imread(fullfile(images_dir,listing(i_img).name));
    [~, img_name, ~] = fileparts(listing(i_img).name);
    img_name = strrep(img_name, '_input', '');
%  	imwrite(uint8(img_origin), fullfile(result_dir, [img_name, '_Input.jpg']));
    RGB_model = RGBcolor(img_origin);
    saveas(RGB_model,fullfile(result_dir, [img_name, '_Input_RGB.jpg'])); 
%     close all  
end
