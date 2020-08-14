# Seam-Carving
Code already completed, just uploading to github. 

For more information aboud seam carving visit:  
https://en.wikipedia.org/wiki/Seam_carving  

First the energy of the image is calculated by taking  
the L2 norm of the gradient vector of the image.  
Energy in this case roughly corresponds to the importance of a  
given pixel.  
Then a cumulative minimum sum is taken over the vertical or horizontal  
directions of the image. This will map will be used to calculate
the seams using a dynamic programming algorithm (described in the souce above).  

# energy_img(image):  
Input: image  
Output: Energy of each pixel.  

# cumulative_min_energy_map(energyImg, seamDirection)
Inputs:  Energy mapping of the image using the energy_img function.  
And the direction in which you want the seam to go.  

Outputs: A matrix containing the cumulative min sum of the given  
seam direction.  

# find_horizontal_seam(cumulativeEnergyMap)  
Inputs: the cumulative min energy map, calculated using the above  
function.   

Ouput: Matlab vector with the horizontal indices of the seam.   

# view_seam(im,seam,seamDirection)  
Inputs: image, seam vector, and direction you want to resize the image.  

Ouput: Plot of the seam.   

# decrease_height(im,energyImg)
Inputs: image, energy map of the image.  

Ouput: The image with a particular seam removed.   
Note the above function can be put in a loop and  
you can decrease the height as much as your want.  


The rest of the code and images are example usages of the  
seam carving algorithm.   
