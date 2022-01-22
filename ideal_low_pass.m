function [ new_img ] =ideal_low_pass( row , col,R  )
nwe_img=zeros(row,col);
centerX=col/2;
centerY=row/2;

for i=1:row
    for j=1:col
        dis=sqrt((j-centerX)^2+(i-centerY)^2);
        if dis<=R
            new_img(i,j)=1;
        else
            new_img(i,j)=0;
    end    
end

end

