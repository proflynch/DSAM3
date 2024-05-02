% Program_24b: Using LSTM to Predict Chaos.
% Chapter 24 - The Deep Learning Toolbox.
% Copyright Springer 2025. Stephen Lynch.
% Load logistic map data.
clear;
x(1)=.1;
for i=1:499
    x(i+1)=4*x(i)*(1-x(i));
end
data=x;
% Split data.
split=0.8; % Train with 80% of the data.
numTimeStepsTrain = floor(split*numel(data));
XTrain = data(1:numTimeStepsTrain);
YTrain = data(2:numTimeStepsTrain+1);
XTest = data(numTimeStepsTrain+1:end-1);
YTest = data(numTimeStepsTrain+2:end);
% Define LSTM Network.
inputSize = 1;
numResponses = 1;
numHiddenUnits = 128;
net = [ ...
    sequenceInputLayer(inputSize)
    lstmLayer(numHiddenUnits, "OutputMode","last")
    fullyConnectedLayer(numResponses)];
% Training options.
opts = trainingOptions('adam', ...
    'MaxEpochs',100, ...
    'InitialLearnRate',0.001, ...
    'Verbose',0, ...
    'Plots','training-progress','Metrics','rmse',...
    'InputDataFormats','CBT','MiniBatchSize',16);
% Train the network.
net = trainnet(XTrain,YTrain',net,'mse',opts);
% Predicted data against testing data.
figure
YPred = minibatchpredict(net, XTest, SequenceLength="shortest",InputDataFormats='CBT');
x = (numTimeStepsTrain+1):numTimeStepsTrain+numel(XTest);
plot(x, YTest, '-b', 'LineWidth',1);
hold on
plot(x, YPred, '.-r', LineWidth=1)
set(gca,'FontSize',20);
xlabel("Time")
ylabel("x")
hold off
legend('Test Data', 'Predicted')
% Historical and predicted data.
figure
plot(data(1:numTimeStepsTrain),'-k')
hold on
idx = (numTimeStepsTrain+1):numTimeStepsTrain+numel(XTest);
plot(idx,YPred,'.-')
hold off
set(gca,'FontSize',20);
xlabel("Time")
ylabel("x")
title("Forecast")
legend(["History" "Predicted"])
% End Program_24b.