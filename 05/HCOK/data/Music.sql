
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[admin]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[admin](
	[adminname] [varchar](50) NOT NULL,
	[adminpwd] [varchar](50) NOT NULL,
 CONSTRAINT [PK_admin] PRIMARY KEY CLUSTERED 
(
	[adminname] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[singer]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[singer](
	[sinnam] [varchar](50) NOT NULL,
	[sinsex] [char](10) NOT NULL,
	[sinarea] [varchar](50) NOT NULL,
	[sinpin] [varchar](50) NOT NULL,
 CONSTRAINT [PK_singer] PRIMARY KEY CLUSTERED 
(
	[sinnam] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[musiclist]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[musiclist](
	[singernam] [varchar](50) NULL,
	[muname] [varchar](50) NULL,
	[mnum] [char](10) NULL,
	[mtpye] [varchar](50) NULL,
	[fname] [varchar](50) NULL,
	[format] [varchar](50) NULL,
	[path] [varchar](200) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[room]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[room](
	[roomtype] [char](10) NULL,
	[price] [varchar](50) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[abate]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[abate](
	[cardtype] [char](10) NULL,
	[abate] [char](53) NULL
) ON [PRIMARY]
END
