s = size(bw3);
x = s(1,1);
y = s(1,2);
bw5 = zeros(x,y);
for i = 1 : 1 : x
  for j = 1: 1 : y
    if (bw3(i,j) == 1)
      if( bw3(i-1,j-1) == 0  ||bw3(i,j-1) == 0 ||bw3(i-1,j) == 0||bw3(i+1,j) == 0||bw3(i,j+1) == 0||bw3(i+1,j+1) == 0||bw3(i+1,j-1) == 0||bw3(i-1,j+1) == 0)
        bw5(i,j) = 1;
      endif
    endif
  endfor
endfor
bw5 =  logical(bw5);