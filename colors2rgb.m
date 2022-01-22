function [ img ] = colors2rgb( R , G, B )
%UNTITLED7 Summary of this function goes here
%   Detailed explanation goes here
img=R;
img(:,:,2)=G;
img(:,:,3)=B;

end

