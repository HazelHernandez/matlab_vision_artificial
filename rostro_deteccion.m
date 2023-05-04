
clc
clear all
close all

webcamlist();
cam = webcam(1);
  detectorRostro = vision.CascadeObjectDetector();

while true
    img= snapshot(cam);
    bbox = step (detectorRostro,img);

    %Dibujar el reactangulo 

   img = insertShape(img,"Rectangle", bbox, "color","green","LineWidth",5);
   img = insertObjectAnnotation(img, "rectangle", bbox, "Rostro detectado");

   figure(1)
   imshow(img)

end