clc
clear all
close all

%% Bordes (Extraccionón)

img = imread ("monedas.jpg");
img = rgb2gray(img);
figure(1)
imshow(img)

border = edge(img,"canny",0.6);
figure(2)
imshow(border) 