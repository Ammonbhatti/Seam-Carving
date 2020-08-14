

% smile = imread('smile.jpg');
% 
% subplot(2,2, 1); 
% imshow(smile); 
% title('Original');
% 
% temp_smile = smile; 
% smile_e = energy_img(temp_smile); 
% 
% for i= 1:200 
%     [temp_smile, ~] = decrease_width(temp_smile, smile_e); 
%     %recompute energy map
%     smile_e = energy_img(temp_smile);     
% end
% 
% subplot(2, 2, 2);  
% imshow(temp_smile); 
% title('Width Decreased By 200 Pixels');
% 
% smile_resize = imresize(smile, [size(smile,1), size(smile,2) - 200]); 
% 
% subplot(2, 2, 3); 
% imshow(smile_resize); 
% title('Matlab imresized');
% 
% 
% but = imread('butterfly.jpg');
% 
% 
% subplot(2,2, 1); 
% imshow(but); 
% title('Original');
% 
% temp_but = but; 
% but_e = energy_img(temp_but); 
% 
% for i= 1:600
%     [temp_but, ~] = decrease_width(temp_but, but_e); 
%     %recompute energy map
%     but_e = energy_img(temp_but);     
% end
% 
% for i= 1:200
%     [temp_but, ~] = decrease_height(temp_but, but_e); 
%     %recompute energy map
%     but_e = energy_img(temp_but);     
% end
% 
% subplot(2, 2, 2);  
% imshow(temp_but); 
% title('Seam Carved');
% 
% but_resize = imresize(but, [size(but, 1) - 200, size(but,2) - 600]);
% 
% subplot(2, 2, 3); 
% imshow(but_resize); 
% title('Matlab imresized');



bump = imread('bump.jpg');


subplot(2,2, 1); 
imshow(bump); 
title('Original');

temp_bump= bump; 
bump_e = energy_img(temp_bump); 

for i= 1:100
    [temp_bump, ~] = decrease_width(temp_bump, bump_e); 
    %recompute energy map
    bump_e = energy_img(temp_bump);     
end



subplot(2, 2, 2);  
imshow(temp_bump); 
title('Seam Carved');

bump_resized = imresize(bump,  [size(bump, 1), size(bump,2) - 100]);

subplot(2, 2, 3); 
imshow(bump_resized); 
title('Matlab imresized');












