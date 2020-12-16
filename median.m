x = imread('C:\Users\Ramyashree Shetty\Desktop\final.jpg');
I = rgb2gray(x); 
[n,m] = size(I);
output = zeros(n,m); 
for i = 1:n 
    for j = 1:m 
         output(i,j) = median(I(:));
    end
end
imshow(output);
