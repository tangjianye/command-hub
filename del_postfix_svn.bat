@echo OFF
@echo ɾ��SVN�汾������Ϣ
 
::FOR /R [[drive:]path] %variable IN (set) DO command [command-parameters]
::
::    ����� [drive:]path Ϊ����Ŀ¼����ָ��ÿ��Ŀ¼�е�
::    FOR ��䡣����� /R ��û��ָ��Ŀ¼����ʹ�õ�ǰ
::    Ŀ¼�����set��Ϊһ������(.)�ַ�����ö�ٸ�Ŀ¼��(�����ļ�)��
for /r . %%I in (.) do @if exist "%%I\.svn" (
    @echo "Folder=[%%I\.svn]"
    @rd /s /q "%%I\.svn"
)
@echo Completed.