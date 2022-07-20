%Relative residual equation
%This function returns a list of numbers corresponding to the relative
%residual calculations for each digit's U. 
%input allU into this function, which holds all the U matrices for each
%digit, followed by {number}A, replacing {number} with zero, one... nine.

%Note: This function only compares the first image in the matrix containing
%all images of the digit. For demo purposes. 
function y = relativeResidual(inputU,inputA)
y = [];
xappend = [];
for i = 1:size(inputU,2)
    x = norm((eye(784)-(inputU{i}*transpose(inputU{i})))*inputA(:,1))/norm(inputA(:,1));
    y = [y x];
    end
    

%returns prediction
minimum = min(min(y));
z = find(y == minimum)- 1;
fprintf('Predicted Number: %d', z);
%display U from SVD imagesc(reshape(twoU(:,1),28,28))
end