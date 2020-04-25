pkg load image

f = imread("imag1_lab4.tif");
g = imread("imag2_lab4.tif");
h = imread("imag3_lab4.tif");
p = imread("imag4_lab4.tif");

f1 = imcomplement(f); 

subplot(1,2,1), imshow(f);
subplot(1,2,2),imshow(f1);

f2=double(f); 
f3=log10(1+f2);
f4=mat2gray(f3);
f5=im2uint8(f4); 

 #T=imadjust(mat2gray(I),[ ],[ ], gama); 
 #I = imagem original, 
 #T =imagem transformada
 #gama = número real que indica a potência da transformação
 
 #g1, g2 e g3 com gama=0,6, 0,4 e 0,3 respectivamente
 
 g1 = imadjust(mat2gray(g),[ ],[ ], 0.6);
 g2 = imadjust(mat2gray(g),[ ],[ ], 0.4);
 g3 = imadjust(mat2gray(g),[ ],[ ], 0.3);
 
 h1 = imadjust(mat2gray(h),[ ],[ ], 0.6);
 h2 = imadjust(mat2gray(h),[ ],[ ], 0.4);
 h3 = imadjust(mat2gray(h),[ ],[ ], 0.3);
 

 p1 = imadjust(mat2gray(p));

 
 p2=im2bw(mat2gray(p));