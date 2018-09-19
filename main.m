clc
close all ;
clear ;
food = imread('/home/sourav/MATLAB_working_folder/Food.jpg');


vec = min(min(food)):max(max(food));
rmin = 0;
rmax = 255;
range = [rmin,rmax];

[scaledFood , transFunc] = Scaling(food,range);


figure,

plot(vec(:),transFunc(:),'or','MarkerFaceColor', 'r','Linewidth', 2 )
title('Transfunc','FontSize',14);
xlabel('Intensity Levels of original Image','FontSize',14)
xlim([88 141]);


ylabel('Intensity Mapping from original Image to new Image','FontSize',14);
ylim([0 2]);

disp('Finish Solving Problem 1');
pause;

lowin = double(min(min(food)))/double(255);
highin = double(max(max(food)))/double(255);
lowout = double(rmin)/double(255) ;
highout = double(rmax)/double(255) ;

matscaledFood = imadjust(food,[lowin highin],[lowout highout]);

figure,

subplot(1,2,1)
imshow(scaledFood);
title('My Scaled Image')
subplot(1,2,2)
imshow(matscaledFood)
title('Matlab Scaled Image')

disp('Finish Solving Problem 2');
pause;

[sf_hist,sf_nhist] = CalHist(scaledFood);
[msf_hist,msf_nhist] = CalHist(matscaledFood);

figure,

subplot(2,2,1)

h1 = stem(0:255,sf_nhist(:));
set(h1,'Marker','none');
xlabel('Intensity Levels of Image','FontSize',14)
xlim([0 260]);
ylabel('Frequency of Occurence','FontSize',14);
title('Normalized Histogram of scaledFood');


subplot(2,2,2)

h2 = stem(0:255,msf_nhist(:));
set(h2,'Marker','none');
xlabel('Intensity Levels of Image','FontSize',14)
xlim([0 260]);
ylabel('Frequency of Occurence','FontSize',14);
title('Normalized Histogram of matscaledFood');

subplot(2,2,3)

h3 = stem(0:255,sf_hist(:));
set(h3,'Marker','none');
xlabel('Intensity Levels of Image','FontSize',14)
xlim([0 260]);
ylabel('Frequency of Occurence','FontSize',14);
title('Histogram of scaledFood');

subplot(2,2,4)

h4 = stem(0:255,msf_hist(:));
set(h4,'Marker','none');
xlabel('Intensity Levels of Image','FontSize',14)
xlim([0 260]);
ylabel('Frequency of Occurence','FontSize',14);
title('Histogram of matscaledFood');

disp('Finish Solving Problem 3');
pause;


f = @() HistEqualization(food);
[equalizedFood, equalizedTF ] = HistEqualization(food);
disp('Wall clock time of HistEqualization');
timeit(f)


disp('Finish Solving Problem 4');
pause;

g = @() HistEqualization(food);
[matequalizedFood,matequalizedTF] = histeq(food);
disp('Wall clock time of inbuilt MATLAB histeq function');
timeit(g)

figure,

subplot(1,2,1)
imshow(equalizedFood);
title('My enhanced Image');
subplot(1,2,2)
imshow(matequalizedFood);
title('Matlab enhanced Image');

figure,

subplot(1,2,1)
plot(equalizedTF,'or','MarkerFaceColor', 'r','Linewidth', 2 );
title('My Transfunc','FontSize',14);
xlabel('Intensity Levels of original Image','FontSize',14)
xlim([0 255]);
ylabel('Intensity Mapping from original Image to new Image','FontSize',14);
ylim([-0.1 1.1]);

subplot(1,2,2)
plot(matequalizedTF,'or','MarkerFaceColor', 'r','Linewidth', 2 );
title('Matlab Transfunc','FontSize',14);
xlabel('Intensity Levels of original Image','FontSize',14)
xlim([0 255]);
ylabel('Intensity Mapping from original Image to new Image','FontSize',14);
ylim([-0.1 1.1])

disp('Run times of both my as well as MATLAB inbuilt histogram equalization functions are more or less same.');

disp('Transfer functions of my function and MATLAB inbuilt histogram equalization functions are same as shown in Figure 5.');

disp('Histogram Equalization performs a cumulative summation over the intensity values as we move from lower to higher intensity values.');

disp('The Transfer Function of Histogram Equalization thus obtained is step wise linear in nature with same values over small intervals.');

disp('Finish Solving Problem 5');
pause;

clear;
close all;


