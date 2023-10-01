function resized_image = resize(image, scale_factor)
    [rows, cols] = size(image);
    new_rows = floor(rows * scale_factor);
    new_cols = floor(cols * scale_factor);
    resized_image = zeros(new_rows, new_cols);
    for i = 1:new_rows
        for j = 1:new_cols
            original_i = floor(i / scale_factor) + 1;
            original_j = floor(j / scale_factor) + 1;
            resized_image(i, j) = image(original_i, original_j);
        end
    end
end

%{
function resized_image = resize(image, rate)
    [height, width] = size(image);
    new_height = height * rate;
    new_width = width * rate;
    resized_image = imresize(image , [new_height, new_width]);
end
%{function res=resize(img,a)
%[l,c,h]=size(img)
%img_zoom=ones(l*a,c*a,h);
%for i=1:(l*a)
   % for j=1:(c*a)
        %if round(i/a)>l
          %  x=l;
        %elseif round(i/a)==0
           % x=1;
        %else
           % x=round(i/a);
       % end
        %if round(j/a)>c
           % y=c;
        %elseif round(j/a)==0
           % y=1;
       % else
           % y=round(j/a);
       % end
        %img_zoom(i,j,:)=img(x,y,:);
   % end
%end
%res=img_zoom;
%end
%}