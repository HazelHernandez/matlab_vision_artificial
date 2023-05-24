clc
clear all
close all

img = imread("frase1.jpg");
ocr_palabras = ocr(img);

palabras = ocr_palabras.Words;
disp([palabras])

bbox = ocr_palabras.WordBoundingBoxes;

figure(1)
imshow(img)
hold on 

for i=1:length(bbox)
    rectangle("Position",bbox(i,:), "EdgeColor","y","LineWidth",3)
end
hold off