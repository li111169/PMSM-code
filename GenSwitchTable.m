%version-2 Generate binary table
function switch_table = GenSwitchTable(n)
    
 vector=0:2^n-1;
 str = dec2bin(vector);
 switch_table = str-'0';
 
end

%version-1 
% function result = GenSwitchVector(n)
% SwitchTable=zeros(n,2^n);
% 
% for i=0:length(SwitchTable)-1
%     binChar=char(dec2bin(i,n));
%     for j=1:length(binChar)
%         SwitchTable(j,i+1)=str2double(binChar(j));
%     end
%     
% end
% result = SwitchTable;
% end

