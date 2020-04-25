pkg load image;
clear all
f = imread("imag1_lab7.tif");
g = imread("imag2_lab7.tif");
h = [1 1 1; 1 1 1; 1 1 1]/9;
f3 = uint8(filter2(h,f));
subplot(1,2,1), imshow(f);
subplot(1,2,2),imshow(f3);
g = [1 1 1 1 1; 1 1 1 1 1; 1 1 1 1 1; 1 1 1 1 1; 1 1 1 1 1]/25;
f5 = uint8(filter2(g,f));
subplot(1,3,1), imshow(f);
subplot(1,3,2),imshow(f3);
subplot(1,3,3),imshow(f5);
fg = imnoise(f,"gaussian");
fi = imnoise(f,"salt & pepper");
fg3 = uint8(filter2(h,fg));
fg5 = uint8(filter2(g,fi));
subplot(1,4,1),imshow(f);
subplot(1,4,2),imshow(fg);
subplot(1,4,3),imshow(fg3);
subplot(1,4,4),imshow(fg5);
fi3 = uint8(filter2(h,fi));
fi5 = uint8(filter2(g,fi));
subplot(1,4,1),imshow(f);
subplot(1,4,2),imshow(fi);
subplot(1,4,3),imshow(fi3);
subplot(1,4,4),imshow(fi5);
#para imagens com pixeis faltando