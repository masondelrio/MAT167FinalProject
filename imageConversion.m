%Below is the code used to convert the csvs to Matrices
function x = imageConversion(a)
data = load(a);
%Separate labels from data
%First column of input data is labels
%labels = data(:,1);
%Separate pixels from data
images = data(:,2:785);
%Change shape of each image
x = zeros(size(images,1),784);
for i = 1:size(images,1)
    b = reshape(images(i,:),28,28)';
    b = b(:);
    x(i,:) = b;
end

%to display image
%imagesc(reshape(x(1,:),28,28))