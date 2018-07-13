%% Read an image
img = imread('moon.png');
imshow(img);

%% Add salt & pepper noise
noisy_img = imnoise(img, 'salt & pepper', 0.02);
imshow(noisy_img);

%% Apply a median filter
median_filtered = medfilt2(noisy_img);
imshow(median_filtered);

%% Functions
function output = blend(a, b, alpha)
% BLEND Blends two images

    output = a * alpha + b * (1-alpha);
end