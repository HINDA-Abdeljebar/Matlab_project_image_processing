%{
function result= CumultativeHistogramFunction(histogram)
    cumultative=zeros(1,256);
    cumultative(1)=histogram(1);
    for i=2:256
        cumultative(i)=cumultative(i-1)+histogram(i);
    end
    result = cumultative ;
end
%}
function cumulative_hist =CumultativeHistogramFunction(image)
    [rows, cols] = size(image);
    hist = zeros(256, 1);
    cumulative_hist = zeros(256, 1);
    for i = 1:rows
        for j = 1:cols
            hist(image(i, j) + 1) = hist(image(i, j) + 1) + 1;
        end
    end
    cumulative_hist(1) = hist(1);
    for i = 2:256
        cumulative_hist(i) = cumulative_hist(i - 1) + hist(i);
    end
end
