#include <iostream>
#include <vector>
#include <pthread.h>
#include<thread>

using namespace std;

// Struct to hold arguments for the convolution worker function
struct ConvolutionArgs {
    vector<vector<float>>& image;
    vector<vector<float>>& filter;
    vector<vector<float>>& output;
    int start_row;
    int end_row;
};

// Function to perform convolution operation for a subset of rows
void* convolution_worker(void* arg) {
    ConvolutionArgs* args = static_cast<ConvolutionArgs*>(arg);

    vector<vector<float>>& image = args->image;
    vector<vector<float>>& filter = args->filter;
    vector<vector<float>>& output = args->output;
    int start_row = args->start_row;
    int end_row = args->end_row;

    int filter_h = filter.size();
    int filter_w = filter[0].size();

    // Iterate over the output matrix
    for (int i = start_row; i < end_row; ++i) {
        for (int j = 0; j < image[0].size() - filter_w + 1; ++j) {
            float sum = 0;

            // Iterate over the image array for the size of the filter
            for (int l = 0; l < filter_h; ++l) {
                for (int m = 0; m < filter_w; ++m) {
                    sum += image[i + l][j + m] * filter[l][m];
                }
            }

            // Store the sum at [i][j] location of the output array
            output[i][j] = sum;
        }
    }

    // Clean up
    delete args;

    return nullptr;
}

// Function to perform convolution using multiple threads
vector<vector<float>> convolution_multi_thread(vector<vector<float>>& image, vector<vector<float>>& filter) { 
    int num_threads = thread::hardware_concurrency();
    int output_h = image.size() - filter.size() + 1;

    vector<vector<float>> output(output_h, vector<float>(image[0].size() - filter[0].size() + 1, 0));

    pthread_t threads[num_threads];
    int rows_per_thread = output_h / num_threads;
    int start_row = 0;
    int end_row = 0;

    for (int i = 0; i < num_threads; ++i) {
        end_row = start_row + rows_per_thread;
        if (i == num_threads - 1) {
            end_row = output_h;
        }

        // Create arguments for the thread
        ConvolutionArgs* args = new ConvolutionArgs { image, filter, output, start_row, end_row };

        // Create threads
        pthread_create(&threads[i], nullptr, convolution_worker, args);

        start_row = end_row;
    }

    // Join threads after operation
    for (int i = 0; i < num_threads; ++i) {
        pthread_join(threads[i], nullptr);
    }

    return output;
}

int main() {
    vector<vector<float>> image = {{1, 2, 3, 4},
                                   {5, 6, 7, 8},
                                   {9, 10, 11, 12}};
    vector<vector<float>> filter = {{1, 0},
                                    {0, 1}};

    auto output = convolution_multi_thread(image, filter);

    for (const auto& row : output) {
        for (float elem : row) {
            cout << elem << " ";
        }
        cout << endl;
    }

    return 0;
}

