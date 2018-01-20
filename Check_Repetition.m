
function [repetition_coord_value, index_set]=Check_Repetition(elements)
i=1;
col_1=elements(:,1);
col_2=elements(:,2);
Indexes=[];
while i<length(col_1)
    Repetition_Index=find(elements(:,1)==col_1(i) & elements(:,2)==col_2(i));
    Indexes=cat(1,Indexes,Repetition_Index');
    col_1(Repetition_Index(1))=[];
    col_2(Repetition_Index(1))=[];
    i=i+1;
end
repetition_coord_value=[col_1 col_2];
index_set=Indexes(:,1);
end


