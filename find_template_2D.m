% Test code:
tablet = imread('tablet.png');
imshow(tablet);
glyph = tablet(75:165, 150:185);
imshow(glyph);
[y, x] = find_template_2D__(template, image);
disp([y x]);

function [yIndex, xIndex] = find_template_2D__(template, image)
    % TODO: Find template in img and return [y x] location
    c = normxcorr2(template, image);
    %disp([1:size(c, 2); c]);
    [maxValue, raw_X_Index, raw_Y_Index] = max(c);
    xIndex = raw_X_Index - size(template, 2) + 1;
    yIndex = raw_Y_Index - size(template, 2) + 1;
end

