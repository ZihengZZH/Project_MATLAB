function Rresult2 = recognition_2

% Loading the database
load('ref.mat');
% Recording new voice
R2 = audiorecorder(16000,8,1) ;

recordblocking(R2,2);

% Exact the voice
voice1=getaudiodata(R2);
[x1,x2]=vad(voice1);
m=mfcc(voice1);
m=m(x1:x2,:);

% Compare with database
disp('Comparing testing with reference...')
dist=zeros(1,9);
[~,b]=size(ref);
a=b/9;
result=zeros(1,a);
for i=1:a
    for j=i*9-8:i*9
    dist(1,j-9*i+9)=dtw(m,ref(j).m);
    [~,k]=min(dist(1,:));
    result(1,i)=k;
    end
end

% Output
Rresult2=tabulate(result);
[~,y2]=max(Rresult2);
[~,b2]=size(y2);
if b2==1
    y2(2)=Rresult2(1,1);
end
