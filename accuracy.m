%Accuracy Function
function x = accuracy(predictionA)
%This function takes in the matrix containing all column predictions
%corresponding to each U basis from zero to nine, for every number in our
%dataset and finds the accuracy of each "model". 
count = 0;
labeled = predictionA(:,size(predictionA,2));
A = predictionA;
A(:,size(A,2)) =[];
y = [];
for i = 1:size(A,2)
    minimum = min(min(A(:,i)));
    w = find(A(:,i) == minimum)- 1;
    if w == labeled(1,size(labeled,2))
        count = count + 1;
    end

    
end

x = count/(size(A,2));
fprintf('Accuracy: %f', x*100);
fprintf(' Count: %d',count);

    


