
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[four]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[four](
	[si1] [nvarchar](100) NULL,
	[si2] [nvarchar](100) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[shengci]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[shengci](
	[eg] [nvarchar](50) NOT NULL,
	[yinbiao] [nvarchar](20) NULL,
	[jsh] [nvarchar](20) NULL,
	[riqi] [nvarchar](50) NULL,
	[mosh] [int] NULL,
 CONSTRAINT [PK_shengci] PRIMARY KEY CLUSTERED 
(
	[eg] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TK]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TK](
	[id] [int] NOT NULL,
	[xuanx1] [nvarchar](10) NULL,
	[xuanx2] [nvarchar](10) NULL,
	[xuanx3] [nvarchar](10) NULL,
	[xuanx4] [nvarchar](10) NULL,
	[eg] [nvarchar](50) NULL,
	[da] [nvarchar](10) NULL,
 CONSTRAINT [PK_TK] PRIMARY KEY CLUSTERED 
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[guess]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[guess](
	[eg] [nvarchar](50) NOT NULL,
	[jieshi] [nvarchar](50) NULL,
	[IDR] [nvarchar](50) NULL,
 CONSTRAINT [PK_guess_1] PRIMARY KEY CLUSTERED 
(
	[eg] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[eh]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[eh](
	[eg] [nvarchar](50) NOT NULL,
	[zw] [nvarchar](50) NULL,
	[vi] [nvarchar](50) NULL,
	[vt] [nvarchar](100) NULL,
	[n] [nvarchar](100) NULL,
	[adj] [nvarchar](100) NULL,
	[adv] [nvarchar](100) NULL,
	[riqi] [nvarchar](50) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_eh] PRIMARY KEY CLUSTERED 
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ziliao]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ziliao](
	[piezi] [nvarchar](50) NOT NULL,
	[guoqing] [nvarchar](50) NULL,
	[baozi] [nvarchar](50) NULL,
	[dian] [nvarchar](50) NULL,
	[hua] [nvarchar](50) NULL,
	[w1] [nvarchar](50) NULL,
	[w2] [nvarchar](50) NULL,
	[w3] [nvarchar](50) NULL,
	[w4] [nvarchar](50) NULL,
	[j1] [nvarchar](50) NULL,
	[j2] [nvarchar](50) NULL,
	[j3] [nvarchar](50) NULL,
	[j4] [nvarchar](50) NULL,
	[j5] [nvarchar](50) NULL,
	[j6] [nvarchar](50) NULL,
	[j7] [nvarchar](50) NULL,
	[j8] [nvarchar](50) NULL,
	[j9] [nvarchar](50) NULL
) ON [PRIMARY]
END
