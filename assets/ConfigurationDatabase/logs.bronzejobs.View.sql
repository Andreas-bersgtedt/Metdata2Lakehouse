/****** Object:  View [logs].[bronzejobs]    Script Date: 2023-07-28 13:29:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE VIEW [logs].[bronzejobs]
as
SELECT [uuid]=TRY_CONVERT(uniqueidentifier,[transactionid])
,[FileFormat]='parquet'
,[datasource] = [sourcesystem]
,[bronze_date_slice]=RIGHT([targetfolder],13)
,[bronze_account_name]='extlakehouseadls001'
,[bronze_container_name] = [Zone]
,[bronze_relative_path] = LOWER([sourcesystem]+'/'+SUBSTRING([tablename],2,CHARINDEX('].',[tablename])-2))
,[tbl_name]=LOWER(REPLACE(SUBSTRING([tablename],CHARINDEX('.[',[tablename])+2,200),']',''))
,[partitionby]=''
,[logdate]=CONVERT(DATE,[sys_log_insert_utcdatetime])
,[is_processed]
,[envitonment]
,PK_COLS=isnull(PK_COLS,'')
,targethost=isnull(targethost,'')

FROM (

SELECT [uid]
      ,[envitonment]
      ,[transactionid]
      ,[targetfolder]
      ,[tablename]
      ,[sourcesystem]
      ,[sys_log_insert_utcdatetime]
      ,[is_processed]
      ,[zone]
	  ,PK_COLS
	  ,targethost/*=REPLACE(REPLACE(targethost,'https://',''),'.dfs.core.windows.net','')*/
  FROM [logs].[datatransactionlogs]
  ) AS XXXX
  Where [Zone] = 'Bronze'
  
GO
