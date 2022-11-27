img = rgb2gray(imread('img1.jpg'));
img = imresize(img,[256 256]);
w = rgb2gray(imread('img2.jpg'));
w = imresize(w,[256 256]);
imshow(img)
imshow(w)
[U,S,V] = svd(im2double(img));
alpha = 0.1;
S_n = S + alpha.*im2double(w);
wa = U*S_n*V';
imshow(wa)
wi = (1/alpha)*(S_n-S);
imshow(wi)