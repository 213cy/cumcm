function lookstr(filename,str)
%�������url�ļ�ת������ȷ��ʽ������ı�������
s = regexprep(str,{'%','\\'}, {'%%','\\\\'});

fileID=[filename,'.txt'];
fid = fopen(fileID, 'w');
fprintf(fid, s);
%fwrite(fid, '����')
fclose(fid);
edit(fileID)