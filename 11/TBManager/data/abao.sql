
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ti_choose]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ti_choose](
	[tno] [int] NOT NULL,
	[tigan] [varchar](500) NULL,
	[xa] [varchar](100) NULL,
	[xb] [varchar](100) NULL,
	[xc] [varchar](100) NULL,
	[xd] [varchar](100) NULL,
	[answer] [varchar](10) NULL,
	[score] [tinyint] NULL,
	[difficulty] [varchar](10) NULL,
	[note] [varchar](200) NULL,
	[number] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_ti_choose] PRIMARY KEY CLUSTERED 
(
	[tno] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ti_judge]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ti_judge](
	[tno] [int] NOT NULL,
	[tigan] [varchar](255) NULL,
	[answer] [varchar](10) NULL,
	[score] [tinyint] NULL,
	[difficulty] [varchar](10) NULL,
	[note] [varchar](200) NULL,
	[number] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_ti_judge] PRIMARY KEY CLUSTERED 
(
	[tno] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ti_filltext]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ti_filltext](
	[tno] [int] NOT NULL,
	[tigan] [varchar](800) NULL,
	[ka] [varchar](100) NULL,
	[kb] [varchar](100) NULL,
	[kc] [varchar](100) NULL,
	[kd] [varchar](100) NULL,
	[score] [tinyint] NULL,
	[difficulty] [varchar](10) NULL,
	[note] [varchar](200) NULL,
	[number] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_ti_filltext] PRIMARY KEY CLUSTERED 
(
	[tno] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ti_procedure]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ti_procedure](
	[tno] [int] NOT NULL,
	[tigan] [varchar](1000) NULL,
	[answer] [varchar](8000) NULL,
	[score] [tinyint] NULL,
	[difficulty] [varchar](10) NULL,
	[note] [varchar](200) NULL,
	[number] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_ti_procedure] PRIMARY KEY CLUSTERED 
(
	[tno] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[password]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[password](
	[name] [varchar](50) NOT NULL,
	[password] [varchar](50) NULL,
	[userright] [int] NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[name] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[shijuan]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[shijuan](
	[timu] [varchar](5000) NULL,
	[tixing] [int] NULL,
	[number] [int] IDENTITY(1,1) NOT NULL,
	[answer] [varchar](5000) NULL
) ON [PRIMARY]
END
