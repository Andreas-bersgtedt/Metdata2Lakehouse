/****** Object:  View [logs].[rawjobstogo]    Script Date: 2023-07-28 13:29:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO








--SELECT * FROM [logs].[rawjobstogo]


CREATE view [logs].[rawjobstogo]
as
SELECT bronze_format =FileFormat
,datasource 
,bronze_date_slice 
,bronze_account_name =replace(targethost,'https://','')
,bronze_container_name 
,silver_account_name  =replace(targethost,'https://','') 
,silver_container_name ='silver' 
,bronze_relative_path
,silver_relative_path=bronze_relative_path
,ListOfTables  =REPLACE(STRING_AGG('{¬name¬:¬'+[tbl_name]+'¬,¬partitionkey¬:¬'+[partitionby]+'¬,¬uuid¬:¬'+convert(varchar(40),[uuid])+'¬,¬PK_COLS¬:¬'+[PK_COLS]+'¬}', ',') WITHIN GROUP (ORDER BY tbl_name,logdate ASC)+'','¬','''')
,logdate
,batch
,bronze_Path = 'bronze/'+loadtype+'/'+datasource+'/'+FileFormat
,environment=envitonment
,targethost=replace(targethost,'https://','')
FROM
(
select *,batch=CONVERT(INT,ROW_NUMBER() OVER (ORDER BY tbl_name,logdate ASC)/4)
		,loguuid=CONVERT(BIGINT,hashbytes('MD5',convert(VARCHAR(50),uuid)))
		,loadtype=convert(varchar(50),'full')
	FROM logs.bronzejobs
WHERE is_processed=0
) as XX
group by FileFormat
,datasource 
,bronze_date_slice 
,bronze_account_name 
,bronze_container_name 
,bronze_relative_path 
,logdate
,batch
,loadtype
,envitonment
,targethost
GO
