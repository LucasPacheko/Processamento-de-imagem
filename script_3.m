pkg load image
f=imread('imag_lab3.tif'); 

g = rgb2gray(f);
imshow(g);
[Ic,mapc]=rgb2ind(f);

[Indice,mapaDeCores] = gray2ind(g);

bw=im2bw(g);