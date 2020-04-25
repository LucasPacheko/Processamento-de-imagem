pkg load image

f=imread('imag1_lab3.tif'); 
g=imread('imag2_lab3.tif'); 
b=imread('imag3_lab3.tif'); 
w=imread('imag4_lab3.tif'); 
whos f # 256 x 256 tons de cinza 
whos g # 256 x 256 tons de cinza
whos b # 256 x 256 preto e branco
whos w # 256 x 256 preto e branco
f1 = imadd(f,64);
f2 = imsubtract(f,64);
subplot(1,3,1), imshow(f1);
subplot(1,3,2), imshow(f);
subplot(1,3,3), imshow(f2);
s = size(f);
fmax = 0
fmin = 255
x = s(1,1);
y = s(1,2);
for i = 1 : 1 : x
  for j = 1: 1 : y
    if (fmax<max(f(x,y)))
      fmax = max(f(x,y))
      fmin = min(f(x,y))  
    endif
  endfor
endfor
f1max = 0;
f2max = 0;
f1min = 255;
f2min = 255;
if (fmax+60>255)
  f1max = 255
else
  f1max = fmax + 60
endif
if (fmax - 60<0)
  f2max = 0
else
  f2max = fmax -60
endif
if (fmin + 60>255)
  f1mix = 255
else
  f1min = fmin + 60
endif
if (fmin - 60<0)
  f2min = 0
else
  f2min = fmin -60
endif
#prova  acima
f3 = imsubtract(f,f1);
f4 = imadd(f,g);
f5 = f + g;
g1 = immultiply(g,2);
g2 = imdivide(g,2);
subplot(1,3,1), imshow(g1);
subplot(1,3,2), imshow(g);
subplot(1,3,3), imshow(g2);
s = size(g);
gmax = 0
gmin = 255
x = s(1,1);
y = s(1,2);
for i = 1 : 1 : x
  for j = 1: 1 : y
    if (gmax<max(g(x,y)))
      gmax = max(g(x,y))
      gmin = min(g(x,y))  
    endif
  endfor
endfor
g1max = 0;
g2max = 0;
g1min = 255;
g2min = 255;
if (gmax+60>255)
  g1max = 255
else
  g1max = gmax + 60
endif
if (gmax - 60<0)
  g2max = 0
else
  g2max = gmax -60
endif
if (gmin + 60>255)
  f1mix = 255
else
  f1min = fmin + 60
endif
if (fmin - 60<0)
  f2min = 0
else
  f2min = fmin -60
endif
bw1 = and(b,w);
bw2 = or(b,w);
bw3 = xor(b,w);
bw4 = not(b);
