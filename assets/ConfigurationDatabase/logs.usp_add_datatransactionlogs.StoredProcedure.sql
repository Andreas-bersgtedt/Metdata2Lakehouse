/****** Object:  StoredProcedure [logs].[usp_add_datatransactionlogs]    Script Date: 2023-07-28 13:29:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [logs].[usp_add_datatransactionlogs]
(@envitonment varchar(500)
		,@transactionid varchar(500)
		,@targetfolder varchar(500)
		,@tablename varchar(500)
		,@sourcesystem varchar(500)
		,@zone varchar(500)
		,@PK_COLS VARCHAR(100)
		,@targethost VARCHAR(500)
)
AS BEGIN
INSERT INTO logs.datatransactionlogs([envitonment],[transactionid],[targetfolder],[tablename],[sourcesystem],[ZONE],PK_COLS,targethost)
SELECT @envitonment,@transactionid,@targetfolder,@tablename,@sourcesystem,@zone,isnull(@PK_COLS,''),@targethost
END
GO
