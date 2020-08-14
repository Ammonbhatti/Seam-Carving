function view_seam(im,seam,seamDirection)
    if(strcmp(seamDirection, 'HORIZONTAL'))
        imshow(im); 
        hold on; 
        plot(seam, 'r'); 
        
    elseif(strcmp(seamDirection, 'VERTICAL'))
        imshow(im); 
        hold on; 
        plot(seam, 1:size(seam,2), 'r'); 
        
    end

end