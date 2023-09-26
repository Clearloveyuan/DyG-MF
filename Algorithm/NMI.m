function accuracy=compute_NMI(r_labels,labels)
N=length(labels);
temp=zeros(1,N);
ids=unique(labels);
for i=1:length(ids)
    index=find(labels==ids(i));
    temp(index)=i;
end
labels=temp;
% labels
% r_labels
rows=max(r_labels);
cols=max(labels);
%构建C矩阵
matrix=zeros(rows,cols);
for i=1:rows
    for j=1:cols
        set1=find(r_labels == i);
        set2=find(labels == j);
        matrix(i,j)=length(intersect(set1,set2));
    end
end

ro=sum(matrix,1);
%co结果为列向量,求其转置为行向量
co=sum(matrix,2);
co=co';

t1=matrix*N;
t2=ro'*co;
t2=t2';
tt=logme(t1./t2);
tt=-2*tt.*matrix;

pp=sum(ro.*(logme(ro/N)))+sum(co.*(logme(co/N)));

accuracy=abs(sum(sum(tt))/pp);

function a=logme(b)
count=size(b);
a=zeros(count(1),count(2));
for i=1:count(1)
    for j=1:count(2)
        if b(i,j)~=0
            a(i,j)=log(b(i,j)+eps);
        end
    end
end
