function [Phi,Psi,landmark,M0] = select1(M1,c,k,num)
%M1----------is PMI matrix at current snapshot
%c-----------is the number of cluster at current snapshot
%k-----------is number of neighbor vertices
%num---------initialized number of landmarks
[n,~]=size(M1);
%KMM initialized
folder_now = pwd;  
addpath([folder_now, '/KMM']);
addpath([folder_now, '/KMM/funs']);
%- m: the number of multiple means(MM)
m=ceil(sqrt(n*k));
[laKMM, laMM, BiGraph, A, OBJ, Ah, laKMMh,alpha,lambda] = KMM(M1, c, m, k);
% Output:
%       - laKMM: the cluster assignment for each point
%       - laMM: the sub-cluster assignment for each point
%       - BiGraph: the matrix of size nSmp x nMM 
%       - A: the multiple means matrix of size nFea x nMM
%       - laKMMh: the history of cluster assignment for each point
landmark=zeros(num,1);
DD=sum(M1,2);
[nn,~]=size(DD);
[aa,bb]=sort(DD,'descend');
k=2; 
landmark(1,1)=bb(1,1);

for i=2:nn
if k<=num
for j=1:k-1
o=landmark(j,1);
if M1(i,o)~=0
break
end
if j==k-1 && M1(i,o)==0
landmark(k,1)=bb(i,1);
k=k+1;
end
end
end
end
l0=find(landmark==0);
landmark(l0,:)=[];
landmark=sort(landmark,'ascend');

M0=M1(landmark,:);
M0=M0(:,landmark);



Phi=BiGraph(landmark,:);
Phi=Phi';
Psi=A(landmark,:);
Psi=Psi';


%or landmark selection by 
%{

[Idx,C,sumD,D]=Kmeans(M1,c);
[max_Idx,index]=max(Idx,[],1);
index=index';
index=unique(index,'rows');
M0=M1(index,:);
M0=M0(:,index);

[U,S,V] = svd(M0);
Phi=U*sqrt(S);
Phi=Phi';
Psi=sqrt(S)*V';
Psi=Psi';

%}






