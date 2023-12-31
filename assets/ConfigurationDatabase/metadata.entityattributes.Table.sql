/****** Object:  Table [metadata].[entityattributes]    Script Date: 2023-07-28 13:29:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [metadata].[entityattributes](
	[UID] [bigint] IDENTITY(1,1) NOT NULL,
	[attributeKey] [varchar](100) NOT NULL,
	[attributeKeyOrder] [int] NOT NULL,
	[attributename] [varchar](100) NOT NULL,
	[attributetype] [varchar](100) NOT NULL,
	[attributevalue] [varchar](100) NOT NULL,
	[entityID] [bigint] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [metadata].[entityattributes] ADD  DEFAULT ((0)) FOR [attributeKeyOrder]
GO
