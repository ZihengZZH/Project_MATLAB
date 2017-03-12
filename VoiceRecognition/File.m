% Build the database
R = audiorecorder(16000,8,1);
load('ref.mat');
[a,b]=size(ref);
for i=1:9
disp('Start');
fprintf('%d',i);
recordblocking(R,2);
disp('End');
x = getaudiodata(R);
[x1,x2]=vad(x);
m=mfcc(x);
m=m(x1:x2,:);
ref(b+i).m=m;
end
delete('test.wav');

enter=input('Save file?\n');
if enter==1
delete('ref.mat');
save ref.mat ref;
end
