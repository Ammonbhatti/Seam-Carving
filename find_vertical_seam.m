function ver_seam = find_vertical_seam(cumulativeEnergyMap)
    seam = [ ];
    rows= size(cumulativeEnergyMap, 1);
    cols = size(cumulativeEnergyMap,2); 
    column =0; 
    for r = rows:-1:1
        if(r ~= rows)
            top = seam(1);
        end
        if(r == rows)
            c= find(cumulativeEnergyMap(r, :)== min(cumulativeEnergyMap(r,:)));
            column = c(1); 
        elseif(top == 1 )
            c = find(cumulativeEnergyMap(r,1:2) == min(cumulativeEnergyMap(r,1:2)));
            column = top -1 + c(1); 
        elseif(top == cols)
            c = find(cumulativeEnergyMap(r,(cols-1):cols) == min(cumulativeEnergyMap(r,(cols-1):cols)));
            column = top - 2 + c(1); 
        else
            from =top-1;
            to = top+1; 
            c = find(cumulativeEnergyMap(r,from:to) == min(cumulativeEnergyMap(r,from:to)));
            column = top -2 + c(1); 
        end
        seam= [column, seam];  
    end
    ver_seam = seam; 
end
