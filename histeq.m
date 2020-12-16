%color image global histogram equalization
function cghisteq

clc; clear all;
close all;

%read a color image from specified path from current working directory
fname= 'C:\Users\Ramyashree Shetty\Desktop\butterfly.jpg';
[im,map] = imread(fname);
maxI= 255;

%convert the image rgb to hsv colour space
cim=rgb2hsv(im);

%extract v (value) component from hsv space
imv =cim(:,:,3);
imv= round(imv.*maxI);

%find bins (number of intensity level) for the input image
X0 = min(imv(:));
XL  =max(imv(:));
bins=X0:XL;

%X0=0; XL=maxI;
%bins=X0:XL;

%find histogram count for the input image with respective bins
hc=histc(imv(:),bins);
nhc = hc / sum(hc) ;
chc = cumsum(nhc);

%transfer function of  image enhancement
T = X0 + (XL-X0).*chc;
%apply transfer function on input image to get enhanced image
eimv=T(imv+1-X0);

%append enhanced v component with hsv colour
cim(:,:,3) = eimv./maxI;

%convert hsv to rgb colour space
eim=hsv2rgb(cim);

figure;subplot(2,1,1),bar(0:255,histc(imv(:),0:255));
title('Input image :butterfly-flower');
subplot(2,1,2),bar(0:255,histc(eimv(:),0:255)); 
title('Constrast Enhanced image');

figure;subplot(1,2,1),imshow(im,map);
title('Input image :butterfly-flower');
subplot(1,2,2),imshow(eim,map); 
title('Constrast Enhanced image');
