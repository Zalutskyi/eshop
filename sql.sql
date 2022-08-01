USE [master];
EXEC xp_instance_regwrite N'HKEY_LOCAL_MACHINE', 
     N'Software\Microsoft\MSSQLServer\MSSQLServer',
     N'LoginMode', REG_DWORD, 2;
GO
CREATE LOGIN Web 
    WITH PASSWORD    = N'23062003Maks',
    CHECK_POLICY     = ON,
    CHECK_EXPIRATION = OFF;
GO
EXEC sp_addsrvrolemember 
    @loginame = N'Web', 
    @rolename = N'sysadmin';
GO
CREATE LOGIN PublicApi
    WITH PASSWORD    = N'23062003Zal',
    CHECK_POLICY     = ON,
    CHECK_EXPIRATION = OFF;
GO
EXEC sp_addsrvrolemember 
    @loginame = N'PublicApi', 
    @rolename = N'sysadmin';
GO
CREATE LOGIN WebU
WITH PASSWORD = N'1Ma',
CHECK_POLICY = ON,
CHECK_EXPIRATION = OFF;
GO
EXEC sp_addsrvrolemember
@loginame=N'WebU',
@rolename=N'sysadmin';
GO
exit

