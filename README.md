% Week 2 version %
% Successfully compare two group of voice with MFCC & DTW %

% Testing %
disp('Calculating reference voice coefficients...')
for i=1:10
    fname=sprintf('train1\\%d.mp3',i-1);
    [x fs]=audioread(fname);
    [x1 x2]=vad(x);
    m=mfcc(x);
    m=m(x1:x2,:);
    ref(i).mfcc=m;
end
 
disp('Calculating testing voice coefficients...')
for i=1:10
    fname=sprintf('test1\\%d.mp3',i-1);
    [x fs]=audioread(fname);
    [x1 x2]=vad(x);
    m=mfcc(x);
    m=m(x1:x2,:);
    test(i).mfcc=m;
end
 
disp('Comparing testing with reference...')
dist=zeros(10,10);
for i=1:10 
    for j=1:10
        dist(i,j)=dtw(test(i).mfcc,ref(j).mfcc);
    end
end
 
disp('Calculating comparison result...')
for i=1:10
    [d,j]=min(dist(i,:));
    fprintf('The testing %d result is：%d\n',i-1,j-1);
end
