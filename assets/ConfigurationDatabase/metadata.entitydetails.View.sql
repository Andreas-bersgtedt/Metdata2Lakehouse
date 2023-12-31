/****** Object:  View [metadata].[entitydetails]    Script Date: 2023-07-28 13:29:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Script for SelectTopNRows command from SSMS  ******/
CREATE VIEW [metadata].[entitydetails]
as
SELECT  E.[entityID]
      ,[envitonment]
      ,[tablename]
      ,[sourcesystem]
      ,[is_enabled]
      ,[is_incremental]
	  ,[attributeKey]
,[attributeKeyOrder]
,[attributename]
,[attributetype]
,[attributevalue]

  FROM [metadata].[entity] E
  left outer join [metadata].[entityattributes] A on E.[entityID]=a.[entityID]
GO
