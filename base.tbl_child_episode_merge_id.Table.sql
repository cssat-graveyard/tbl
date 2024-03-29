USE [CA_ODS]
GO
/****** Object:  Table [base].[tbl_child_episode_merge_id]    Script Date: 12/4/2013 9:14:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [base].[tbl_child_episode_merge_id](
	[merge_episode_id] [int] NOT NULL,
	[id_removal_episode_fact] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[merge_episode_id] ASC,
	[id_removal_episode_fact] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
