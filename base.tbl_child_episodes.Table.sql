USE [CA_ODS]
GO
/****** Object:  Table [base].[tbl_child_episodes]    Script Date: 12/4/2013 9:14:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [base].[tbl_child_episodes](
	[id_prsn_child] [int] NOT NULL,
	[id_case] [int] NOT NULL,
	[first_removal_date] [datetime] NOT NULL,
	[latest_removal_date] [datetime] NOT NULL,
	[removal_region] [int] NULL,
	[removal_county_cd] [int] NULL,
	[removal_county] [varchar](255) NULL,
	[state_custody_start_date] [datetime] NOT NULL,
	[removal_episode_begin_int] [int] NOT NULL,
	[removal_episode_end_int] [int] NULL,
	[state_discharge_date] [datetime] NULL,
	[state_discharge_reason] [varchar](200) NULL,
	[state_discharge_reason_code] [int] NULL,
	[federal_discharge_date] [datetime] NULL,
	[federal_discharge_date_force_18] [datetime] NULL,
	[federal_discharge_reason_code] [int] NULL,
	[federal_discharge_reason] [varchar](255) NULL,
	[initial_plcm_setting_for_removal_cd] [int] NULL,
	[initial_plcm_setting_for_removal] [varchar](200) NULL,
	[init_id_plcmnt_evnt] [int] NULL,
	[init_cd_plcmnt_evnt] [char](3) NULL,
	[last_plcm_setting_for_removal_cd] [int] NULL,
	[last_plcm_setting_for_removal] [varchar](200) NULL,
	[last_id_plcmnt_evnt] [int] NULL,
	[last_cd_plcmnt_evnt] [char](3) NULL,
	[removal_county_initial_placement_caregiver_cd] [int] NULL,
	[removal_county_initial_placement_caregiver] [varchar](200) NULL,
	[removal_initial_placement_worker_office_cd] [int] NULL,
	[removal_initial_placement_worker_office] [varchar](200) NULL,
	[removal_initial_placement_worker_office_county_cd] [varchar](4) NULL,
	[removal_initial_placement_worker_office_county] [varchar](255) NULL,
	[removal_id_placement_result_dim_latest_end_reason] [varchar](200) NULL,
	[removal_id_placement_result_dim_latest_end_reason_cd] [int] NULL,
	[removal_plcm_discharge_reason] [varchar](200) NULL,
	[removal_plcm_discharge_reason_cd] [int] NULL,
	[disability_diagnosis] [tinyint] NULL,
	[disability_physical] [char](1) NULL,
	[disability_sensory] [char](1) NULL,
	[disability_mr] [char](1) NULL,
	[disability_emotional] [char](1) NULL,
	[disability_other] [char](1) NULL,
	[removal_abuse] [tinyint] NULL,
	[removal_abandon] [tinyint] NULL,
	[removal_relinquishment] [tinyint] NULL,
	[removal_child_alcohol_abuse] [tinyint] NULL,
	[removal_child_behavior] [tinyint] NULL,
	[removal_child_drug_abuse] [tinyint] NULL,
	[removal_child_disability] [int] NOT NULL,
	[removal_inadequate_housing] [tinyint] NULL,
	[removal_neglect] [tinyint] NULL,
	[removal_parent_alcohol_abuse] [tinyint] NULL,
	[removal_parent_drug_abuse] [tinyint] NULL,
	[removal_parent_incapacity] [tinyint] NULL,
	[removal_physical_abuse] [tinyint] NULL,
	[removal_sexual_abuse] [tinyint] NULL,
	[removal_parent_death] [tinyint] NULL,
	[removal_incarceration] [int] NULL,
	[age_eps_begin_mos] [int] NULL,
	[child_age_removal_begin] [int] NULL,
	[child_age_removal_end] [int] NULL,
	[id_removal_episode_fact] [int] NOT NULL,
	[cd_gndr] [char](1) NULL,
	[tx_gndr] [varchar](200) NULL,
	[dt_birth] [datetime] NULL,
	[cd_braam_race] [int] NULL,
	[tx_braam_race] [varchar](200) NULL,
	[invs_county_cd] [int] NOT NULL,
	[invs_county] [varchar](200) NOT NULL,
	[removal_id_location_dim_worker_county_cd] [int] NULL,
	[removal_id_location_dim_worker_county] [varchar](200) NULL,
	[id_people_dim_child] [int] NOT NULL,
	[cd_race_census] [int] NULL,
	[census_hispanic_latino_origin_cd] [int] NULL,
	[petition_dependency_date] [datetime] NULL,
	[dur_days] [int] NULL,
	[fl_dur_7] [smallint] NULL,
	[fl_dur_90] [smallint] NULL,
	[dur_trh_days] [int] NULL,
	[cnt_trh] [int] NOT NULL,
	[eps_total] [int] NULL,
	[eps_rank] [int] NULL,
	[eps_total_gt7] [int] NULL,
	[eps_rank_gt7] [int] NULL,
	[fl_close] [smallint] NULL,
	[frst_plc_id_provider] [int] NULL,
	[lst_plc_id_provider] [int] NULL,
	[longest_cd_plcmnt_evnt] [varchar](3) NULL,
	[longest_id_plcmnt_evnt] [int] NULL,
	[dur_days_longest_plcm] [int] NULL,
	[cnt_ooh_plcm] [int] NULL,
	[cnt_plcm] [int] NULL,
	[nxt_eps_date] [datetime] NULL,
	[nxt_eps_date_gt7] [datetime] NULL,
	[id_intake_fact] [int] NULL,
	[primary_parent_id_prsn] [int] NULL,
	[fam_structure_cd] [int] NULL,
	[fam_structure_tx] [varchar](200) NULL,
	[bin_dep_cd] [int] NOT NULL,
	[fl_dep_exist] [smallint] NOT NULL,
	[max_bin_los_cd] [int] NULL,
	[bin_ihs_svc_cd] [int] NULL,
 CONSTRAINT [PK_TBL_CHILD_EPISODES] PRIMARY KEY CLUSTERED 
(
	[id_prsn_child] ASC,
	[state_custody_start_date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_race_incl_params]    Script Date: 12/4/2013 9:14:52 AM ******/
CREATE NONCLUSTERED INDEX [idx_race_incl_params] ON [base].[tbl_child_episodes]
(
	[cd_race_census] ASC
)
INCLUDE ( 	[removal_county_cd],
	[init_id_plcmnt_evnt],
	[age_eps_begin_mos],
	[cd_gndr],
	[census_hispanic_latino_origin_cd],
	[longest_id_plcmnt_evnt]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [base].[tbl_child_episodes] ADD  CONSTRAINT [DF_TBL_CHILD_EPISODES_cnt_trh]  DEFAULT ((0)) FOR [cnt_trh]
GO
ALTER TABLE [base].[tbl_child_episodes] ADD  CONSTRAINT [DF__tbl_child__bin_d__38A52304]  DEFAULT ((1)) FOR [bin_dep_cd]
GO
ALTER TABLE [base].[tbl_child_episodes] ADD  CONSTRAINT [DF__tbl_child__fl_de__3999473D]  DEFAULT ((0)) FOR [fl_dep_exist]
GO
