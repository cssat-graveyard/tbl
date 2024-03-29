USE [CA_ODS]
GO
/****** Object:  Table [base].[tbl_child_placement_settings]    Script Date: 12/4/2013 9:14:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [base].[tbl_child_placement_settings](
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
	[fl_frst_plcm_in_eps] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_removal_episode_fact] ASC,
	[entry_date] ASC,
	[eps_plcm_sort_asc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [base].[tbl_child_placement_settings] ADD  DEFAULT ((0)) FOR [fl_frst_plcm_in_eps]
GO
