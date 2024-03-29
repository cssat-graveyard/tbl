USE [CA_ODS]
GO
/****** Object:  Table [base].[tbl_household_children]    Script Date: 12/4/2013 9:14:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [base].[tbl_household_children](
	[id_case] [int] NOT NULL,
	[id_intake_fact] [int] NOT NULL,
	[id_prsn_child] [int] NOT NULL,
	[dt_birth] [datetime] NULL,
	[age_at_referral_dt] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_case] ASC,
	[id_prsn_child] ASC,
	[id_intake_fact] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
