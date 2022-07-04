USE [Catalog-My-Things]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Item]') AND type in (N'U'))
ALTER TABLE [dbo].[Item] DROP CONSTRAINT IF EXISTS [FK_Item_MusicAlbum]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Item]') AND type in (N'U'))
ALTER TABLE [dbo].[Item] DROP CONSTRAINT IF EXISTS [FK_Item_Movie]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Item]') AND type in (N'U'))
ALTER TABLE [dbo].[Item] DROP CONSTRAINT IF EXISTS [FK_Item_Label]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Item]') AND type in (N'U'))
ALTER TABLE [dbo].[Item] DROP CONSTRAINT IF EXISTS [FK_Item_Genre]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Item]') AND type in (N'U'))
ALTER TABLE [dbo].[Item] DROP CONSTRAINT IF EXISTS [FK_Item_Game]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Item]') AND type in (N'U'))
ALTER TABLE [dbo].[Item] DROP CONSTRAINT IF EXISTS [FK_Item_Book]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Item]') AND type in (N'U'))
ALTER TABLE [dbo].[Item] DROP CONSTRAINT IF EXISTS [add_label]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Item]') AND type in (N'U'))
ALTER TABLE [dbo].[Item] DROP CONSTRAINT IF EXISTS [add_author]
GO
/****** Object:  Table [dbo].[Source]    Script Date: 7/4/2022 4:16:41 PM ******/
DROP TABLE IF EXISTS [dbo].[Source]
GO
/****** Object:  Table [dbo].[MusicAlbum]    Script Date: 7/4/2022 4:16:41 PM ******/
DROP TABLE IF EXISTS [dbo].[MusicAlbum]
GO
/****** Object:  Table [dbo].[Movie]    Script Date: 7/4/2022 4:16:41 PM ******/
DROP TABLE IF EXISTS [dbo].[Movie]
GO
/****** Object:  Table [dbo].[Label]    Script Date: 7/4/2022 4:16:41 PM ******/
DROP TABLE IF EXISTS [dbo].[Label]
GO
/****** Object:  Table [dbo].[Item]    Script Date: 7/4/2022 4:16:41 PM ******/
DROP TABLE IF EXISTS [dbo].[Item]
GO
/****** Object:  Table [dbo].[Genre]    Script Date: 7/4/2022 4:16:41 PM ******/
DROP TABLE IF EXISTS [dbo].[Genre]
GO
/****** Object:  Table [dbo].[Game]    Script Date: 7/4/2022 4:16:41 PM ******/
DROP TABLE IF EXISTS [dbo].[Game]
GO
/****** Object:  Table [dbo].[Book]    Script Date: 7/4/2022 4:16:41 PM ******/
DROP TABLE IF EXISTS [dbo].[Book]
GO
/****** Object:  Table [dbo].[Author]    Script Date: 7/4/2022 4:16:41 PM ******/
DROP TABLE IF EXISTS [dbo].[Author]
GO
/****** Object:  Table [dbo].[Author]    Script Date: 7/4/2022 4:16:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Author](
	[id] [int] NOT NULL,
	[first_name] [varchar](50) NULL,
	[last_name] [varchar](50) NULL,
 CONSTRAINT [PK_Author] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Book]    Script Date: 7/4/2022 4:16:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Book](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[cover_state] [varchar](100) NULL,
	[publisher] [varchar](50) NULL,
 CONSTRAINT [PK_Book] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Game]    Script Date: 7/4/2022 4:16:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Game](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[multiplayer] [varchar](50) NULL,
	[last_played_at] [date] NULL,
 CONSTRAINT [PK_Game] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Genre]    Script Date: 7/4/2022 4:16:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genre](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](100) NULL,
 CONSTRAINT [PK_Genre] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Item]    Script Date: 7/4/2022 4:16:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Item](
	[id] [int] NULL,
	[genre_id] [int] NULL,
	[author_id] [int] NULL,
	[source_id] [int] NULL,
	[label_id] [int] NULL,
	[publish_date] [date] NULL,
	[archived] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Label]    Script Date: 7/4/2022 4:16:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Label](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](200) NULL,
	[color] [varchar](50) NULL,
 CONSTRAINT [PK_Label] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Movie]    Script Date: 7/4/2022 4:16:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movie](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[silet] [bit] NULL,
 CONSTRAINT [PK_Movie] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MusicAlbum]    Script Date: 7/4/2022 4:16:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MusicAlbum](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[on_spotify] [bit] NULL,
 CONSTRAINT [PK_MusicAlbum] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Source]    Script Date: 7/4/2022 4:16:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Source](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](100) NULL,
 CONSTRAINT [PK_Source] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Item]  WITH CHECK ADD  CONSTRAINT [add_author] FOREIGN KEY([author_id])
REFERENCES [dbo].[Author] ([id])
GO
ALTER TABLE [dbo].[Item] CHECK CONSTRAINT [add_author]
GO
ALTER TABLE [dbo].[Item]  WITH CHECK ADD  CONSTRAINT [add_label] FOREIGN KEY([source_id])
REFERENCES [dbo].[Source] ([id])
GO
ALTER TABLE [dbo].[Item] CHECK CONSTRAINT [add_label]
GO
ALTER TABLE [dbo].[Item]  WITH CHECK ADD  CONSTRAINT [FK_Item_Book] FOREIGN KEY([id])
REFERENCES [dbo].[Book] ([id])
GO
ALTER TABLE [dbo].[Item] CHECK CONSTRAINT [FK_Item_Book]
GO
ALTER TABLE [dbo].[Item]  WITH CHECK ADD  CONSTRAINT [FK_Item_Game] FOREIGN KEY([id])
REFERENCES [dbo].[Game] ([id])
GO
ALTER TABLE [dbo].[Item] CHECK CONSTRAINT [FK_Item_Game]
GO
ALTER TABLE [dbo].[Item]  WITH CHECK ADD  CONSTRAINT [FK_Item_Genre] FOREIGN KEY([genre_id])
REFERENCES [dbo].[Genre] ([id])
GO
ALTER TABLE [dbo].[Item] CHECK CONSTRAINT [FK_Item_Genre]
GO
ALTER TABLE [dbo].[Item]  WITH CHECK ADD  CONSTRAINT [FK_Item_Label] FOREIGN KEY([label_id])
REFERENCES [dbo].[Label] ([id])
GO
ALTER TABLE [dbo].[Item] CHECK CONSTRAINT [FK_Item_Label]
GO
ALTER TABLE [dbo].[Item]  WITH CHECK ADD  CONSTRAINT [FK_Item_Movie] FOREIGN KEY([id])
REFERENCES [dbo].[Movie] ([id])
GO
ALTER TABLE [dbo].[Item] CHECK CONSTRAINT [FK_Item_Movie]
GO
ALTER TABLE [dbo].[Item]  WITH CHECK ADD  CONSTRAINT [FK_Item_MusicAlbum] FOREIGN KEY([id])
REFERENCES [dbo].[MusicAlbum] ([id])
GO
ALTER TABLE [dbo].[Item] CHECK CONSTRAINT [FK_Item_MusicAlbum]
GO
