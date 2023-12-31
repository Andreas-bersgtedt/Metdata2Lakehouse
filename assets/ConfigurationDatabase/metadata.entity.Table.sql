/****** Object:  Table [metadata].[entity]    Script Date: 2023-07-28 13:29:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [metadata].[entity](
	[entityID] [bigint] IDENTITY(1,1) NOT NULL,
	[envitonment] [varchar](255) NOT NULL,
	[tablename] [varchar](255) NOT NULL,
	[sourcesystem] [varchar](255) NOT NULL,
	[is_enabled] [int] NOT NULL,
	[is_incremental] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [metadata].[entity] ADD  DEFAULT ((0)) FOR [is_enabled]
GO
ALTER TABLE [metadata].[entity] ADD  DEFAULT ((0)) FOR [is_incremental]
GO
