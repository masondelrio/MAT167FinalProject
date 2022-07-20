%Digit is the digit wanted to create corresponding A matrix, matrix is the training or testing data, label
%is the corresponding label associated with data.

%For example gatherDigits(0,newDataTest,labels) if you want the A matrix for
%the digit zero.
%Last entry will be label

function A = gatherDigitsLabels(digit, matrix,label)
A = [];
for i = 1:size(matrix,1)
    if label(i) == digit
        A = [A matrix(i,:)'];
    end
    
end
A = [A repmat(digit, size(A,1), 1)];
%to display image
%imagesc(reshape(oneA(:,1),28,28))