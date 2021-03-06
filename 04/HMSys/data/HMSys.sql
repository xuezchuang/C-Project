
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Users](
	[users] [varchar](50) NOT NULL,
	[pwd] [varchar](50) NOT NULL,
	[type] [int] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[users] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Emp]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Emp](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](20) NOT NULL,
	[age] [int] NOT NULL,
	[sex] [varchar](2) NOT NULL,
	[addr] [varchar](200) NULL,
	[depart] [varchar](20) NOT NULL,
	[birth] [varchar](30) NULL,
	[phone] [varchar](20) NULL,
	[more] [varchar](200) NULL,
	[photo] [image] NULL,
 CONSTRAINT [PK_Emp] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Dep]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Dep](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](20) NOT NULL,
	[manager] [varchar](30) NULL,
	[phone] [varchar](20) NULL,
	[more] [varchar](200) NULL,
 CONSTRAINT [PK_Dep] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[holiday]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[holiday](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](20) NOT NULL,
	[date] [varchar](50) NOT NULL,
 CONSTRAINT [PK_holiday] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[wagecal]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[wagecal](
	[chuchai] [int] NOT NULL,
	[bingjia] [int] NOT NULL,
	[shijia] [int] NOT NULL,
	[pingshi] [int] NOT NULL,
	[shuangxiu] [int] NOT NULL,
	[fading] [int] NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[checkinfo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[checkinfo](
	[date] [varchar](50) NOT NULL,
	[id] [varchar](50) NOT NULL,
	[queqin] [varchar](2) NOT NULL,
	[zaotui] [varchar](2) NOT NULL,
	[chidao] [varchar](2) NOT NULL,
	[xiuxi] [varchar](2) NOT NULL,
	[bingjia] [varchar](2) NOT NULL,
	[chuchai] [varchar](2) NOT NULL,
	[shijia] [varchar](2) NOT NULL,
	[more] [varchar](200) NULL,
	[ym] [varchar](50) NOT NULL,
	[ot1] [int] NULL,
	[ot2] [int] NULL,
	[ot3] [int] NULL,
 CONSTRAINT [PK_checkinfo] PRIMARY KEY CLUSTERED 
(
	[date] ASC,
	[id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[temp]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[temp](
	[id] [int] NULL,
	[wage] [int] NULL,
	[ym] [varchar](20) NULL,
	[chuchai] [int] NULL,
	[bingjia] [int] NULL,
	[shijia] [int] NULL,
	[pingshi] [int] NULL,
	[shuangxiu] [int] NULL,
	[fading] [int] NULL,
	[waged] [int] NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[wageinfo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[wageinfo](
	[id] [int] NOT NULL,
	[wage] [float] NOT NULL,
	[dep] [varchar](50) NOT NULL,
	[date] [varchar](50) NOT NULL,
 CONSTRAINT [PK_wageinfo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_wageinfo_Emp]') AND parent_object_id = OBJECT_ID(N'[dbo].[wageinfo]'))
ALTER TABLE [dbo].[wageinfo]  WITH CHECK ADD  CONSTRAINT [FK_wageinfo_Emp] FOREIGN KEY([id])
REFERENCES [dbo].[Emp] ([id])
