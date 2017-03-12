 function Rresult1 = recognition_1

% Loading the database
load('ref.mat');
% Recording new voice
R1 = audiorecorder(16000,8,1) ;

recordblocking(R1,2);

% Exact the voice
voice1=getaudiodata(R1);
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
Rresult1=tabulate(result);
[~,y1]=max(Rresult1);
[~,b1]=size(y1);
if b1==1
    y1(2)=Rresult1(1,1);
end
