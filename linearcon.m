I = imread('C:\Users\Ramyashree Shetty\Desktop\2.jpg');
I = double(I);
y = 255*((I-min(I(:)))/range(I(:)));

y = uint8(y);
I = uint8(I);
%HISTOGRAM OF THE INPUT AND OUTPUT IMAGE
hist_I=imhist(I);
hist_y=imhist(y);

figure,stem((0:255),hist_I);
hold on; 
stem((0:255),hist_y);
legend Original Enhanced
figure,subplot(1,2,1),imshow(I);
title('Original Image');
subplot(1,2,2);
imshow(y);
title('After LCE Enhacement');
