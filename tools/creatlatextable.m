function creatlatextable(filename,var,f)
%
if ~exist('f','var')
    if exist([filename,'.txt'],'file')
        disp('���ļ��Ѵ��ڣ�')
        a=input('�Ƿ񸲸ǣ�\n','s');
        if a~='y'
            return
        end
    end
end
[r,c]=size(var);
fileID = fopen([filename,'.txt'],'w');
for k=1:r
    for kk=1:c-1
        fprintf(fileID,'%8.4f  & ',var(k,kk));
    end
    fprintf(fileID,'%8.4f  \\\\ \r\n',var(k,kk+1));
end
fclose(fileID);


