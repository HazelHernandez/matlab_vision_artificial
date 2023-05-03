clc
clear all
close all
%% lectura de imagen
img = imread("paisaje.jpg");
figure(1)
imshow(img)

%% extraccion de canales

img_R = img; %%extraccion del canal rojo 
img_R (:,:,2) = 0; 
img_R (:,:,3) = 0;
% figure(2)
% imshow(img_R)

img_G = img; %%extraccion del canal verde 
img_G (:,:,1) = 0; 
img_G (:,:,3) = 0;
% figure(2)
% imshow(img_G)

img_B = img; %%extraccion del canal azul 
img_B (:,:,1) = 0; 
img_B (:,:,2) = 0;
figure(2)
% imshow(img_B)
imshow([img_R, img_G, img_B])

%% Operaciones con imganes 
comb_1 = img_R+img_B;
figure(3)
imshow(comb_1)

comb_2 = img_R+img_G;
figure(4)
imshow(comb_2)

comb_3 = img_B+img_G;
figure(5)
imshow(comb_3)

%% Escala de grises

img_gris=rgb2gray(img);
figure(6)
imshow(img_gris)

%% Aumento de brillo 

img_brillo = img - 255;
figure(7)
imshow([img,img_brillo])


%% Combinacion de Imagenes
img_star = imread('star.jpg');
[renglones, columnas, canales] = size(img);
img_star = imresize(img_star, [renglones, columnas]);

% Mezcaldo alfa  
alfa = 0.3;
mezclado = alfa.*img_star + (1-alfa).*img;
figure(8)
imshow(mezclado)
