clc
clear all
close all

webcamlist();

cam = webcam(1);
cam.resolution = 

while true
    img = snapshot(cam);
    img = rgb2gray(img);
    img = edge (img,"canny",0.5);


    figure(1)
    imshow(img)
end