USE [CA_ODS]
GO
/****** Object:  Table [base].[tbl_ihs_services]    Script Date: 12/4/2013 9:14:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [base].[tbl_ihs_services](
	[id_ihs_episode] [int] NOT NULL,
	[dtl_id_payment_fact] [int] NOT NULL,
	[id_case] [int] NULL,
	[id_prsn] [int] NULL,
	[prsn_age] [int] NULL,
	[srvc_dt_begin] [datetime] NOT NULL,
	[srvc_dt_end] [datetime] NULL,
	[cd_srvc] [int] NULL,
	[tx_srvc] [varchar](40) NULL,
	[am_rate] [float] NULL,
	[am_units] [float] NULL,
	[am_total_paid] [numeric](18, 2) NULL,
	[id_service_type_dim] [int] NULL,
	[id_provider_dim_service] [int] NULL,
	[cd_unit_rate_type] [int] NULL,
	[tx_unit_rate_type] [varchar](200) NULL,
	[cd_srvc_ctgry] [int] NULL,
	[tx_srvc_ctgry] [varchar](200) NULL,
	[cd_budget_poc_frc] [int] NULL,
	[tx_budget_poc_frc] [varchar](100) NULL,
	[cd_subctgry_poc_frc] [int] NULL,
	[tx_subctgry_poc_frc] [varchar](100) NULL,
	[dur_days] [int] NULL,
	[ihs_rank] [int] NOT NULL,
	[fl_no_pay] [int] NULL,
 CONSTRAINT [PK__tbl_ihs___FC12E0DD9F0E6032] PRIMARY KEY CLUSTERED 
(
	[id_ihs_episode] ASC,
	[dtl_id_payment_fact] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
