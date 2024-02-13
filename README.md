
# Convolution operation

This repository provides implementations of the convolution operation in Python and C++, including a multi-threaded version for improved performance. Convolution is a fundamental operation in deep learning, particularly in convolutional neural networks (CNNs), used for tasks such as image processing and feature extraction.




## Documentation

The documentation contains a step by step process of the implementation.

[Documentation](https://drive.google.com/file/d/1eDq5N6BxIfc9lv5THws-O-gVtRZVeEZf/view?usp=sharing)


## Introduction
The convolution operation is a mathematical operation commonly used in deep learning for tasks such as image processing and feature extraction. It involves sliding a filter/kernel over an input image or signal and computing the dot product at each position.

This assignment provides implementations of the convolution operation in Python and C++. The implementations have been tested on Ubuntu 20.04 LTS.

In this assignment, three implementations of the convolution operations are provided:

1. Python implementation (conv_python)

2. C++ implementation (convolution)

3. Multi-threaded C++ implementation(convolution_thread)

4. comparison with golden ouput (comparison)


## Installation 

This section focuses on the requirments for setting this repository locally.
For detailed and step by step walk through go through the documentation.

### Python

To run the Python implementation, make sure you have Python installed on your system. Additionally, you might need to install any dependencies using pip:

```bash
 pip install -r requirements.txt
```

### C++

To run the C++ implementation, you need a C++ compiler and CMake installed on your system. you can use the following commands.

To install g++ run the following commands 
```bash
sudo apt-get update
sudo apt-get install g++
g++ --version
```
To install cmake run the following commands
```bash
sudo apt-get update
sudo apt-get install cmake
cmake --version
```




    
## Usage

### Basic Usage
#### python

To use the `convolution` function, simply call it with the input data and parameters:

```python
result = convolution(image, kernel)
print(result)

```

#### CPP
Multithreaded convolution operation can be used for faster run times.


## Assumptions
Assumptions made were
1. Only a convolution operation was required without padding and stride
2. C++ executions do not take inputs from the python code while comparing it with the golden output.
