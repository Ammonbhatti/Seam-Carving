function [reducedColorImg,reducedEnergyImg] = decrease_width(im,energyImg)
    min_energy_ver = cumulative_min_energy_map(energyImg, 'VERTICAL'); 
    ver_seam= find_vertical_seam(min_energy_ver); 
    
    rows = size(im, 1);
    cols = size(im, 2); 
    for r= 1:rows
        c_ind = ver_seam(r); 
        if(c_ind == cols)
            im(r, 1:(cols-1), :) = im(r, 2:cols,:);
        else
            im(r, c_ind:(cols-1), :) = im(r, (c_ind+1):cols,:);
        end
    end
    im(: , cols, :) = []; 
    reducedColorImg= uint8(im); 
    
    for r= 1:rows
        c_ind = ver_seam(r); 
        if(c_ind == cols)
            energyImg(r, 1:(cols-1)) = energyImg(r, 2:cols);
        else
            energyImg(r, c_ind:(cols-1)) = energyImg(r, (c_ind+1):cols);
        end
    end
    energyImg(: , cols) = []; 
    
    reducedEnergyImg = energyImg; 
    
end
