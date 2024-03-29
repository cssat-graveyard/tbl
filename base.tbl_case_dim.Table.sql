USE [CA_ODS]
GO
/****** Object:  Table [base].[tbl_case_dim]    Script Date: 12/4/2013 9:14:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [base].[tbl_case_dim](
	[id_case] [int] NOT NULL,
	[case_type_txt] [varchar](200) NULL,
	[dt_case_opn] [datetime] NOT NULL,
	[dt_case_cls] [datetime] NOT NULL,
	[cseq] [bigint] NULL,
	[case_opn_days] [int] NULL,
	[tbl_refresh_dt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_case] ASC,
	[dt_case_opn] ASC,
	[dt_case_cls] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
