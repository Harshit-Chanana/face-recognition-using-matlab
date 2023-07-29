# face-recognition-using-matlab
TOOLBOXES REQUIRED : Computer Vision ToolBox , Image Processing ToolBox, Matlab support package for Webcams, Image Acquisition ToolBox, Deep Learning ToolBox Model for AlexNet Network
obj.m

A database containing folders for images of the faces of each person has to be created according to the name of the person. Then, a simulation for face detection is performed in MATLAB. The program activates the webcam, which scans for faces in the environment. Once conclusive features of a face are detected, 150 normalized images (through cropping and resizing) are stored in the concerned folder in all cases. However, since the program is designed to search for patterns similar to a face, there are some instances where the program detects a face even when it is not there. This might be because of some pattern consisting of dirt, print, or lighting that the program finds similar to the characteristics of a face.

For the results of the first simulation, the program can detect a face that is flashed on a cell phone. The program can extract certain features of a face and create a cropped image of it. The images are stored in the user-desired folders.

training.m

In the next step, the model is trained for the provided input faces using Deep Learning algorithms. The results for the same are shown.

testing.m

In the final simulation, the program uses the pre-shot database. The database includes a set of 150 photos, each of 3 different people, and the purpose of the program is to get a random photo and recognize to which person the random photo belongs. The results for the same are showcased. The name of the dynamically recognized person through his face is displayed as the label, whereas for faces outside the database, the label "FACE DOES NOT MATCH" is displayed
