USE [CA_ODS]
GO
/****** Object:  Table [base].[episode_payment_services]    Script Date: 12/4/2013 9:14:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [base].[episode_payment_services](
	[id_prsn_child] [int] NOT NULL,
	[id_removal_episode_fact] [int] NOT NULL,
	[id_case] [int] NOT NULL,
	[min_id_payment_fact] [int] NULL,
	[max_id_payment_fact] [int] NULL,
	[min_svc_begin_date] [date] NULL,
	[max_svc_end_date] [date] NULL,
	[nbr_services] [int] NULL,
	[fl_family_focused_services] [int] NULL,
	[fl_child_care] [int] NULL,
	[fl_therapeutic_services] [int] NULL,
	[fl_mh_services] [int] NULL,
	[fl_receiving_care] [int] NULL,
	[fl_family_home_placements] [int] NULL,
	[fl_behavioral_rehabiliation_services] [int] NULL,
	[fl_other_therapeutic_living_situations] [int] NULL,
	[fl_specialty_adolescent_services] [int] NULL,
	[fl_respite] [int] NULL,
	[fl_transportation] [int] NULL,
	[fl_clothing_incidentals] [int] NULL,
	[fl_sexually_aggressive_youth] [int] NULL,
	[fl_adoption_support] [int] NULL,
	[fl_various] [int] NULL,
	[fl_medical] [int] NULL,
	[fl_budget_C12] [int] NULL,
	[fl_budget_C14] [int] NULL,
	[fl_budget_C15] [int] NULL,
	[fl_budget_C16] [int] NULL,
	[fl_budget_C18] [int] NULL,
	[fl_budget_C19] [int] NULL,
	[fl_uncat_svc] [int] NULL,
	[cnt_family_focused_services] [int] NULL,
	[cnt_child_care] [int] NULL,
	[cnt_therapeutic_services] [int] NULL,
	[cnt_mh_services] [int] NULL,
	[cnt_receiving_care] [int] NULL,
	[cnt_family_home_placements] [int] NULL,
	[cnt_behavioral_rehabiliation_services] [int] NULL,
	[cnt_other_therapeutic_living_situations] [int] NULL,
	[cnt_specialty_adolescent_services] [int] NULL,
	[cnt_respite] [int] NULL,
	[cnt_transportation] [int] NULL,
	[cnt_clothing_incidentals] [int] NULL,
	[cnt_sexually_aggressive_youth] [int] NULL,
	[cnt_adoption_support] [int] NULL,
	[cnt_various] [int] NULL,
	[cnt_medical] [int] NULL,
	[cnt_budget_C12] [int] NULL,
	[cnt_budget_C14] [int] NULL,
	[cnt_budget_C15] [int] NULL,
	[cnt_budget_C16] [int] NULL,
	[cnt_budget_C18] [int] NULL,
	[cnt_budget_C19] [int] NULL,
	[cnt_uncat_svc] [int] NULL,
	[amt_pd_family_focused_services] [decimal](38, 2) NULL,
	[amt_pd_child_care] [decimal](38, 2) NULL,
	[amt_pd_therapeutic_services] [decimal](38, 2) NULL,
	[amt_pd_mh_services] [decimal](38, 2) NULL,
	[amt_pd_receiving_care] [decimal](38, 2) NULL,
	[amt_pd_family_home_placements] [decimal](38, 2) NULL,
	[amt_pd_behavioral_rehabiliation_services] [decimal](38, 2) NULL,
	[amt_pd_other_therapeutic_living_situations] [decimal](38, 2) NULL,
	[amt_pd_specialty_adolescent_services] [decimal](38, 2) NULL,
	[amt_pd_respite] [decimal](38, 2) NULL,
	[amt_pd_transportation] [decimal](38, 2) NULL,
	[amt_pd_clothing_incidentals] [decimal](38, 2) NULL,
	[amt_pd_sexually_aggressive_youth] [decimal](38, 2) NULL,
	[amt_pd_adoption_support] [decimal](38, 2) NULL,
	[amt_pd_various] [decimal](38, 2) NULL,
	[amt_pd_medical] [decimal](38, 2) NULL,
	[amt_pd_budget_C12] [decimal](38, 2) NULL,
	[amt_pd_budget_C14] [decimal](38, 2) NULL,
	[amt_pd_budget_C15] [decimal](38, 2) NULL,
	[amt_pd_budget_C16] [decimal](38, 2) NULL,
	[amt_pd_budget_C18] [decimal](38, 2) NULL,
	[amt_pd_budget_C19] [decimal](38, 2) NULL,
	[amt_pd_uncat_svc] [decimal](38, 2) NULL,
	[total_paid] [decimal](38, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_removal_episode_fact] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
