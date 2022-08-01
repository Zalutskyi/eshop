USE [master];
GO
CREATE LOGIN W 
    WITH PASSWORD    = N'Maks1',
    CHECK_POLICY     = ON,
    CHECK_EXPIRATION = OFF;
GO
EXEC sp_addsrvrolemember 
    @loginame = N'W', 
    @rolename = N'sysadmin';
exit    
