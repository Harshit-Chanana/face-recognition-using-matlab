clc
clear all
close all
warning off
h=alexnet;
layers=h.Layers;
layers(23)=fullyConnectedLayer(3);
layers(25)=classificationLayer;
allImages=imageDatastore('database','IncludeSubfolders',true, 'LabelSource','foldernames');
opts=trainingOptions('sgdm','InitialLearnRate',0.001,'MaxEpochs',20,'MiniBatchSize',64);
myNet1=trainNetwork(allImages,layers,opts);
save myNet1;
