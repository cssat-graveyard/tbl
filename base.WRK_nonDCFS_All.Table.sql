USE [CA_ODS]
GO
/****** Object:  Table [base].[WRK_nonDCFS_All]    Script Date: 12/4/2013 9:14:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [base].[WRK_nonDCFS_All](
	[ID_PRSN] [int] NULL,
	[CUST_BEGIN] [datetime] NULL,
	[CUST_END] [datetime] NULL,
	[backtoDCFS] [int] NULL,
	[CD_PLACEMENT_CARE_AUTH] [int] NULL,
	[PLACEMENT_CARE_AUTH] [varchar](16) NULL,
	[nondcfs_mark] [int] NOT NULL,
	[tbl_refresh_dt] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
