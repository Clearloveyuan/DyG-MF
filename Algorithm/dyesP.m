% GLOBALI VERSION
function [n2,aa1,Phi,Psi,Whole]=dyesP(A1,A2,A3,KK,landmark,real2,realde,alpha,ll,Phi,Psi,Whole)

M2=PMI(A2,2);
CA=(0.64*A2+0.36*(A1+A3))./3;
[n,~] = size(A2);
delta = zeros(n,1);
for i=1:n
delta(i,1) = norm(A2(i,:)-CA(i,:),2);
end
[~,bb]=sort(delta,'descend');
b = find(realde~=0);
[nn,~] = size(b);
for o=1:nn
    k(o,1) = find(bb==b(o,1));
end
[add,~]=find(k>30);
[an,~]=size(add);
ldmark=[bb(1:KK,:);b(add)];
ldmark=sort(ldmark,'ascend');
KK=KK+an;
[t1,~]=size(landmark);
[t2,~]=size(ldmark);
for i=1:t1
for j=1:t2
    if landmark(i,1)==ldmark(j,1)
        landmark(i,:)=-1;
    end
end
end
kb=find(landmark==-1);
landmark(kb,:)=[];
Phi=Whole(landmark,:)';
Psi(:,kb)=[];
[n,~]=size(M2);
label=1:n;
label=label';
label([ldmark;landmark],:)=[];


MDD=M2(ldmark,:);
MDD=MDD(:,ldmark);

MDS=M2(ldmark,:);
MDS=MDS(:,label);

MSD=M2(label,:);
MSD=MSD(:,ldmark);

MSS=M2(label,:);
MSS=MSS(:,label);

M00=M2(landmark,:);
M00=M00(:,landmark);

M0D=M2(landmark,:);
M0D=M0D(:,ldmark);

MD0=M2(ldmark,:);
MD0=MD0(:,landmark);

M0S=M2(landmark,:);
M0S=M0S(:,label);

MS0=M2(label,:);
MS0=MS0(:,landmark);

hatMDD=[M00,M0D;MD0,MDD];
hatMDS=[M00,M0S;MD0,MDS];
hatMSD=[M00,M0D;MS0,MSD];
hatMSS=[M00,M0S;MS0,MSS];

[H1,B1] = Initialize3(landmark,real2,KK);
Dy= M2(ldmark,:);
Dy=Dy(:,ldmark);
 
[na,nb]=size(H1);
zero1=zeros(na,na);
zero2=zeros(nb,nb);

X=zeros(na,nb);

for i=1:ll

S=[zero1,H1;H1',zero2];
D=diag(sum(S,2));
LS=D-S;
LS=full(LS);
[aa,~]=eig(LS);
F=aa(:,1:KK);

for ii=1:na
for jj=1:nb
X(ii,jj)=norm(F(ii,:)-F(na+jj,:),2);
end
end
for oo=na+1:nb
B1(:,oo)=B1(:,oo).*((Psi'*Phi*H1*hatMDD(:,oo)+[M00;MS0]'*hatMSD(:,oo))./(Psi'*Phi*(H1*H1')*Phi'*Psi*B1(:,oo)+[M00;MS0]'*[M00;MS0]*B1(:,oo)+eps));
end
for j=na+1:nb
H1(:,j)=H1(:,j).*((Phi'*Psi*B1*hatMDD(j,:)'+[M00,M0S]*hatMDS(j,:)')./(Phi'*Psi*(B1*B1')*Psi'*Phi*H1(:,j)+alpha*X(:,j)+[M00,M0S]*[M00,M0S]'*H1(:,j)+eps));
end
end
WW1=Phi*H1;
WW1=WW1';
Whole(ldmark,:)=WW1(n3+1:n3+KK,:);
AA=sum(Whole,2);
Whole=Whole./AA;
%[aa1,~]=kmeans(Whole,4,'Replicates',100);
%n2=NMI(aa1,real2);

end
