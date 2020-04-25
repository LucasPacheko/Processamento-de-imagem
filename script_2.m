f = imread('imag_lab2a.tif');

s = size(f);
f3 = zeros(s(1,1),s(1,2),s(1,3));

for i = 1:1:s(1,1)
  for j = 1:1:s(1,2)
    for k = 1:1:s(1,3)
      x = f(i,j,k);
      x = ceil(x/16);
      x = x*16;
      x = x+ 8;
      f3(i,j,k) = x;
    endfor
  endfor
endfor
f3 = uint8(f3);
imshow(f3);
f4 = zeros(s(1,1),s(1,2),s(1,3));
for i = 1:1:s(1,1)
  for j = 1:1:s(1,2)
    for k = 1:1:s(1,3)
      x = f(i,j,k);
      x = ceil(x/2);
      x = x*2;
      x = x+ 64;
      f4(i,j,k) = x;
    endfor
  endfor
endfor
f4 = uint8(f4);
imshow(f4);
