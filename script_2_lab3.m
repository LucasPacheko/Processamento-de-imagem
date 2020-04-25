pkg load image
f=imread('imag_lab3.tif'); 

Y = zeros(512,512);

for i = 1:1:512
  for j = 1:1:512
    Y(i,j) = 0.299*f(i,j,1) + 0.59*f(i,j,2) + 0.11*f(i,j,3);
  endfor
endfor
Y = uint8(Y);

imshow(Y)
#y=0,299.R+0,59.G+ 0,11.B