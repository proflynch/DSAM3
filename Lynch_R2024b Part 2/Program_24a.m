% Program_24a: Linear Regression.
% Chapter 24 - The Deep Learning Toolbox.
% Copyright Springer 2025. Stephen Lynch.
n=50;
noise=30;
x=linspace(-50, 50, n)+noise*rand(1,n);
y=linspace(-50, 50, n)+noise*rand(1,n);
plot(x,y,'b+');
xlabel("x");
ylabel("y")
set(gca,'FontSize',15);
% A single neuron ANN.
net = [
    featureInputLayer(1,"Normalization","none");
    fullyConnectedLayer(1)
    ]
% Define the training options.
options=trainingOptions("sgdm", ...
    "InitialLearnRate",0.00001, ...
    "MaxEpochs",100, ...
    "Plots","training-progress", ...
    "Metrics","RMSE", ...
    "InputDataFormats",'CB');
% Train the network.
figure
net=trainnet(x,y,net,'mse',options)
plot(x,y,'b+');
hold on
lrline=refline(net.Layers(2).Weights,net.Layers(2).Bias);
lrline.LineWidth=2;
xlabel("x");
ylabel("y")
set(gca,'FontSize',15);
hold off
% End Program_24a.