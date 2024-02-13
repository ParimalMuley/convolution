import subprocess
import numpy as np
#using subprocess to run the executable files
#numpy to load the arrays 

#the run_cpp_executable function runs the executable files made while creating executable files using cmake.
def run_cpp_executable(executable_path):
    try:
        #runs the executable file as a subprocess
        #csptures the output file as a text
        result = subprocess.run([executable_path], capture_output=True, text=True, check=True)
        #output_rows splits the output in the form of rows.
        #this converts them into strings which represent rows
        output_rows = result.stdout.strip().split('\n')
        #output_array converts them into a numpy array
        output_array = np.array([list(map(float, row.split())) for row in output_rows])
        return output_array
    except subprocess.CalledProcessError as e:
        print(f"Error running {executable_path}: {e}")
        return None

def main():
    # Load golden output
    golden_output = np.load("/home/muleyparimal33/conv_python/golden_output.npy")

    # Load test output from Python code
    test_output = np.load("/home/muleyparimal33/conv_python/test_output.npy")

    # Pass paths of C++ and multithreaded C++ executable files to compare
    executable_paths = ["/home/muleyparimal33/convolution/build/convolution", "/home/muleyparimal33/convolution_thread/build/convolution_thread"]
    outputs = []

    # Run each executable and collect its output
    for path in executable_paths:
        output = run_cpp_executable(path)
        if output is not None:
            outputs.append(output)

    # Comparing outputs with golden output
    if np.array_equal(test_output, golden_output):
        print("Python output matches the golden output.")
    else:
        print("Python output does not match the golden output.")

    for idx, output in enumerate(outputs, start=1):
        if np.array_equal(output, golden_output):
            print(f"Output {idx} matches the golden output.")
        else:
            print(f"Output {idx} does not match the golden output.")

if __name__ == "__main__":
    main()

