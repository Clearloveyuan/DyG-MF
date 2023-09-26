function a=logme(b)
count=size(b);
a=zeros(count(1),count(2));
for i=1:count(1)
    for j=1:count(2)
        if b(i,j)~=0
            a(i,j)=log(b(i,j));
        end
    end
end