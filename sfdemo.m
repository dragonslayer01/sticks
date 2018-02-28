I = imread('rice.png');
J = imnoise(I,'speckle');

figure(1);

subplot(2,2,1); 
imshow(I);
title('Original');

subplot(2,2,2); 
imshow(J);
title('Speckles');

G = sf(J,3,1);

subplot(2,2,3); 
imshow(G);title('Image filtered by a n = 3, k = 1 sticks filter');

G = sf(J,5,1);

subplot(2,2,4); 
imshow(G);title('n = 5, k = 1');