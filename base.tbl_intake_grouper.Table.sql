USE [CA_ODS]
GO
/****** Object:  Table [base].[tbl_intake_grouper]    Script Date: 12/4/2013 9:14:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [base].[tbl_intake_grouper](
	[intake_grouper] [int] NOT NULL,
	[id_case] [int] NOT NULL,
	[id_intake_fact] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_intake_fact] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [idx_intake_grouper]    Script Date: 12/4/2013 9:14:52 AM ******/
CREATE NONCLUSTERED INDEX [idx_intake_grouper] ON [base].[tbl_intake_grouper]
(
	[id_intake_fact] ASC
)
INCLUDE ( 	[intake_grouper],
	[id_case]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
