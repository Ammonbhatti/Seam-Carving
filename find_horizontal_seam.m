function hor_seam = find_horizontal_seam(cumulativeEnergyMap)
    seam = []; 
    top = 0;
    rows= size(cumulativeEnergyMap, 1);
    cols = size(cumulativeEnergyMap,2); 
    correct_row =0; 
    for c = cols:-1:1
        if(c ~= cols)
            top = seam(1);
        end
        if(c == cols)
            r= find(cumulativeEnergyMap(:,c)== min(cumulativeEnergyMap(:,c)));
            correct_row = r(1); 
            
        elseif(top == 1 )
            r = find(cumulativeEnergyMap(1:2,c) == min(cumulativeEnergyMap(1:2,c)));
            correct_row = top -1  + r(1); 
        elseif(top == rows)
            r = find(cumulativeEnergyMap(:,c) == min(cumulativeEnergyMap((rows-1):rows,c)));
            correct_row= top -2 + r(1); 
        else
            from =top-1;
            to = top+1; 
            r = find(cumulativeEnergyMap(from:to,c) == min(cumulativeEnergyMap(from:to, c)));
            correct_row = top -2 + r(1); 
        end
        seam= [correct_row, seam];  
    end
    hor_seam = seam; 
end
