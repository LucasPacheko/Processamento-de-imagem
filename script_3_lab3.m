f=imread('imag_lab3.tif'); 

s = size(f);
x2 = s(1,1)/2;
y2 = s(1,2)/2;

for i = x2 -64 :1:x2 +64
  for j = y2 -64:1:y2 +64
    for k = 1:1:3
      f(i,j,k) = 0;
    endfor
  endfor
endfor
f = uint8(f);
imshow(f);
#y=0,299.R+0,59.G+ 0,11.B