% Program_24d: CNN for Image Classification.
% Chapter 24 - The Deep Learning Toolbox.
% Copyright Springer 2025. Stephen Lynch.
% Use MathWorks Digits Data set.
digitDatasetPath=fullfile(matlabroot,'toolbox','nnet','nndemos',...
    'nndatasets','DigitDataset');
imds=imageDatastore(digitDatasetPath,"IncludeSubfolders",...
    true,'LabelSource',"foldernames");
classNames = categories(imds.Labels);
% Train, validate and test splits.
[imdsTrain,imdsValidation,imdsTest] = splitEachLabel(imds,0.7,0.15,0.15,"randomized");
% The ANN (see Figure 
net_1=[imageInputLayer([28 28 1])
    convolution2dLayer(3,8,'Padding','same')
    batchNormalizationLayer
    reluLayer
    maxPooling2dLayer(2,'Stride',2)
    
    convolution2dLayer(3,16,'Padding','same')
    batchNormalizationLayer
    reluLayer
    maxPooling2dLayer(2,'Stride',2)
    
    convolution2dLayer(3,32,'Padding','same')
    batchNormalizationLayer
    reluLayer

    fullyConnectedLayer(10)
    softmaxLayer];

options = trainingOptions("sgdm", ...
MaxEpochs=5, ...
ValidationData=imdsValidation, ...
ValidationFrequency=30, ...
Plots="training-progress", ...
Metrics="accuracy", ...
Verbose=false);

net = trainnet(imdsTrain,net_1,"crossentropy",options);

scores = minibatchpredict(net,imdsValidation);
YValidation = scores2label(scores,classNames);
TValidation = imdsValidation.Labels;
accuracy = mean(YValidation == TValidation);

numValidationObservations = numel(imdsValidation.Files);
idx = randi(numValidationObservations,9,1);

figure
tiledlayout("flow")
for i = 1:9
    nexttile;
    img = readimage(imdsValidation,idx(i));
    imshow(img);
    title("Predicted Class: " + string(YValidation(idx(i))));
end
% End Program_24d.