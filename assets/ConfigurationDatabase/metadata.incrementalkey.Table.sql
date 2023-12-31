/****** Object:  Table [metadata].[incrementalkey]    Script Date: 2023-07-28 13:29:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [metadata].[incrementalkey](
	[incrementalkeyID] [bigint] IDENTITY(1,1) NOT NULL,
	[attributename] [varchar](100) NOT NULL,
	[attributetype] [varchar](100) NOT NULL,
	[attributevalue] [varchar](100) NOT NULL,
	[filterpredicate] [varchar](100) NOT NULL,
	[entityID] [bigint] NOT NULL
) ON [PRIMARY]
GO
