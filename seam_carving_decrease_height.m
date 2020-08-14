
prague = imread('inputSeamCarvingPrague.jpg'); 
mall = imread('inputSeamCarvingMall.jpg'); 

prague_e = energy_img(prague); 

for i= 1:50 
    [prague, ~] = decrease_height(prague, prague_e); 
    %recompute energy map
    prague_e = energy_img(prague);     
end




mall_e = energy_img(mall); 
for i= 1:50
    [mall, ~] = decrease_height(mall, mall_e); 
    %recompute energy map
    mall_e = energy_img(mall);     
end

figure; 
imshow(prague); 

figure;
imshow(mall); 

imwrite(mall, 'outputReduceHeightMall.png');
imwrite(prague, 'outputReduceHeightPrague.png'); 

