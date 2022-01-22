function [ R G B ] = rgb2colors( img )
    R=img(:,:,1);
    G=img(:,:,2);
    B=img(:,:,3);
end

    