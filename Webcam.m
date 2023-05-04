clc
clear all
close all

webcamlist()

cam = webcam(1);
img_b = imread("star.jpg");
img_b = imresize(img_b,[1080, 1920]);
alfa= 0.6;


while true
img = snapshot(cam);
img = alfa.*img_b + (1-alfa).*img;
figure(1)
imshow(img)
end

