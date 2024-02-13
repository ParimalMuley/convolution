//this code is about creating a convolution function using c++
#include <iostream>
#include <vector>
//including vector to create 2D arrays ;
using namespace std;

//declaring a function which returns a 2D array
vector<vector<float>> convolution(vector<vector<float>>&image,vector<vector<float>>&filter)
{
    //image_h signifies the height of the image
    //image_w signifies the width of the image 
    //filter_h signifies  the height of the filter
    //filter_w signifies  the width of the filter
   int image_h=image.size();
   int image_w=image[0].size();
   int filter_h=filter.size();
   int filter_w=filter[0].size();
   /*output height and width are calculated using n=f+1 
   where n and f are the dimensions of the image anf filter respectively*/
   int output_h=image_h-filter_h +1;
   int output_w=image_w-filter_w+1;
   vector<vector<float>> output(output_h,vector<float>(output_w,0));
   for(int i=0;i<output_h;++i)
   {
    for(int j=0;j<output_w;++j)
    {
     //the first two for loops are to iterate ove the output matrix;

     //declaring a sum function to store the total values
        float sum=0;
        
        for(int l=0;l<filter_h;++l)
        {
            for(int m=0;m<filter_w;++m)
            {
                sum=sum+image[i+l][j+m]*filter[l][m];
            /*here the image is iterated for the size of the filter 
              and for each value of ther image array it is multiplied with\
              with the values in the filter and added in to the sum variable*/ 
            }
        }
        /*now for all the values calculated for the ith and the jth position it is thenm stored in the output array */

        output[i][j]=sum;
    }
   }
   /*the loops iterate over the output array and caluclate for 
   each value at the [i][j] position of the output array */
   return output;
}


int main(){
    //declaring image and filter using 2D vectors
    vector<vector<float>>image={{1,2,3,4},{5,6,7,8},{9,10,11,12}};
    vector<vector<float>>filter={{1,0},{0,1}};
    auto output =convolution(image,filter);
    //iterating over the result array to print output
    for(const auto& i:output)
    {
        for(float j:i)
        {
            cout<<j<<" ";
        }
        cout<<endl;
    }
    return 0;
}
