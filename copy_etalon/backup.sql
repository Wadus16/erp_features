DECLARE @mydb nvarchar(50);
-- Ввести имя базы данных
set @mydb = '$(backupdb)';

DECLARE @back_file nvarchar(300);
-- Ввести расположение файла бэкапа
set @back_file = '$(bakfile)';

BACKUP DATABASE @mydb TO  DISK = @back_file WITH NOFORMAT, NOINIT,  NAME = N'Full backup', SKIP, NOREWIND, NOUNLOAD, STATS = 10
GO