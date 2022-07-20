%Below is the code I found for our project
function [] = project(a)

data = load(a);
%Separate labels from data
%labels = data(:,1);
%Separate pixels from data
images = data(:,2:785);
%Change shape of each image
newData = zeros(60000,784);
for i = 1:size(images,1)
    b = reshape(images(i,:),28,28)';
    newData(i);
end

