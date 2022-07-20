%Relative residual equation
%This function returns a matrix of numbers whose columns correspond to the relative
%residual calculations for each digit's U. 
%input allU into this function, which holds all the U matrices for each
%digit, followed by {number}Label, replacing {number} with zero, one... nine.

function [listx, yappend] = relativeResidualBases(inputU,inputA)
count = 0;
labeled = inputA;
A = inputA;
A(:,size(A,2)) =[];
y = [];
xappend = [];
yappend = {};
listx = [];
for k = 1:2:9
    for i = 1:size(A,2)
        for j = 1:size(inputU,2)
        x = norm((eye(784)-(inputU{j}(:,1:k)*transpose(inputU{j}(:,1:k))))*A(:,i))/norm(A(:,i));
        xappend= [xappend x];
            if j == size(inputU,2)
                y = [y transpose(xappend)];
                xappend = [];
                minimum = min(min(y(:,i)));
                w = find(y(:,i) == minimum)- 1;
                if w == labeled(1,size(labeled,2))
                    count = count + 1;
                end
    
            end
        end
    end
yappend(end+1) = {y};
y = [y repmat(labeled(1,size(labeled,2)),size(y,1),1)];
x = count/(size(A,2));
listx = [listx x*100];
fprintf('Accuracy: %f', x*100);
fprintf(' Count: %d',count);
count = 0;
y = [];
xappend = [];
end
%returns prediction
%minimum = min(min(y));
%z = find(y == minimum)- 1;
%fprintf('Predicted Number: %d', z);
%display U from SVD imagesc(reshape(twoU(:,1),28,28))
end

%PLOT FOR RESIDUALS: plot(numbers,{number}Predictions)