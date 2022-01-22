function [ new_img ] =gaussian_low_pass( row , col, sigma  )
new_img=zeros(row,col);
centerX=col/2;
centerY=row/2;

for i=1:row
    for j=1:col
        dis=sqrt((j-centerX)^2+(i-centerY)^2);
        new_img(i,j)=exp(-(dis^2)/(2*sigma^2));

end

end

