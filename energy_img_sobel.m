function energy = energy_img_sobel(im)
    if( length(size(im))== 3)
        im = rgb2gray(im); 
    end
    im = double(im); 
    sobel_x = [-1 0 1; -2 0 2; -1 0 1]; 
    sobel_y = [1 2 1; 0 0 0; -1 -2 -1];
    h = imfilter(im, sobel_x); 
    v = imfilter(im, sobel_y); 
    energy = sqrt( h.^2 + v.^2); 
end
    