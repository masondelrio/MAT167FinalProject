%Digit is the digit wanted to create corresponding A matrix, matrix is the training or testing data, label
%is the corresponding label associated with data.

%For example gatherDigits(0,newDataTest,labels) if you want the A matrix for
%the digit zero.
%First entry will be label

function A = gatherDigits(digit, matrix,label)
A = [];
for i = 1:size(matrix,1)
    if label(i) == digit
        A = [A matrix(i,:)'];
    end
    
end
%to display image
%imagesc(reshape(oneA(:,1),28,28))