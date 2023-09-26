function  [Bt,Ot,clusternum,laKMM,errorr]=jlnmf(d,l,lambda,gamma,iter,M1,M2,M3)
% 2019.12.16
%Coding by Dongyuan Li 
%Xidian University 
%Email:  lidy94805@gmail.com


% Input 
%      --d is the features that we select in latent space 
%      --l connected component number 
%      --M1 when judge=0 M1 is the first time step layer  when judge=1 M1 represents the Bt-1 
%      --M2 means the current time step layer   
%      --lambda parameter
%      --gamma parameter
%      --iter is the iteration times 


% Output
%      --Bt is the representation learning matrix 
%      --Ct is the cluster of the current time clustering result 
 

% Judge the input variable if it is the first time or other times 

if nargin > 8
    error('requires at most 6 inputs');
end

switch nargin
    case 6
    	judge=1; 
    case 8
		judge=0;       
end




errorr=zeros(iter,1);
if judge==1
    [~,n]=size(M1);
    %initialization for three variables Bt,Ot and Ft 
	[U,V,D]=svds(M1,d);
	
    %normalization on it 
    Bt=abs(U*sqrt(V));
    Ot=abs(sqrt(V)*D');
    
    [Bt, U, V, ~] = svd2uv(Bt, l);
    
    
    D1=1;
    D2=1;
   
	%P=zeros(n,n);
    %Pk=zeros(d,d);
	%L=[P,Bt;Bt',Pk];
	
    %Ds=diag(sum(L,2));
	%Ls=Ds-L;
	
    %[a,aa]=eig(Ls);
	%a=[a;diag(aa)';abs(diag(aa))']';
    %a=sortrows(a,n+d+2);
	%Ft=a(2:l+1,1:n+d)';
	%V=zeros(n,l);
	
    %for kkk=1:n
    %for oo=1:d
	%V(kkk,oo)=norm(Ft(kkk,:)-Ft(n+oo,:));
    %end
    %end
%Update untile it is corveraged
	BT=Bt;
	OT=Ot;
    
    for o=1:iter
% UPdate Bt
	U1=D1*U;
	V1=D2*V;
	dist=sqdist(U1',V1');
	tmp=zeros(n,d);
    for i=1:n
        %Bt(i,:)=BT(i,:).*((2*M1(i,:)*OT')./(2*BT(i,:)*(OT*OT')));
        Bt(i,:)=BT(i,:).*((2*M1(i,:)*OT')./(2*BT(i,:)*(OT*OT')+gamma*dist(i,:))); 
        %tmp(i,:)=EProjSimplex_new(Bt(i,:));
    end
    

	
	Ot=OT.*((BT'*M1)./(BT'*BT*OT+eps));
	
	%L=[P,Bt;Bt',Pk];
	%Ds=diag(sum(L,2));
	%Ls=Ds-L;
	%[a,aa]=eig(Ls);
	%a=[a;diag(aa)';abs(diag(aa))']';
    %a=sortrows(a,n+d+2);
	%Ft=a(1:l,1:n+d)';
	%V=zeros(n,l);
    %for kkk=1:n
	%for oo=1:d
	%V(kkk,oo)=norm(Ft(kkk,:)-Ft(n+oo,:));
	%end
    %end
    [Bt, U, V, evc, D1, D2] = svd2uv(Bt, l);
    %fn1 = sum(evc(1:l));
    %fn2 = sum(evc(1:l+1));
    
    %zr = 10e-5;
    %if fn1 < l-zr % the number of block is less than c
        %gamma = 2*gamma;
    %elseif fn2 > l+1-zr % the number of block is more than c
        %gamma = gamma/2;    
    %end
    errorr(o,1) = norm(M1-Bt*Ot,'fro');
    if norm(M1-Bt*Ot,'fro')<0.01
        break;
    else 
        BT=Bt;
        OT=Ot;
    end
    end
    [clusternum, laKMM] = struG2la(Bt);
    
    
else
    [~,n]=size(M3);
    [U,V,D]=svds(M3,d);
	Bt=abs(U*sqrt(V));
	Ot=abs(sqrt(V)*D');
	P=zeros(n,n);
    Pk=zeros(d,d);
	L=[P,Bt;Bt',Pk];
	Ds=diag(sum(L,2));
	Ls=Ds-L;
	[a,aa]=eig(Ls);
	a=[a;diag(aa)';abs(diag(aa))']';
    a=sortrows(a,n+d+2);
	Ft=a(1:l,1:n+d)';
	V=zeros(n,l);
	for o=1:n
	for oo=1:d
	V(o,oo)=norm(Ft(o,:)-Ft(n+oo,:));
	end
	end
%Update untile it is corveraged
	BT=Bt;
	OT=Ot;
%n1 is the common nodes 
%n2 is the change hugely nodes 	
	label=zeros(n,1);
    for o=1:n
    for j=1:n
	label(o,1)=label(o,1)+(M3(o,j)-M1(o,:)*M2(:,j)+M3(j,o)-M1(j,:)*M2(:,o));
    end
    label(o,1) = label(o,1)./(sum(M3 (o,:))+sum( M3(:,o)));
    end
	specific=round(0.1*n);
	[~,sl]=sort(label);
	n1=n-specific;
	n2=specific;
    
	Bt1=Bt(sl(1:n1),:);
    %size(Bt1)
	Bt2=Bt(sl(n1+1:n),:);
    %size(Bt2)
	BT2=Bt2;
    %size(BT2)
	BT1=Bt1;
    %size(BT1)
	V1=V(sl(1:n1),:);
    %size(V1)
	V2=V(sl(1+n1:n),:);
	%size(V2)
    M31=M3(sl(1:n1),:);
    M32=M3(sl(1+n1:n),:);
    
    M11=M1(sl(1:n1),:);
    %size(M11)
	%M12=M1(sl(1+n1:n),:);
    %size(M12)
    %size(Ot)
    for o=1:iter
% UPdate Bt
	%parfor i=1:n1
	%     Bt1(i,:)=BT1(i,:).*((2*M31(i,:)*OT'+lambda*M11(i,:))./(2*BT1(i,:)*(OT*OT')+eps));
        %Bt1(i,:)=BT1(i,:).*((2*M31(i,:)*OT'+lambda*M11(i,:))./(2*BT1(i,:)*(OT*OT')+gamma*V1(i,:)+eps));
	%end
	parfor i=1:n2
	     Bt2(i,:)=BT2(i,:).*((2*M32(i,:)*OT')./(2*BT2(i,:)*(OT*OT')+eps));
        %Bt2(i,:)=BT2(i,:).*((2*M32(i,:)*OT')./(2*BT2(i,:)*(OT*OT')+gamma*V2(i,:)+eps));
	end
	Bt(sl(1:n1),:)=Bt1;
	Bt(sl(n1+1:n),:)=Bt2;
	
	Rowadd=sum(Bt,2);
    %size(Rowadd)
	Row=repmat(Rowadd,1,d);
	Bt=Bt./Row;
	
	Ot=OT.*((BT'*M3)./(BT'*BT*OT+eps));
	L=[P,Bt;Bt',Pk];
	Ds=diag(sum(L,2));
	Ls=Ds-L;
	[a,aa]=eig(Ls);
	a=[a;diag(aa)';abs(diag(aa))']';
    a=sortrows(a,n+d+2);
	Ft=a(1:l,1:n+d)';
	V=zeros(n,l);
    for kkkk=1:n
	for oo=1:d
	V(kkkk,oo)=norm(Ft(kkkk,:)-Ft(n+oo,:));
	end
    end
    errorr(o,1) = norm(M3-Bt*Ot,'fro');
    if norm(M3-Bt*Ot,'fro')<0.01
		break;
	else 
	BT=Bt;
	OT=Ot;
    end
    end
    [Ct,~]=kmeans(Bt,l,'Replicates',1000);
end
end
 




