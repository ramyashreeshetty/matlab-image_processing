i = imread('C:\Users\Ramyashree Shetty\Desktop\2.jpg');
j = imadjust(i);

subplot(2,2,1);
imshow(image);
title('Original Image');
subplot(2,2,2); 
imshow(j); 
title('Strethced Image');
subplot(2,2,3);
imhist(image);
title('Histogram of Original Image');
subplot(2,2,4);
imhist(j);
title('Histogram of Stretched Image');