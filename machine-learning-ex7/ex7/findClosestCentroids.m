function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);
m = size(X, 1);

% You need to return the following variables correctly.
idx = zeros(m, 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%



distanceMatrix = zeros(m,K);

for z = 1:m
    trainingExample=X(z,:);
    currentDistance=0;
    index=0;
    for i = 1:K    
        currentCentroid=centroids(i,:);
        distance = sqrt(sum((trainingExample - currentCentroid).^2));
        if currentDistance == 0 || distance < currentDistance
            currentDistance = distance;  
            index=i;
            %fprintf('found distance;%f index:%f\n',distance,i);
        end
    end
    idx(z)=index;
end

% =============================================================

end

