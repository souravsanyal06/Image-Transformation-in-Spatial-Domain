function [enhancedIm,transFunc] = HistEqualization(inputIm)

[m,n] = size(inputIm);
enhancedIm=uint8(zeros(m,n));
freq=zeros(1,256);


HistEq=zeros(1,256);
Map = zeros(m,n);
%transFunc = zeros(1,256);

for i=1:m
    for j=1:n
        value=inputIm(i,j);
        freq(value+1)=freq(value+1)+1;
    end
end

sum=0;

for i=1:length(HistEq)
   sum=sum+freq(i);
   HistEq(i)=round((sum/double(m*n))*255);
end

for i=1:m
    for j=1:n
            enhancedIm(i,j)= HistEq(inputIm(i,j)+1);
    end
end

for i = 1:m
    for j = 1: n
    Map(i,j) = enhancedIm(i,j)/inputIm(i,j);
    end
end

transFunc = HistEq/255;
end