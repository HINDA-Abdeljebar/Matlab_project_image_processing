
function res= Prewitt(im)
    DG=im2double(im);
    [l ,c]=size(DG);
    res=DG;
    for i=2:l-1
        for j=2:c-1
           %derive horizontale
           x=1/3*(DG(i-1,j+1)+DG(i,j+1)+DG(i+1,j+1)-DG(i-1,j-1)-DG(i,j-1)-DG(i+1,j-1));
           %derive verticale
           y=1/3*(-DG(i-1,j+1)+DG(i+1,j+1)-DG(i-1,j)+DG(i+1,j)-DG(i-1,j-1)+DG(i+1,j-1));
           %le module
           res(i,j)=sqrt( double(x^2+y^2) ).*255;
           if res(i,j)<25
               res(i,j)=0;
           else
               res(i,j)=255;
           end
        end
    end
  end 
%{
function contour = Prewitt(image)
     %contour = edge(image,'Prewitt');
    
  %define Prewitt kernels for x and y direction
    prewitt_x = [-1, 0, 1; -1, 0, 1; -1, 0, 1];
    prewitt_y = [-1, -1, -1; 0, 0, 0; 1, 1, 1];
    % apply kernels to the image
    gradient_x = conv2(double(image), double(prewitt_x), 'same');
    gradient_y = conv2(double(image), double(prewitt_y), 'same');
    % calculate gradient magnitude
    contour = sqrt(gradient_x.^2 + gradient_y.^2);
    contour = uint8(contour);
    
end
%}
