USE [game]
GO
/****** Object:  Table [dbo].[cities]    Script Date: 1/19/2018 8:47:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cities](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](30) NOT NULL,
	[state_id] [int] NOT NULL,
 CONSTRAINT [PK__cities__3213E83F98B69770] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[countries]    Script Date: 1/19/2018 8:47:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[countries](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](150) NOT NULL,
 CONSTRAINT [PK__countrie__3213E83F595C5DF6] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Gamelist]    Script Date: 1/19/2018 8:47:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gamelist](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Gametype_id] [int] NULL,
	[GameName] [nvarchar](max) NULL,
 CONSTRAINT [PK_Gamelist] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Gametype]    Script Date: 1/19/2018 8:47:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gametype](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Gametypename] [nvarchar](max) NULL,
 CONSTRAINT [PK_Gametype] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[states]    Script Date: 1/19/2018 8:47:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[states](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](30) NOT NULL,
	[country_id] [int] NOT NULL CONSTRAINT [DF__states__country___1FCDBCEB]  DEFAULT ('1'),
 CONSTRAINT [PK__states__3213E83FC61102E3] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserGame]    Script Date: 1/19/2018 8:47:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserGame](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Firstname] [nvarchar](max) NULL,
	[lastname] [nvarchar](max) NULL,
	[Country_Id] [int] NULL,
	[City_Id] [int] NULL,
	[State_Id] [int] NULL,
	[gametype_Id] [int] NULL,
	[Gamename] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_UserGame] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[cities] ON 

INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (1, N'Bombuflat', 1)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (2, N'Garacharma', 1)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (3, N'Port Blair', 1)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (4, N'Rangat', 1)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (5, N'Addanki', 2)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (6, N'Adivivaram', 2)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (7, N'Adoni', 2)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (8, N'Aganampudi', 2)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (9, N'Ajjaram', 2)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (10, N'Akividu', 2)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (11, N'Akkarampalle', 2)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (12, N'Akkayapalle', 2)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (13, N'Along', 3)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (14, N'Basar', 3)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (15, N'Bondila', 3)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (16, N'Changlang', 3)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (17, N'Abhayapuri', 4)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (18, N'Ambikapur', 4)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (19, N'Amguri', 4)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (20, N'Anand Nagar', 4)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (21, N'Badarpur', 4)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (22, N'Amarpur', 5)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (23, N'Ara', 5)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (24, N'Araria', 5)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (25, N'Areraj', 5)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (26, N'Asarganj', 5)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (27, N'Aurangabad', 5)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (28, N'Bagaha', 5)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (29, N'Bahadurganj', 5)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (30, N'Bairgania', 5)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (31, N'Chandigarh', 6)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (32, N'Ahiwara', 7)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (33, N'Akaltara', 7)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (34, N'Ambagarh Chauki', 7)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (35, N'Ambikapur', 7)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (36, N'Arang', 7)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (37, N'Bade Bacheli', 7)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (38, N'Bagbahara', 7)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (39, N'Baikunthpur', 7)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (40, N'Balod', 7)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (41, N'Amli', 8)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (42, N'Silvassa', 8)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (43, N'Daman', 9)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (44, N'Diu', 9)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (45, N'Delhi', 10)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (46, N'New Delhi', 10)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (47, N'Aldona', 11)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (48, N'Altinho', 11)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (49, N'Aquem', 11)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (50, N'Arpora', 11)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (51, N'Bambolim', 11)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (52, N'Bandora', 11)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (53, N'Bardez', 11)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (54, N'Benaulim', 11)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (55, N'Abrama', 12)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (56, N'Adalaj', 12)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (57, N'Adityana', 12)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (58, N'Advana', 12)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (59, N'Ahmedabad', 12)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (60, N'Ahwa', 12)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (61, N'Alang', 12)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (62, N'Ambaji', 12)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (63, N'Barkhan', 13)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (64, N'Bela', 13)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (65, N'Bhag', 13)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (66, N'Chaman', 13)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (67, N'Chitkan', 13)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (68, N'Dalbandin', 13)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (69, N'Dera Allah Yar', 13)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (70, N'Federal Capital Area', 14)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (71, N'Federally administered Tribal ', 15)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (72, N'North-West Frontier', 16)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (73, N'Northern Areas', 17)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (74, N'''Abdul Hakim', 18)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (75, N'Ahmadpur East', 18)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (76, N'Ahmadpur Lumma', 18)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (77, N'Ahmadpur Sial', 18)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (78, N'Ahmedabad', 18)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (79, N'Alipur', 18)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (80, N'Alipur Chatha', 18)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (81, N'Arifwala', 18)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (82, N'Adilpur', 19)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (83, N'Badah', 19)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (84, N'Badin', 19)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (85, N'Alabaster', 20)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (86, N'Albertville', 20)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (87, N'Alexander City', 20)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (88, N'Anniston', 20)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (89, N'Anchorage', 21)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (90, N'Barrow', 21)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (91, N'Bethel', 21)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (92, N'Fairbanks', 21)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (93, N'Avondale', 22)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (94, N'Bouse', 22)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (95, N'Carefree', 22)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (96, N'Chandler', 22)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (97, N'Arkadelphia', 23)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (98, N'Batesville', 23)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (99, N'Benton', 23)
GO
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (100, N'Camden', 23)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (101, N'Byram', 24)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (102, N'Adelanto', 25)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (103, N'Aguanga', 25)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (104, N'Bakersfield', 25)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (105, N'California City', 25)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (106, N'Cokato', 26)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (107, N'Avon', 26)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (108, N'Bellvue', 26)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (109, N'Broomfield', 26)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (110, N'Carbondale', 26)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (111, N'Ansonia', 27)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (112, N'Bethlehem', 27)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (113, N'Middletown', 28)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (114, N'Newark', 28)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (115, N'District of Columbia', 29)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (116, N'Apopka', 30)
INSERT [dbo].[cities] ([id], [name], [state_id]) VALUES (117, N'Bartow', 30)
SET IDENTITY_INSERT [dbo].[cities] OFF
SET IDENTITY_INSERT [dbo].[countries] ON 

INSERT [dbo].[countries] ([id], [name]) VALUES (1, N'India')
INSERT [dbo].[countries] ([id], [name]) VALUES (2, N'USA')
INSERT [dbo].[countries] ([id], [name]) VALUES (3, N'Pakistan')
SET IDENTITY_INSERT [dbo].[countries] OFF
SET IDENTITY_INSERT [dbo].[Gamelist] ON 

INSERT [dbo].[Gamelist] ([Id], [Gametype_id], [GameName]) VALUES (1, 1, N'MagicGame')
INSERT [dbo].[Gamelist] ([Id], [Gametype_id], [GameName]) VALUES (2, 1, N'Board and family games')
INSERT [dbo].[Gamelist] ([Id], [Gametype_id], [GameName]) VALUES (3, 1, N'Freeze')
INSERT [dbo].[Gamelist] ([Id], [Gametype_id], [GameName]) VALUES (4, 1, N'Puzzles')
INSERT [dbo].[Gamelist] ([Id], [Gametype_id], [GameName]) VALUES (5, 1, N'Card games')
INSERT [dbo].[Gamelist] ([Id], [Gametype_id], [GameName]) VALUES (6, 2, N'Kancha or Marbles')
INSERT [dbo].[Gamelist] ([Id], [Gametype_id], [GameName]) VALUES (7, 2, N'Chain')
INSERT [dbo].[Gamelist] ([Id], [Gametype_id], [GameName]) VALUES (8, 2, N'Gilli Danda')
INSERT [dbo].[Gamelist] ([Id], [Gametype_id], [GameName]) VALUES (9, 2, N'Kho Kho')
INSERT [dbo].[Gamelist] ([Id], [Gametype_id], [GameName]) VALUES (10, 2, N'Kabaddi')
SET IDENTITY_INSERT [dbo].[Gamelist] OFF
SET IDENTITY_INSERT [dbo].[Gametype] ON 

INSERT [dbo].[Gametype] ([Id], [Gametypename]) VALUES (1, N'Indoor')
INSERT [dbo].[Gametype] ([Id], [Gametypename]) VALUES (2, N'Outdoor')
SET IDENTITY_INSERT [dbo].[Gametype] OFF
SET IDENTITY_INSERT [dbo].[states] ON 

INSERT [dbo].[states] ([id], [name], [country_id]) VALUES (1, N'Andaman and Nicobar Islands', 1)
INSERT [dbo].[states] ([id], [name], [country_id]) VALUES (2, N'Andhra Pradesh', 1)
INSERT [dbo].[states] ([id], [name], [country_id]) VALUES (3, N'Arunachal Pradesh', 1)
INSERT [dbo].[states] ([id], [name], [country_id]) VALUES (4, N'Assam', 1)
INSERT [dbo].[states] ([id], [name], [country_id]) VALUES (5, N'Bihar', 1)
INSERT [dbo].[states] ([id], [name], [country_id]) VALUES (6, N'Chandigarh', 1)
INSERT [dbo].[states] ([id], [name], [country_id]) VALUES (7, N'Chhattisgarh', 1)
INSERT [dbo].[states] ([id], [name], [country_id]) VALUES (8, N'Dadra and Nagar Haveli', 1)
INSERT [dbo].[states] ([id], [name], [country_id]) VALUES (9, N'Daman and Diu', 1)
INSERT [dbo].[states] ([id], [name], [country_id]) VALUES (10, N'Delhi', 1)
INSERT [dbo].[states] ([id], [name], [country_id]) VALUES (11, N'Goa', 1)
INSERT [dbo].[states] ([id], [name], [country_id]) VALUES (12, N'Gujarat', 1)
INSERT [dbo].[states] ([id], [name], [country_id]) VALUES (13, N'Baluchistan', 3)
INSERT [dbo].[states] ([id], [name], [country_id]) VALUES (14, N'Federal Capital Area', 3)
INSERT [dbo].[states] ([id], [name], [country_id]) VALUES (15, N'Federally administered Tribal ', 3)
INSERT [dbo].[states] ([id], [name], [country_id]) VALUES (16, N'North-West Frontier', 3)
INSERT [dbo].[states] ([id], [name], [country_id]) VALUES (17, N'Northern Areas', 3)
INSERT [dbo].[states] ([id], [name], [country_id]) VALUES (18, N'Punjab', 3)
INSERT [dbo].[states] ([id], [name], [country_id]) VALUES (19, N'Sind', 3)
INSERT [dbo].[states] ([id], [name], [country_id]) VALUES (20, N'Alabama', 2)
INSERT [dbo].[states] ([id], [name], [country_id]) VALUES (21, N'Alaska', 2)
INSERT [dbo].[states] ([id], [name], [country_id]) VALUES (22, N'Arizona', 2)
INSERT [dbo].[states] ([id], [name], [country_id]) VALUES (23, N'Arkansas', 2)
INSERT [dbo].[states] ([id], [name], [country_id]) VALUES (24, N'Byram', 2)
INSERT [dbo].[states] ([id], [name], [country_id]) VALUES (25, N'California', 2)
INSERT [dbo].[states] ([id], [name], [country_id]) VALUES (26, N'Cokato', 2)
INSERT [dbo].[states] ([id], [name], [country_id]) VALUES (27, N'Colorado', 2)
INSERT [dbo].[states] ([id], [name], [country_id]) VALUES (28, N'Connecticut', 2)
INSERT [dbo].[states] ([id], [name], [country_id]) VALUES (29, N'Delaware', 2)
INSERT [dbo].[states] ([id], [name], [country_id]) VALUES (30, N'District of Columbia', 2)
INSERT [dbo].[states] ([id], [name], [country_id]) VALUES (31, N'Florida', 2)
INSERT [dbo].[states] ([id], [name], [country_id]) VALUES (32, N'Georgia', 2)
INSERT [dbo].[states] ([id], [name], [country_id]) VALUES (33, N'Hawaii', 2)
INSERT [dbo].[states] ([id], [name], [country_id]) VALUES (34, N'Idaho', 2)
INSERT [dbo].[states] ([id], [name], [country_id]) VALUES (35, N'Illinois', 2)
INSERT [dbo].[states] ([id], [name], [country_id]) VALUES (36, N'Indiana', 2)
INSERT [dbo].[states] ([id], [name], [country_id]) VALUES (37, N'Iowa', 2)
INSERT [dbo].[states] ([id], [name], [country_id]) VALUES (38, N'Kansas', 2)
INSERT [dbo].[states] ([id], [name], [country_id]) VALUES (39, N'Kentucky', 2)
INSERT [dbo].[states] ([id], [name], [country_id]) VALUES (40, N'Louisiana', 2)
INSERT [dbo].[states] ([id], [name], [country_id]) VALUES (41, N'Lowa', 2)
INSERT [dbo].[states] ([id], [name], [country_id]) VALUES (42, N'Maine', 2)
INSERT [dbo].[states] ([id], [name], [country_id]) VALUES (43, N'Maryland', 2)
INSERT [dbo].[states] ([id], [name], [country_id]) VALUES (44, N'Massachusetts', 2)
INSERT [dbo].[states] ([id], [name], [country_id]) VALUES (45, N'Medfield', 2)
INSERT [dbo].[states] ([id], [name], [country_id]) VALUES (46, N'Michigan', 2)
INSERT [dbo].[states] ([id], [name], [country_id]) VALUES (47, N'Minnesota', 2)
INSERT [dbo].[states] ([id], [name], [country_id]) VALUES (48, N'Mississippi', 2)
INSERT [dbo].[states] ([id], [name], [country_id]) VALUES (49, N'Missouri', 2)
INSERT [dbo].[states] ([id], [name], [country_id]) VALUES (50, N'Montana', 2)
INSERT [dbo].[states] ([id], [name], [country_id]) VALUES (51, N'Nebraska', 2)
INSERT [dbo].[states] ([id], [name], [country_id]) VALUES (52, N'Nevada', 2)
INSERT [dbo].[states] ([id], [name], [country_id]) VALUES (53, N'New Hampshire', 2)
INSERT [dbo].[states] ([id], [name], [country_id]) VALUES (54, N'New Jersey', 2)
INSERT [dbo].[states] ([id], [name], [country_id]) VALUES (55, N'New Jersy', 2)
INSERT [dbo].[states] ([id], [name], [country_id]) VALUES (56, N'New Mexico', 2)
INSERT [dbo].[states] ([id], [name], [country_id]) VALUES (57, N'New York', 2)
INSERT [dbo].[states] ([id], [name], [country_id]) VALUES (58, N'North Carolina', 2)
INSERT [dbo].[states] ([id], [name], [country_id]) VALUES (59, N'North Dakota', 2)
INSERT [dbo].[states] ([id], [name], [country_id]) VALUES (60, N'Ohio', 2)
INSERT [dbo].[states] ([id], [name], [country_id]) VALUES (61, N'Oklahoma', 2)
INSERT [dbo].[states] ([id], [name], [country_id]) VALUES (62, N'Ontario', 2)
SET IDENTITY_INSERT [dbo].[states] OFF
SET IDENTITY_INSERT [dbo].[UserGame] ON 

INSERT [dbo].[UserGame] ([ID], [Firstname], [lastname], [Country_Id], [City_Id], [State_Id], [gametype_Id], [Gamename]) VALUES (9, N'vikas', N'vyas', 1, 14, 3, 2, N'Kancha or Marbles,Gilli Danda')
SET IDENTITY_INSERT [dbo].[UserGame] OFF
