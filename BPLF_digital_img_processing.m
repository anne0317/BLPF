clc
clear
close all
%% Program to demonstrate butterworth low pass filtering of an image
% Read the input image
A = imread('cameraman.tif');
[m,n]=size(A);
% Set the cut-off frequency for LPF
fc=30;
% Set the filter order
N=1;
% Determination of centre of image
p=round(m/2);
q=round(n/2);
% Define the filter kernel
H=zeros(m,n);
for i = 1:m
   for j = 1:n
       d=(i-p).^2+(j-q).^2;
       H(i,j)=1/(1+((d/fc/fc).^(2*N)));
   end
end
% Input Image in frequency domain
A_f=fftshift(fft2(A));
% Apply the butterworth LPF
B=A_f.*H;
C=abs(ifft2(B));
% Display of input and output images
subplot(2,2,1), imshow(A), title('Original Image')
subplot(2,2,2), imshow(H), title('2D View of H')
subplot(2,2,3), surf(H), title('3D View of H')
subplot(2,2,4), imshow(uint8(C)), title('Image After Butterworth LPF')
