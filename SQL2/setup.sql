CREATE DATABASE DemoData2;
GO
USE DemoData2;
GO
EXEC sp_addlinkedserver 
    @server=N'SQL1', 
    @srvproduct=N'', 
    @provider=N'MSOLEDBSQL', 
    @datasrc=N'$(linkedserver)'
GO
CREATE PROCEDURE dbo.CALLOTHERSERVER
AS
	SET NOCOUNT ON;  
	select * from SQL1.DemoData.dbo.Products;
GO