function min_energy = cumulative_min_energy_map(energyImg,seamDirection)
    m= zeros(size(energyImg));
    if(strcmp(seamDirection, 'HORIZONTAL'))
        for c = 1:size(energyImg,2)
            for r = 1:size(energyImg,1)
                if(c== 1)
                    m(r,c) = energyImg(r,c);
                elseif(r == 1)
                    %top of image
                    m(r,c) = energyImg(r,c) + min([m(r+1,c-1), m(r,c-1)]);
                elseif(r == size(energyImg,1))
                    %bottom of image
                    m(r,c) = energyImg(r,c) + min([m(r,c-1), m(r-1,c-1)]);
                else 
                    %somewhere in the middle of image
                    m(r,c) = energyImg(r,c) + min([m(r+1, c-1), m(r,c-1), m(r-1,c-1)]);
                end
            end    
        end
    elseif(strcmp(seamDirection ,'VERTICAL'))
        for r = 1:size(energyImg,1)
            for c = 1:size(energyImg,2)
                if(r== 1)
                    m(r,c) = energyImg(r,c);
                elseif(c == 1)
                    %leftmost side of image
                    m(r,c) = energyImg(r,c) + min([m(r-1,c), m(r-1,c+1)]);
                elseif(c == size(energyImg,2))
                    %rightmost side of image
                    m(r,c) = energyImg(r,c) + min([m(r-1,c), m(r-1,c-1)]);
                else 
                    %somewhere in the middle of image
                    m(r,c) = energyImg(r,c) + min([m(r-1, c+1), m(r -1 ,c), m(r-1,c-1)]);
                end
            end    
        end
    end
    min_energy = m;
end

        
        







