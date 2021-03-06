/*
更改数据库使用内存，一般为物理内存的70%--80%
*/
sp_configure 'show advanced options',1;
go
reconfigure;
go
sp_configure 'max server memory',16384;
go
reconfigure;
go

/*
设置数据库并发为1并发
*/
sp_configure 'show advanced options', 1;
go
reconfigure with override;
go
sp_configure 'max degree of parallelism',1;
go
reconfigure with override;
go