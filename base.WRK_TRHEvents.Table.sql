USE [CA_ODS]
GO
/****** Object:  Table [base].[WRK_TRHEvents]    Script Date: 12/4/2013 9:14:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [base].[WRK_TRHEvents](
	[ID_PRSN_CHILD] [int] NULL,
	[ID_REMOVAL_EPISODE_FACT] [int] NOT NULL,
	[TRH_begin] [datetime] NULL,
	[TRH_End] [datetime] NULL,
	[TRHtype] [int] NOT NULL,
	[TRHmark] [int] NOT NULL,
	[N_TRH] [int] NULL,
	[daysctrh_tot] [int] NULL,
	[FL_RET_TO_CARE] [varchar](1) NOT NULL,
	[FL_Last_Eps_OH_Plcmnt] [varchar](1) NOT NULL,
	[Tbl_Refresh_Dt] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
