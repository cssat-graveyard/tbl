USE [CA_ODS]
GO
/****** Object:  Table [base].[tbl_intakes]    Script Date: 12/4/2013 9:14:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [base].[tbl_intakes](
	[id_intake_fact] [int] NOT NULL,
	[id_case] [int] NOT NULL,
	[id_investigation_assessment_fact] [int] NULL,
	[id_safety_assessment_fact] [int] NULL,
	[rfrd_date] [datetime] NULL,
	[inv_ass_start] [datetime] NULL,
	[inv_ass_stop] [datetime] NULL,
	[screen_in_spvr_dcsn_dt] [date] NULL,
	[invs_level2_approved] [datetime] NULL,
	[cd_access_type] [int] NULL,
	[tx_access_type] [varchar](200) NULL,
	[cd_invs_type] [int] NULL,
	[tx_invs_type] [char](200) NULL,
	[cd_invs_disp] [int] NULL,
	[tx_invs_disp] [char](200) NULL,
	[close_id_assgn_fact] [int] NULL,
	[close_assgn_begin_dt] [datetime] NULL,
	[close_assgn_end_dt] [datetime] NULL,
	[close_assgn_cd_rmts_wrkr_type] [int] NULL,
	[close_assgn_tx_rmts_wrkr_type] [varchar](200) NULL,
	[cd_spvr_rsn] [int] NULL,
	[tx_spvr_rsn] [varchar](200) NULL,
	[cd_final_decision] [int] NULL,
	[tx_final_decision] [varchar](200) NULL,
	[cd_asgn_type] [int] NULL,
	[tx_asgn_type] [varchar](200) NULL,
	[cd_asgn_rspns] [int] NULL,
	[tx_asgn_rspns] [varchar](200) NULL,
	[cd_reporter] [int] NULL,
	[tx_reporter] [varchar](200) NULL,
	[id_people_dim_hh] [int] NULL,
	[id_prsn_hh] [int] NULL,
	[pk_gndr] [int] NULL,
	[dt_birth] [datetime] NULL,
	[is_current] [int] NULL,
	[cd_race_census] [int] NULL,
	[census_hispanic_latino_origin_cd] [int] NULL,
	[cd_sib_age_grp] [int] NULL,
	[cd_office] [int] NULL,
	[tx_office] [varchar](200) NULL,
	[cd_region] [int] NULL,
	[fl_ihs_90_day] [int] NULL,
	[fl_phys_abuse] [int] NULL,
	[fl_sexual_abuse] [int] NULL,
	[fl_neglect] [int] NULL,
	[fl_other_maltreatment] [int] NULL,
	[fl_allegation_any] [int] NULL,
	[fl_founded_phys_abuse] [int] NULL,
	[fl_founded_sexual_abuse] [int] NULL,
	[fl_founded_neglect] [int] NULL,
	[fl_founded_other_maltreatment] [int] NULL,
	[fl_founded_any_legal] [int] NULL,
	[fl_prior_phys_abuse] [int] NULL,
	[fl_prior_sexual_abuse] [int] NULL,
	[fl_prior_neglect] [int] NULL,
	[fl_prior_other_maltreatment] [int] NULL,
	[fl_prior_allegation_any] [int] NULL,
	[fl_founded_prior_phys_abuse] [int] NULL,
	[fl_founded_prior_sexual_abuse] [int] NULL,
	[fl_founded_prior_neglect] [int] NULL,
	[fl_founded_prior_other_maltreatment] [int] NULL,
	[fl_founded_prior_any_legal] [int] NULL,
	[fl_hh_is_mother] [int] NULL,
	[fl_cps_invs] [int] NOT NULL,
	[fl_cfws] [int] NOT NULL,
	[fl_risk_only] [int] NOT NULL,
	[fl_alternate_intervention] [int] NOT NULL,
	[fl_frs] [int] NOT NULL,
	[fl_reopen_case] [int] NOT NULL,
	[fl_dlr] [int] NOT NULL,
	[cnt_children_at_intake] [int] NULL,
	[first_intake_date] [datetime] NULL,
	[latest_intake_date] [datetime] NULL,
	[nbr_intakes] [int] NULL,
	[nbr_cps_intakes] [int] NULL,
	[intake_rank] [int] NOT NULL,
	[fl_ooh_prior_this_referral] [int] NULL,
	[fl_ooh_after_this_referral] [int] NULL,
	[case_nxt_intake_dt] [datetime] NULL,
 CONSTRAINT [PK__tbl_inta__F7B6C41CD027507E] PRIMARY KEY CLUSTERED 
(
	[id_case] ASC,
	[intake_rank] ASC,
	[id_intake_fact] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Index [idx_cd_final_decision]    Script Date: 12/4/2013 9:14:52 AM ******/
CREATE NONCLUSTERED INDEX [idx_cd_final_decision] ON [base].[tbl_intakes]
(
	[cd_final_decision] ASC
)
INCLUDE ( 	[id_intake_fact],
	[inv_ass_start],
	[fl_phys_abuse],
	[fl_sexual_abuse],
	[fl_neglect],
	[fl_other_maltreatment],
	[fl_founded_phys_abuse],
	[fl_founded_sexual_abuse],
	[fl_founded_neglect],
	[fl_founded_other_maltreatment],
	[fl_prior_phys_abuse],
	[fl_prior_sexual_abuse],
	[fl_prior_neglect],
	[fl_prior_other_maltreatment],
	[fl_founded_prior_phys_abuse],
	[fl_founded_prior_sexual_abuse],
	[fl_founded_prior_neglect],
	[fl_founded_prior_other_maltreatment],
	[fl_hh_is_mother],
	[fl_cps_invs],
	[fl_cfws],
	[fl_risk_only],
	[fl_alternate_intervention],
	[fl_frs]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [idx_tbl_intakes_filters]    Script Date: 12/4/2013 9:14:52 AM ******/
CREATE NONCLUSTERED INDEX [idx_tbl_intakes_filters] ON [base].[tbl_intakes]
(
	[id_intake_fact] ASC
)
INCLUDE ( 	[cd_reporter],
	[fl_cps_invs],
	[fl_cfws],
	[fl_risk_only],
	[fl_alternate_intervention],
	[fl_frs]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
