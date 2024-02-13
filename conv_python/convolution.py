import numpy as np
data = np.load('trial_input.npz')
def convolution(image,kernel):
    #image and kernel are representing the image and filter for the convolution operation
    image_h,image_w =image.shape
    #image_h and image_w represent height and width of image i.e image dimensions
    kernel_h,kernel_w=kernel.shape
    #similarly for the filter dimensions
    output_h= image_h-kernel_h+1;
    output_w= image_w-kernel_w+1;
    #for an image of size (n*n) and a filter of size (f*f)
    #we get an ouput of size (n-f+1)*(n-f+1)
    output=np.zeros((output_h,output_w))
    for i in range(output_h):
        for j in range(output_w):
            output[i,j]=np.sum(image[i:i+kernel_h,j:j+kernel_w]*kernel)
            
    return output
    
if __name__=="__main__":
  
   image=data['image'];
   kernel=data['kernel'];

   result= convolution(image,kernel)
   np.save('test_output.npy', result)
   print(result)
   

