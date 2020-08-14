function energy = energy_img(im)
    if( length(size(im))== 3)
        im = rgb2gray(im); 
    end
    im = double(im); 
    dx= [-1,1]; 
    dy= [-1; 1]; 
    h = imfilter(im, dx); 
    v = imfilter(im, dy); 
    energy = sqrt( h.^2 + v.^2); 
end
    