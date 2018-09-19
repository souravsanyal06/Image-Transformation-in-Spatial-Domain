# Image-Transformation-in-Spatial-Domain
Implementation of Linear Image Transformation and Histogram Equalization in MATLAB
Problems:
Read in the image (Food.jpg) and save it in an array food.


1. [7 points]
Implement a Scaling function to linearly rescale (transform) the intensity values of the grayscale input
image into new intensity values. The prototype of this function should be:
function [scaledIm, transFunc] = Scaling(inputIm, range)
where inputIm is the original grayscale image, range is a vector containing the new range of the scaled
image, scaledIm is the rescaled (transformed) image, and transFunc is the transform function. This
transform function is a row or column vector of n elements, where the value of the first element is the new
mapping value for the minimum intensity value after the scaling operation and the value of the last element
is the new mapping value for the maximum intensity value after the scaling operation. In other words, n
= maxIntensity-minIntensity + 1, where maxIntensity and minIntensity are the maximum intensity value
and the minimum intensity value of the original image, respectively. Make sure that your function shows
an appropriate error message if the range contains the invalid data (e.g., out of range). Note: Both input
and output images of the Scaling function should be an array with the same size and the same data type
uint8.
Call the Scaling function to scale the image food into a scaled image scaledFood with an appropriate
range [newMin newMax] so scaledFood has a good quality. Plot the transFunc in figure 1 with
appropriate titles on both x and y axes.

2. [3 points]
Call the Scaling function to scale the image food into a scaled image scaledFood with an appropriate
range [newMin newMax] so scaledFood has a good quality. Plot the transFunc in figure 1 with
appropriate titles on both x and y axes.


3. [7 points]
Implement a CalHist function to calculate either the histogram or the normalized histogram or both
histograms (e.g., histogram and normalized histogram) of the grayscale input image. Note: I do not provide
any function prototype for this function. So you can implement it at your will.
CallCallCalHistCalHistfunctionfunctiontotocalculatecalculatehistogram and normalized histograms of the image scaledFood.
the normalized histogram of the image matScaledFood.
Call CalHist function to calculate the histogram of the image matScaledFood.
Display the two normalized histograms at the top row and the two histograms at the bottom row in figure
3 with appropriate titles on both x and y axes.


4. [8 points]
Implement a HistEqualization function to perform histogram equalization on a grayscale input image to
achieve the maximum gray levels (e.g., 256 gray levels) by using the four steps explained in class. Its
prototype should be:
function [enhancedIm, transFunc] = HistEqualization(inputIm)
where inputIm is the original grayscale image, enhancedIm is the histogram equalization result (e.g.,
histogram equalized image), and transFunc is the histogram equalization transform function. This
transform function is a row or column vector of 256 elements, where the value of the first element is the
new mapping value for intensity 0 after histogram equalization and the value of the last element is the new
mapping value for intensity 255 after histogram equalization. Note: Both input and output images of the
HistEqualization function should be an array with the same size and the same data type uint8.
Call this function to generate the enhanced image equalizedFood of the original image food and the
corresponding transform function. Display the running time of using this function to accomplish the task
on the Matlab console.


5. [5 points]
Apply the appropriate Matlab built-in function to perform histogram equalization on the original grayscale
image food to achieve the maximum gray levels and return the corresponding transform function. Display
the running time of using this built-in function to accomplish the task on the Matlab console.
Display your enhanced image and Matlab’s enhanced image side-by-side in figure 4 with appropriate
titles.
Plot the histogram equalization transform functions obtained in Problems 4 and 5 side-by-side in figure 5
with appropriate titles on both x and y axes.
On the Matlab console, display the following information:
 Comparison of the running times to accomplish the tasks in Problems 4 and 5.
 Comparison of the histogram equalization transform functions obtained in Problems 4 and 5.
 Your findings (e.g., tricks you learned, lessons you learned, etc.) after reading the implementation
detail of the chosen function for Problem 5.

