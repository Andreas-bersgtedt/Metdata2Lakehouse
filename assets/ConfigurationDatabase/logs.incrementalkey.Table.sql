/****** Object:  Table [logs].[incrementalkey]    Script Date: 2023-07-21 22:45:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [logs].[incrementalkey](
	[logid] [bigint] IDENTITY(1,1) NOT NULL,
	[attributename] [varchar](100) NOT NULL,
	[attributetype] [varchar](100) NOT NULL,
	[attributevalue] [varchar](100) NOT NULL,
	[datatransactionlogsUID] [bigint] NOT NULL
) ON [PRIMARY]
GO
