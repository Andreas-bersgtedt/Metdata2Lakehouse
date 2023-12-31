/****** Object:  Table [logs].[datatransactionlogs]    Script Date: 2023-07-28 13:29:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [logs].[datatransactionlogs](
	[uid] [bigint] IDENTITY(1,1) NOT NULL,
	[envitonment] [varchar](255) NOT NULL,
	[transactionid] [varchar](100) NOT NULL,
	[targetfolder] [varchar](500) NOT NULL,
	[tablename] [varchar](255) NOT NULL,
	[sourcesystem] [varchar](255) NOT NULL,
	[sys_log_insert_utcdatetime] [datetime] NULL,
	[is_processed] [int] NULL,
	[zone] [varchar](100) NOT NULL,
	[PK_COLS] [varchar](100) NULL,
	[targethost] [varchar](500) NULL
) ON [PRIMARY]
GO
ALTER TABLE [logs].[datatransactionlogs] ADD  DEFAULT (getutcdate()) FOR [sys_log_insert_utcdatetime]
GO
ALTER TABLE [logs].[datatransactionlogs] ADD  DEFAULT ((0)) FOR [is_processed]
GO
