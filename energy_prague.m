prague = imread('inputSeamCarvingPrague.jpg');
prague_e = energy_img_sobel(prague); 

c_e_ver = cumulative_min_energy_map(prague_e, 'VERTICAL'); 
c_e_hor = cumulative_min_energy_map(prague_e, 'HORIZONTAL'); 

ver_seam = find_vertical_seam(c_e_ver); 
hor_seam = find_horizontal_seam(c_e_hor); 

figure; 
imshow(prague); 
title('Original'); 

figure; 
view_seam(prague, ver_seam, 'VERTICAL');
title('Sobel Vertical'); 

figure;
view_seam(prague, hor_seam, 'HORIZONTAL');
title('Sobel Horizontal'); 




















