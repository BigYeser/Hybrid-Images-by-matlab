close all;
woman=imread('woman.jpg');
leopard=imread('leopard.jpg');
sigma=10;
[row, col ]=size(woman(:,:,1));
LPF=ideal_low_pass(row,col,sigma);
HPF=1-LPF;

[R1,G1,B1]=rgb2colors(woman);
[R2,G2,B2]=rgb2colors(leopard);

[R1_SI,R1_SFI,R1_FI]=apply_filter(R1,LPF);
[G1_SI,G1_SFI,G1_FI]=apply_filter(G1,LPF);
[B1_SI,B1_SFI,B1_FI]=apply_filter(B1,LPF);

[R2_SI,R2_SFI,R2_FI]=apply_filter(R2,HPF);
[G2_SI,G2_SFI,G2_FI]=apply_filter(G2,HPF);
[B2_SI,B2_SFI,B2_FI]=apply_filter(B2,HPF);

filtered_woman=colors2rgb(R1_FI,G1_FI,B1_FI);
filtered_leopard=colors2rgb(R2_FI,G2_FI,B2_FI);

figure
subplot(2,5,1),imshow(woman),
subplot(2,5,6),imshow(leopard),
subplot(2,5,2),imshow(im_fit(log(abs(1+R1_SI+G1_SI+B1_SI)))),
subplot(2,5,7),imshow(im_fit(log(abs(1+R2_SI+G2_SI+B2_SI)))),
subplot(2,5,3),imshow(im_fit(LPF)),
subplot(2,5,8),imshow(im_fit(HPF)),
subplot(2,5,4),imshow(im_fit(log(abs(1+R1_SFI+G1_SFI+B1_SFI)))),
subplot(2,5,9),imshow(im_fit(log(abs(1+R2_SFI+G2_SFI+B2_SFI)))),
subplot(2,5,5),imshow(im_fit(filtered_woman)),
subplot(2,5,10),imshow(im_fit(filtered_leopard))


img=im_fit(3*filtered_woman+2*filtered_leopard);
figure
imshow(img);

%imwrite(img,'gaussian_hybird.jpg');
%imwrite(img,'ideal_hybird.jpg');
