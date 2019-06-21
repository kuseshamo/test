clc,clear all,close all; 
images_dir = 'Images';
listing = cat(1, dir(fullfile(images_dir, '*.bmp')));
% The final output will be saved in this directory:
result_dir = fullfile(images_dir, 'results');
% Preparations for saving results.
if ~exist(result_dir, 'dir'), mkdir(result_dir); end

for i_img = 1:length(listing)

	img_origin = imread(fullfile(images_dir,listing(i_img).name));
    [~, img_name, ~] = fileparts(listing(i_img).name);
    img_name = strrep(img_name, '_input', '');
    
    RGB_Fre = RGBfrequency(img_origin);
    saveas(RGB_Fre,fullfile(result_dir, [img_name, '_RGB_Frequency.jpg'])); 
%     close all  
end
   
