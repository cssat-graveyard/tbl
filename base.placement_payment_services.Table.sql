USE [CA_ODS]
GO
/****** Object:  Table [base].[placement_payment_services]    Script Date: 12/4/2013 9:14:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [base].[placement_payment_services](
	[id_prsn_child] [int] NULL,
	[entry_date_int] [int] NULL,
	[exit_date_int] [int] NULL,
	[entry_date] [datetime] NOT NULL,
	[exit_date] [datetime] NULL,
	[removal_county_cd] [int] NULL,
	[removal_county] [varchar](255) NULL,
	[placement_provider_caregiver_county_code] [int] NOT NULL,
	[placement_provider_caregiver_county] [varchar](200) NULL,
	[placement_provider_caregiver_id] [int] NULL,
	[placement_setting_type_code] [int] NOT NULL,
	[placement_setting_type] [varchar](200) NULL,
	[cd_epsd_type] [int] NULL,
	[tx_epsd_type] [varchar](200) NULL,
	[placement_end_reason_code] [int] NULL,
	[placement_end_reason] [varchar](200) NULL,
	[placement_discharge_reason_code] [int] NULL,
	[placement_discharge_reason] [varchar](200) NULL,
	[placement_care_auth_cd] [int] NULL,
	[placement_care_auth] [varchar](200) NULL,
	[placement_care_auth_tribe_cd] [int] NULL,
	[placement_care_auth_tribe] [varchar](200) NULL,
	[trial_return_home_cd] [int] NOT NULL,
	[trial_return_home] [varchar](1) NOT NULL,
	[trh_begin_date] [datetime] NULL,
	[trh_end_date] [datetime] NULL,
	[cd_srvc] [int] NULL,
	[tx_srvc] [varchar](40) NULL,
	[id_plcmnt_evnt] [int] NOT NULL,
	[cd_plcmnt_evnt] [varchar](3) NULL,
	[id_removal_episode_fact] [int] NOT NULL,
	[id_placement_fact] [int] NOT NULL,
	[dur_days] [int] NULL,
	[fl_dur_7] [smallint] NULL,
	[fl_dur_90] [smallint] NULL,
	[plcm_rank] [int] NULL,
	[plcm_total] [int] NULL,
	[plcm_ooh_rank] [int] NULL,
	[plcm_ooh_total] [int] NULL,
	[fl_close] [smallint] NULL,
	[fl_lst_ooh_plcm] [int] NOT NULL,
	[fl_lst_plcm] [int] NOT NULL,
	[eps_plcm_sort_asc] [int] NOT NULL,
	[id_case] [int] NULL,
	[child_age_plcm_begin] [int] NULL,
	[child_age_plcm_end] [int] NULL,
	[id_payment_fact] [int] NULL,
	[svc_begin_date] [date] NULL,
	[svc_end_date] [date] NULL,
	[pymt_cd_srvc] [int] NULL,
	[pymt_tx_srvc] [varchar](200) NULL,
	[fl_primary_srvc] [int] NULL,
	[srvc_match] [int] NULL,
	[prov_match] [int] NULL,
	[rate] [decimal](18, 6) NULL,
	[unit] [decimal](18, 6) NULL,
	[total_paid] [decimal](18, 2) NULL,
	[cd_budget_poc_frc] [int] NULL,
	[tx_budget_poc_frc] [varchar](200) NULL,
	[cd_subctgry_poc_frc] [int] NULL,
	[tx_subctgry_poc_frc] [varchar](200) NULL,
	[fl_plc_svc] [int] NULL,
	[fl_dup_payment] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
