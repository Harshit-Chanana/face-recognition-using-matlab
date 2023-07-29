clc;close;clear
cao=webcam;
load myNet1;
faceDetector=vision.CascadeObjectDetector;
while true
    img=cao.snapshot;
    bboxes =step(faceDetector,img);
    if(sum(sum(bboxes))~=0)
     imgs=imcrop(img,bboxes(1,:));
    imgs=imresize(imgs,[227 227]);
    label=classify(myNet1,imgs);
    image(img);
    title(char(label));
    drawnow;
    else
        image(img);
        title('Face Does not match');
    end
end
