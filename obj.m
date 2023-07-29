clc
clear all
close all
warning off
fig=webcam;
faceDetector=vision.CascadeObjectDetector;
a=150;
count=0;
while true
    e=fig.snapshot;
    bboxes =step(faceDetector,e);
    if(sum(sum(bboxes))~=0)
    if(count>=a)
        break;
    else
    es=imcrop(e,bboxes(1,:));
    es=imresize(es,[227 227]);
    filename=strcat(num2str(count),'.bmp');
    imwrite(es,filename);
    count=count+1;
    imshow(es);
    drawnow;
    end
    else
        imshow(e);
        drawnow;
    end
end