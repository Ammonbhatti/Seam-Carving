function [reducedColorImg,reducedEnergyImg] = decrease_height(im,energyImg)
    min_energy_hor = cumulative_min_energy_map(energyImg, 'HORIZONTAL'); 
    hor_seam= find_horizontal_seam(min_energy_hor); 
    
    rows = size(im, 1);
    cols = size(im, 2); 
    for c=1:cols
        r_ind = hor_seam(c); 
        
        if(r_ind == rows)
            im(1:(rows-1) ,c,:) = im(2:rows,c, :);
        else
            im(r_ind:(rows-1), c, :) = im((r_ind+1):rows, c, :); 
        end    
    end
    im(rows, :, :) = []; 
    reducedColorImg= uint8(im); 
    
    for c=1:cols
        r_ind = hor_seam(c); 
        
        if(r_ind == rows)
            energyImg(1:(rows-1) ,c) = energyImg(2:rows,c);
        else
            energyImg(r_ind:(rows-1), c) = energyImg((r_ind+1):rows, c); 
        end    
    end
    energyImg(rows, :) = []; 
     
    reducedEnergyImg = energyImg; 

end