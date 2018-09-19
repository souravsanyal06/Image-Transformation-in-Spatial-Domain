function [varargout]=CalHist(img)
[r,c]=size(img);
y=zeros(1,256);
for i=1:r  
 for j=1:c
    z=img(i,j);
   y(1+z)=y(1+z)+1;
end
end
yn = y./double((r*c));
varargout{1} = y ;
varargout{2} = yn;
end
