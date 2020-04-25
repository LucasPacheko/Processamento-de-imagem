f = imread('imag_lab2a.tif');

f1 = zeros(64,64,3);
x=1;
y=1;
for i = 1:4:256
  for j = 1:4:256
    for k = 1:1:3
      f1(x,y,k) = f(i,j,k);
    endfor
    y = y +1;
    k=1;
  endfor
  y = 1;
  j=1;
  x = x + 1;
endfor
f1 = uint8(f1)
imshow(f1)

f2 = zeros(16,16,3);
x=1;
y=1;
for i = 1:16:256
  for j = 1:16:256
    for k = 1:1:3
      f2(x,y,k) = f(i,j,k);
    endfor
    y = y +1;
    k=1;
  endfor
  y = 1;
  j=1;
  x = x + 1;
endfor
f2 = uint8(f2);
imshow(f2)
