function [ SI,SFI,FI ] = apply_filter( img , filter )
    SI=fftshift(fft2(img));
    SFI=SI.*double(filter);
    FI=ifft2(fftshift(SFI));
end

