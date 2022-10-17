%Task 1: Implement histogram equalization technique on
f=imread("penguin.jpg");


% a) Low contrast image
L=imadjust(f,[0 1],[0.3 0.7]);
subplot(2,2,1); imshow(L); subplot(2,2,2); histogram(L);
e=histeq(L)
subplot(2,2,3); imshow(e); subplot(2,2,4); histogram(e);
sgtitle('Low contrast image') ;



% b) High contrast image
h=imadjust(f,[0 1],[0.3 0.5]);
subplot(2,2,1);imshow(h);subplot(2,2,2);histogram(h);
e=histeq(h)
subplot(2,2,3); imshow(e); subplot(2,2,4); histogram(e);
sgtitle('High contrast image') ;

% c) Normal image
f=imread("penguin.jpg");
subplot(2,2,1);imshow(f);subplot(2,2,2);histogram(f);
e=histeq(f)
subplot(2,2,3); imshow(e); subplot(2,2,4); histogram(e);
sgtitle('Normal image') ;

% d) Negative image
n=imadjust(f,[0 1],[1 0]);
subplot(2,2,1);imshow(n);subplot(2,2,2);histogram(n);
e=histeq(n)
subplot(2,2,3); imshow(e); subplot(2,2,4); histogram(e);
sgtitle('Negative image') ;



%Task 2: Implement histogram Matching between

%original image
f=imread("penguin.jpg");

% a) Low contrast image to High contrast image and vice versa
L=imadjust(f,[0 1],[0.3 0.7]);
h=imadjust(f,[0 1],[0.3 0.5]);

subplot(3,2,1); imshow(L); subplot(3,2,2); histogram(L);
subplot(3,2,3); imshow(h); subplot(3,2,4); histogram(h);
e=imhistmatch(L,h)
subplot(3,2,5); imshow(e); subplot(3,2,6); histogram(e);
sgtitle('Low contrast image to High contrast image') ;

% b) High contrast image to Low contrast image 
L=imadjust(f,[0 1],[0.3 0.7]);
h=imadjust(f,[0 1],[0.3 0.5]);

subplot(3,2,1); imshow(L); subplot(3,2,2); histogram(L);
subplot(3,2,3); imshow(h); subplot(3,2,4); histogram(h);
e=imhistmatch(h,L)
subplot(3,2,5); imshow(e); subplot(3,2,6); histogram(e);
sgtitle('High contrast image to Low contrast image ') ;




% c) Normal to low contrast image 
f=imread("penguin.jpg");
L=imadjust(f,[0 1],[0.3 0.7]);
subplot(3,2,1); imshow(L); subplot(3,2,2); histogram(L);
subplot(3,2,3); imshow(f); subplot(3,2,4); histogram(f);
e=imhistmatch(f,L)
subplot(3,2,5); imshow(e); subplot(3,2,6); histogram(e);
sgtitle('Normal to low contrast image') ;

% d) Low to Normal contrast image 
f=imread("penguin.jpg");
L=imadjust(f,[0 1],[0.3 0.7]);
subplot(3,2,1); imshow(L); subplot(3,2,2); histogram(L);
subplot(3,2,3); imshow(f); subplot(3,2,4); histogram(f);
e=imhistmatch(L,f)
subplot(3,2,5); imshow(e); subplot(3,2,6); histogram(e);
sgtitle('Low to Normal contrast image') ;


% e) Normal to High contrast image 
f=imread("penguin.jpg");
h=imadjust(f,[0 1],[0.3 0.5]);
subplot(3,2,1); imshow(h); subplot(3,2,2); histogram(h);
subplot(3,2,3); imshow(f); subplot(3,2,4); histogram(f);
e=imhistmatch(f,h)
subplot(3,2,5); imshow(e); subplot(3,2,6); histogram(e);
sgtitle('Normal to High contrast image ') ;


% f) High to Normal contrast image 
f=imread("penguin.jpg");
h=imadjust(f,[0 1],[0.3 0.5]);
subplot(3,2,1); imshow(h); subplot(3,2,2); histogram(h);
subplot(3,2,3); imshow(f); subplot(3,2,4); histogram(f);
e=imhistmatch(h,f)
subplot(3,2,5); imshow(e); subplot(3,2,6); histogram(e);
sgtitle(' High to Normal contrast image ') ;




