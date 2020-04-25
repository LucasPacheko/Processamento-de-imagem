pkg load image
f =  imread('imag1_lab5.tif');
g = imread('imag2_lab5.tif');
function[y] = fat1_nivel(x,a,b,c,d);
  s = size(x);
  x1 = s(1,1);
  y1 = s(1,2);
  y = zeros(x1,y1);
  for i = 1:1:x1
    for j = 1:1:y1
      if(x(i,j)>a && x(i,j)>b)
        y(i,j) = c;
      elseif(x(i,j)>b && x(i,j)<a)
        y(i,j) = d;
      else
        y(i,j) = x(i,j);
      endif
    endfor
  endfor
  y = uint8(y);
endfunction
teste1 =  fat1_nivel(f,100,150,50,100);

function[y] = fat2_nivel(x,a,b,c);
  s = size(x);
  x1 = s(1,1);
  y1 = s(1,2);
  y = zeros(x1,y1);
  for i = 1:1:x1
    for j = 1:1:y1
      if(x(i,j)>a && x(i,j)>b)
        y(i,j) = c;
      else
        y(i,j) = x(i,j);
      endif
    endfor
  endfor
  y = uint8(y);
endfunction
teste2 =  fat2_nivel(f,100,150,50);
function[y0,y1,y2,y3,y4,y5,y6,y7] = fat_bit(x);
  s = size(x);
  s1 = s(1,1);
  s2 = s(1,2);
  y0= zeros(s1,s2);
  y1= zeros(s1,s2);
  y2= zeros(s1,s2);
  y3= zeros(s1,s2);
  y4= zeros(s1,s2);
  y5= zeros(s1,s2);
  y6= zeros(s1,s2);
  y7= zeros(s1,s2);
  for i = 1:1:s1
    for j = 1:1:s2
      y0(i,j)=bitget(x(i,j),1);
      y1(i,j)=bitget(x(i,j),2);
      y2(i,j)=bitget(x(i,j),3);
      y3(i,j)=bitget(x(i,j),4);
      y4(i,j)=bitget(x(i,j),5);
      y5(i,j)=bitget(x(i,j),6);
      y6(i,j)=bitget(x(i,j),7);
      y7(i,j)=bitget(x(i,j),8);
    endfor
  endfor
  return;
endfunction
[y0,y1,y2,y3,y4,y5,y6,y7] = fat_bit(g)

