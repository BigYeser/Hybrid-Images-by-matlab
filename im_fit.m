function [ s ] = im_fit( r )
    mn=min(min(min(r)));
    mx=max(max(max(r)));
    s=uint8((r-mn)*(255/(mx-mn)));
end

