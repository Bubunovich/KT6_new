USE [PetShop]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 07.11.2024 14:44:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[id] [int] NOT NULL,
	[CategoryName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[City]    Script Date: 07.11.2024 14:44:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[id] [int] NOT NULL,
	[CityName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Index]    Script Date: 07.11.2024 14:44:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Index](
	[id] [int] NOT NULL,
	[IndexName] [int] NOT NULL,
 CONSTRAINT [PK_Index] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Live]    Script Date: 07.11.2024 14:44:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Live](
	[id] [int] NOT NULL,
	[Articlid] [int] NULL,
	[CityId] [int] NULL,
	[StreetId] [int] NULL,
	[House] [int] NULL,
 CONSTRAINT [PK_Live] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Name]    Script Date: 07.11.2024 14:44:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Name](
	[id] [int] NOT NULL,
	[NameName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Name] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 07.11.2024 14:44:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[id] [int] NOT NULL,
	[OrderId] [int] NOT NULL,
	[DateOrder] [date] NOT NULL,
	[LastDate] [date] NOT NULL,
	[Punkt] [int] NOT NULL,
	[Client] [int] NULL,
	[Cod] [int] NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderProduct]    Script Date: 07.11.2024 14:44:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderProduct](
	[id] [int] NOT NULL,
	[idClient] [int] NULL,
	[idOrder] [int] NULL,
	[Sostav] [nvarchar](50) NULL,
	[Count] [int] NULL,
 CONSTRAINT [PK_OrderProduct] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producer]    Script Date: 07.11.2024 14:44:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producer](
	[id] [int] NOT NULL,
	[Producer] [nvarchar](50) NULL,
 CONSTRAINT [PK_Producer] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 07.11.2024 14:44:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[id] [int] NOT NULL,
	[Articl] [nvarchar](50) NULL,
	[ProductName] [int] NULL,
	[Mera] [nvarchar](50) NULL,
	[ProductCost] [int] NULL,
	[MaxSkidka] [int] NULL,
	[ProductProizvod] [int] NULL,
	[ProductSupplier] [int] NULL,
	[ProductCategory] [int] NULL,
	[Skidka] [int] NULL,
	[ProductCount] [int] NULL,
	[ProductDescription] [nvarchar](200) NULL,
	[ProductIMG] [nvarchar](50) NULL,
	[ProductImage] [image] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 07.11.2024 14:44:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[id] [int] NOT NULL,
	[RoleName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 07.11.2024 14:44:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[id] [int] NOT NULL,
	[StatusName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Street]    Script Date: 07.11.2024 14:44:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Street](
	[id] [int] NOT NULL,
	[StreetName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Street] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 07.11.2024 14:44:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[id] [int] NOT NULL,
	[SupplierName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Supplier] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 07.11.2024 14:44:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[id] [int] NOT NULL,
	[UserRole] [int] NOT NULL,
	[SureName] [nvarchar](50) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[UserPatronymic] [nvarchar](50) NOT NULL,
	[UserLogin] [nvarchar](100) NULL,
	[UserPassword] [nvarchar](50) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Category] ([id], [CategoryName]) VALUES (1, N'Для животных')
INSERT [dbo].[Category] ([id], [CategoryName]) VALUES (2, N'Товары для кошек')
INSERT [dbo].[Category] ([id], [CategoryName]) VALUES (3, N'Товары для собак')
GO
INSERT [dbo].[City] ([id], [CityName]) VALUES (1, N' г. Нефтеюганск')
GO
INSERT [dbo].[Index] ([id], [IndexName]) VALUES (1, 125061)
INSERT [dbo].[Index] ([id], [IndexName]) VALUES (2, 125703)
INSERT [dbo].[Index] ([id], [IndexName]) VALUES (3, 125837)
INSERT [dbo].[Index] ([id], [IndexName]) VALUES (4, 190949)
INSERT [dbo].[Index] ([id], [IndexName]) VALUES (5, 344288)
INSERT [dbo].[Index] ([id], [IndexName]) VALUES (6, 394060)
INSERT [dbo].[Index] ([id], [IndexName]) VALUES (7, 394242)
INSERT [dbo].[Index] ([id], [IndexName]) VALUES (8, 394782)
INSERT [dbo].[Index] ([id], [IndexName]) VALUES (9, 400562)
INSERT [dbo].[Index] ([id], [IndexName]) VALUES (10, 410172)
INSERT [dbo].[Index] ([id], [IndexName]) VALUES (11, 410542)
INSERT [dbo].[Index] ([id], [IndexName]) VALUES (12, 410661)
INSERT [dbo].[Index] ([id], [IndexName]) VALUES (13, 420151)
INSERT [dbo].[Index] ([id], [IndexName]) VALUES (14, 426030)
INSERT [dbo].[Index] ([id], [IndexName]) VALUES (15, 443890)
INSERT [dbo].[Index] ([id], [IndexName]) VALUES (16, 450375)
INSERT [dbo].[Index] ([id], [IndexName]) VALUES (17, 450558)
INSERT [dbo].[Index] ([id], [IndexName]) VALUES (18, 450983)
INSERT [dbo].[Index] ([id], [IndexName]) VALUES (19, 454311)
INSERT [dbo].[Index] ([id], [IndexName]) VALUES (20, 603002)
INSERT [dbo].[Index] ([id], [IndexName]) VALUES (21, 603036)
INSERT [dbo].[Index] ([id], [IndexName]) VALUES (22, 603379)
INSERT [dbo].[Index] ([id], [IndexName]) VALUES (23, 603721)
INSERT [dbo].[Index] ([id], [IndexName]) VALUES (24, 614164)
INSERT [dbo].[Index] ([id], [IndexName]) VALUES (25, 614510)
INSERT [dbo].[Index] ([id], [IndexName]) VALUES (26, 614611)
INSERT [dbo].[Index] ([id], [IndexName]) VALUES (27, 614753)
INSERT [dbo].[Index] ([id], [IndexName]) VALUES (28, 620839)
INSERT [dbo].[Index] ([id], [IndexName]) VALUES (29, 625283)
INSERT [dbo].[Index] ([id], [IndexName]) VALUES (30, 625560)
INSERT [dbo].[Index] ([id], [IndexName]) VALUES (31, 625590)
INSERT [dbo].[Index] ([id], [IndexName]) VALUES (32, 625683)
INSERT [dbo].[Index] ([id], [IndexName]) VALUES (33, 630201)
INSERT [dbo].[Index] ([id], [IndexName]) VALUES (34, 630370)
INSERT [dbo].[Index] ([id], [IndexName]) VALUES (35, 660007)
INSERT [dbo].[Index] ([id], [IndexName]) VALUES (36, 660540)
GO
INSERT [dbo].[Live] ([id], [Articlid], [CityId], [StreetId], [House]) VALUES (1, 5, 1, 26, 1)
INSERT [dbo].[Live] ([id], [Articlid], [CityId], [StreetId], [House]) VALUES (2, 24, 1, 28, 30)
INSERT [dbo].[Live] ([id], [Articlid], [CityId], [StreetId], [House]) VALUES (3, 7, 1, 6, 43)
INSERT [dbo].[Live] ([id], [Articlid], [CityId], [StreetId], [House]) VALUES (4, 36, 1, 22, 25)
INSERT [dbo].[Live] ([id], [Articlid], [CityId], [StreetId], [House]) VALUES (5, 3, 1, 28, 40)
INSERT [dbo].[Live] ([id], [Articlid], [CityId], [StreetId], [House]) VALUES (6, 2, 1, 15, 49)
INSERT [dbo].[Live] ([id], [Articlid], [CityId], [StreetId], [House]) VALUES (7, 29, 1, 16, 46)
INSERT [dbo].[Live] ([id], [Articlid], [CityId], [StreetId], [House]) VALUES (8, 26, 1, 10, 50)
INSERT [dbo].[Live] ([id], [Articlid], [CityId], [StreetId], [House]) VALUES (9, 19, 1, 13, 19)
INSERT [dbo].[Live] ([id], [Articlid], [CityId], [StreetId], [House]) VALUES (10, 35, 1, 14, 19)
INSERT [dbo].[Live] ([id], [Articlid], [CityId], [StreetId], [House]) VALUES (11, 21, 1, 19, 4)
INSERT [dbo].[Live] ([id], [Articlid], [CityId], [StreetId], [House]) VALUES (12, 18, 1, 7, 26)
INSERT [dbo].[Live] ([id], [Articlid], [CityId], [StreetId], [House]) VALUES (13, 8, 1, 26, 3)
INSERT [dbo].[Live] ([id], [Articlid], [CityId], [StreetId], [House]) VALUES (14, 20, 1, 4, 28)
INSERT [dbo].[Live] ([id], [Articlid], [CityId], [StreetId], [House]) VALUES (15, 17, 1, 11, 30)
INSERT [dbo].[Live] ([id], [Articlid], [CityId], [StreetId], [House]) VALUES (16, 6, 1, 24, 43)
INSERT [dbo].[Live] ([id], [Articlid], [CityId], [StreetId], [House]) VALUES (17, 12, 1, 27, 50)
INSERT [dbo].[Live] ([id], [Articlid], [CityId], [StreetId], [House]) VALUES (18, 31, 1, 6, 20)
INSERT [dbo].[Live] ([id], [Articlid], [CityId], [StreetId], [House]) VALUES (19, 32, 1, 1, NULL)
INSERT [dbo].[Live] ([id], [Articlid], [CityId], [StreetId], [House]) VALUES (20, 9, 1, 5, 32)
INSERT [dbo].[Live] ([id], [Articlid], [CityId], [StreetId], [House]) VALUES (21, 25, 1, 8, 47)
INSERT [dbo].[Live] ([id], [Articlid], [CityId], [StreetId], [House]) VALUES (22, 11, 1, 20, 46)
INSERT [dbo].[Live] ([id], [Articlid], [CityId], [StreetId], [House]) VALUES (23, 28, 1, 25, 8)
INSERT [dbo].[Live] ([id], [Articlid], [CityId], [StreetId], [House]) VALUES (24, 15, 1, 6, 1)
INSERT [dbo].[Live] ([id], [Articlid], [CityId], [StreetId], [House]) VALUES (25, 22, 1, 23, 46)
INSERT [dbo].[Live] ([id], [Articlid], [CityId], [StreetId], [House]) VALUES (26, 23, 1, 3, 41)
INSERT [dbo].[Live] ([id], [Articlid], [CityId], [StreetId], [House]) VALUES (27, 10, 1, 21, 13)
INSERT [dbo].[Live] ([id], [Articlid], [CityId], [StreetId], [House]) VALUES (28, 13, 1, 2, 32)
INSERT [dbo].[Live] ([id], [Articlid], [CityId], [StreetId], [House]) VALUES (29, 1, 1, 17, 8)
INSERT [dbo].[Live] ([id], [Articlid], [CityId], [StreetId], [House]) VALUES (30, 34, 1, 28, 24)
INSERT [dbo].[Live] ([id], [Articlid], [CityId], [StreetId], [House]) VALUES (31, 27, 1, 18, 35)
INSERT [dbo].[Live] ([id], [Articlid], [CityId], [StreetId], [House]) VALUES (32, 14, 1, 8, 44)
INSERT [dbo].[Live] ([id], [Articlid], [CityId], [StreetId], [House]) VALUES (33, 16, 1, 29, 44)
INSERT [dbo].[Live] ([id], [Articlid], [CityId], [StreetId], [House]) VALUES (34, 30, 1, 12, 12)
INSERT [dbo].[Live] ([id], [Articlid], [CityId], [StreetId], [House]) VALUES (35, 33, 1, 7, 17)
INSERT [dbo].[Live] ([id], [Articlid], [CityId], [StreetId], [House]) VALUES (36, 4, 1, 9, 26)
GO
INSERT [dbo].[Name] ([id], [NameName]) VALUES (1, N'Игрушка')
INSERT [dbo].[Name] ([id], [NameName]) VALUES (2, N'Клетка')
INSERT [dbo].[Name] ([id], [NameName]) VALUES (3, N'Лакомство')
INSERT [dbo].[Name] ([id], [NameName]) VALUES (4, N'Лежак')
INSERT [dbo].[Name] ([id], [NameName]) VALUES (5, N'Миска')
INSERT [dbo].[Name] ([id], [NameName]) VALUES (6, N'Мячик')
INSERT [dbo].[Name] ([id], [NameName]) VALUES (7, N'Сухой корм')
INSERT [dbo].[Name] ([id], [NameName]) VALUES (8, N'Щетка-варежка')
GO
INSERT [dbo].[Order] ([id], [OrderId], [DateOrder], [LastDate], [Punkt], [Client], [Cod], [Status]) VALUES (1, 1, CAST(N'2022-05-06' AS Date), CAST(N'2022-05-12' AS Date), 25, NULL, 601, 2)
INSERT [dbo].[Order] ([id], [OrderId], [DateOrder], [LastDate], [Punkt], [Client], [Cod], [Status]) VALUES (2, 2, CAST(N'2022-05-06' AS Date), CAST(N'2022-05-12' AS Date), 20, NULL, 602, 2)
INSERT [dbo].[Order] ([id], [OrderId], [DateOrder], [LastDate], [Punkt], [Client], [Cod], [Status]) VALUES (3, 3, CAST(N'2022-05-08' AS Date), CAST(N'2022-05-14' AS Date), 22, 1, 603, 1)
INSERT [dbo].[Order] ([id], [OrderId], [DateOrder], [LastDate], [Punkt], [Client], [Cod], [Status]) VALUES (4, 4, CAST(N'2022-05-08' AS Date), CAST(N'2022-05-14' AS Date), 24, NULL, 604, 1)
INSERT [dbo].[Order] ([id], [OrderId], [DateOrder], [LastDate], [Punkt], [Client], [Cod], [Status]) VALUES (5, 5, CAST(N'2022-05-10' AS Date), CAST(N'2022-05-16' AS Date), 25, NULL, 605, 1)
INSERT [dbo].[Order] ([id], [OrderId], [DateOrder], [LastDate], [Punkt], [Client], [Cod], [Status]) VALUES (6, 6, CAST(N'2022-05-11' AS Date), CAST(N'2022-05-17' AS Date), 28, 2, 606, 1)
INSERT [dbo].[Order] ([id], [OrderId], [DateOrder], [LastDate], [Punkt], [Client], [Cod], [Status]) VALUES (7, 7, CAST(N'2022-05-12' AS Date), CAST(N'2022-05-18' AS Date), 36, NULL, 607, 2)
INSERT [dbo].[Order] ([id], [OrderId], [DateOrder], [LastDate], [Punkt], [Client], [Cod], [Status]) VALUES (8, 8, CAST(N'2022-05-13' AS Date), CAST(N'2022-05-19' AS Date), 32, NULL, 608, 2)
INSERT [dbo].[Order] ([id], [OrderId], [DateOrder], [LastDate], [Punkt], [Client], [Cod], [Status]) VALUES (9, 9, CAST(N'2022-05-15' AS Date), CAST(N'2022-05-21' AS Date), 34, 3, 609, 2)
INSERT [dbo].[Order] ([id], [OrderId], [DateOrder], [LastDate], [Punkt], [Client], [Cod], [Status]) VALUES (10, 10, CAST(N'2022-05-15' AS Date), CAST(N'2022-05-21' AS Date), 36, 4, 610, 1)
GO
INSERT [dbo].[OrderProduct] ([id], [idClient], [idOrder], [Sostav], [Count]) VALUES (1, NULL, 1, N'А112Т4', 15)
INSERT [dbo].[OrderProduct] ([id], [idClient], [idOrder], [Sostav], [Count]) VALUES (2, NULL, 2, N'F432F4', 15)
INSERT [dbo].[OrderProduct] ([id], [idClient], [idOrder], [Sostav], [Count]) VALUES (3, 1, 3, N'E532Q5', 10)
INSERT [dbo].[OrderProduct] ([id], [idClient], [idOrder], [Sostav], [Count]) VALUES (4, NULL, 4, N'G345E4', 1)
INSERT [dbo].[OrderProduct] ([id], [idClient], [idOrder], [Sostav], [Count]) VALUES (5, NULL, 5, N'R356F4', 1)
INSERT [dbo].[OrderProduct] ([id], [idClient], [idOrder], [Sostav], [Count]) VALUES (6, 2, 6, N'H436R4', 1)
INSERT [dbo].[OrderProduct] ([id], [idClient], [idOrder], [Sostav], [Count]) VALUES (7, NULL, 7, N'H342F5', 2)
INSERT [dbo].[OrderProduct] ([id], [idClient], [idOrder], [Sostav], [Count]) VALUES (8, NULL, 8, N'K436T5', 1)
INSERT [dbo].[OrderProduct] ([id], [idClient], [idOrder], [Sostav], [Count]) VALUES (9, 3, 9, N'V527T5', 1)
INSERT [dbo].[OrderProduct] ([id], [idClient], [idOrder], [Sostav], [Count]) VALUES (10, 4, 10, N'M356R4', 1)
INSERT [dbo].[OrderProduct] ([id], [idClient], [idOrder], [Sostav], [Count]) VALUES (11, NULL, 1, N' G453T5', 1)
INSERT [dbo].[OrderProduct] ([id], [idClient], [idOrder], [Sostav], [Count]) VALUES (12, NULL, 2, N' Y324F4', 15)
INSERT [dbo].[OrderProduct] ([id], [idClient], [idOrder], [Sostav], [Count]) VALUES (13, 1, 3, N' T432F4', 10)
INSERT [dbo].[OrderProduct] ([id], [idClient], [idOrder], [Sostav], [Count]) VALUES (14, NULL, 4, N' E345R4', 2)
INSERT [dbo].[OrderProduct] ([id], [idClient], [idOrder], [Sostav], [Count]) VALUES (15, NULL, 5, N' E431R5', 10)
INSERT [dbo].[OrderProduct] ([id], [idClient], [idOrder], [Sostav], [Count]) VALUES (16, 2, 6, N' D643B5', 1)
INSERT [dbo].[OrderProduct] ([id], [idClient], [idOrder], [Sostav], [Count]) VALUES (17, NULL, 7, N' Q245F5', 2)
INSERT [dbo].[OrderProduct] ([id], [idClient], [idOrder], [Sostav], [Count]) VALUES (18, NULL, 8, N' V527T5', 1)
INSERT [dbo].[OrderProduct] ([id], [idClient], [idOrder], [Sostav], [Count]) VALUES (19, 3, 9, N' K452T5', 1)
INSERT [dbo].[OrderProduct] ([id], [idClient], [idOrder], [Sostav], [Count]) VALUES (20, 4, 10, N' W548O7', 1)
GO
INSERT [dbo].[Producer] ([id], [Producer]) VALUES (1, N'Cat Chow')
INSERT [dbo].[Producer] ([id], [Producer]) VALUES (2, N'Chappy')
INSERT [dbo].[Producer] ([id], [Producer]) VALUES (3, N'Dog Chow')
INSERT [dbo].[Producer] ([id], [Producer]) VALUES (4, N'Dreames')
INSERT [dbo].[Producer] ([id], [Producer]) VALUES (5, N'Fancy Pets')
INSERT [dbo].[Producer] ([id], [Producer]) VALUES (6, N'LIKER')
INSERT [dbo].[Producer] ([id], [Producer]) VALUES (7, N'Nobby')
INSERT [dbo].[Producer] ([id], [Producer]) VALUES (8, N'Pro Plan')
INSERT [dbo].[Producer] ([id], [Producer]) VALUES (9, N'TitBit')
INSERT [dbo].[Producer] ([id], [Producer]) VALUES (10, N'Triol')
INSERT [dbo].[Producer] ([id], [Producer]) VALUES (11, N'trixie')
INSERT [dbo].[Producer] ([id], [Producer]) VALUES (12, N'True Touch')
INSERT [dbo].[Producer] ([id], [Producer]) VALUES (13, N'ZooM')
GO
INSERT [dbo].[Product] ([id], [Articl], [ProductName], [Mera], [ProductCost], [MaxSkidka], [ProductProizvod], [ProductSupplier], [ProductCategory], [Skidka], [ProductCount], [ProductDescription], [ProductIMG], [ProductImage]) VALUES (1, N'А112Т4', 3, N'шт.', 123, 30, 4, 1, 2, 3, 6, N'Лакомство для кошек Dreamies Подушечки с курицей, 140 г', N'А112Т4.png', NULL)
INSERT [dbo].[Product] ([id], [Articl], [ProductName], [Mera], [ProductCost], [MaxSkidka], [ProductProizvod], [ProductSupplier], [ProductCategory], [Skidka], [ProductCount], [ProductDescription], [ProductIMG], [ProductImage]) VALUES (2, N'G453T5', 8, N'шт.', 149, 15, 12, 2, 1, 2, 7, N'Щетка-варежка True Touch для вычесывания шерсти, синий', N'G453T5.jpg', NULL)
INSERT [dbo].[Product] ([id], [Articl], [ProductName], [Mera], [ProductCost], [MaxSkidka], [ProductProizvod], [ProductSupplier], [ProductCategory], [Skidka], [ProductCount], [ProductDescription], [ProductIMG], [ProductImage]) VALUES (3, N'F432F4', 7, N'шт.', 1200, 10, 8, 2, 2, 3, 15, N'Сухой корм для кошек Pro Plan с чувствительным пищеварением', N'F432F4.jpg', NULL)
INSERT [dbo].[Product] ([id], [Articl], [ProductName], [Mera], [ProductCost], [MaxSkidka], [ProductProizvod], [ProductSupplier], [ProductCategory], [Skidka], [ProductCount], [ProductDescription], [ProductIMG], [ProductImage]) VALUES (4, N'Y324F4', 3, N'шт.', 86, 5, 9, 1, 3, 4, 17, N'Лакомство для собак Titbit Косточки мясные с индейкой и ягненком, 145 г', N'Y324F4.jpg', NULL)
INSERT [dbo].[Product] ([id], [Articl], [ProductName], [Mera], [ProductCost], [MaxSkidka], [ProductProizvod], [ProductSupplier], [ProductCategory], [Skidka], [ProductCount], [ProductDescription], [ProductIMG], [ProductImage]) VALUES (5, N'E532Q5', 3, N'шт.', 166, 15, 9, 1, 3, 5, 18, N'Лакомство для собак Titbit Печенье Био Десерт с лососем стандарт, 350 г', N'E532Q5.jpg', NULL)
INSERT [dbo].[Product] ([id], [Articl], [ProductName], [Mera], [ProductCost], [MaxSkidka], [ProductProizvod], [ProductSupplier], [ProductCategory], [Skidka], [ProductCount], [ProductDescription], [ProductIMG], [ProductImage]) VALUES (6, N'T432F4', 7, N'шт.', 1700, 25, 2, 2, 3, 2, 5, N'Сухой корм для собак Chappi говядина по-домашнему, с овощами', N'T432F4.jpg', NULL)
INSERT [dbo].[Product] ([id], [Articl], [ProductName], [Mera], [ProductCost], [MaxSkidka], [ProductProizvod], [ProductSupplier], [ProductCategory], [Skidka], [ProductCount], [ProductDescription], [ProductIMG], [ProductImage]) VALUES (7, N'G345E4', 6, N'шт.', 300, 5, 6, 2, 3, 3, 19, N'Мячик для собак LIKER Мячик Лайкер (6294) оранжевый', N'G345E4.jpg', NULL)
INSERT [dbo].[Product] ([id], [Articl], [ProductName], [Mera], [ProductCost], [MaxSkidka], [ProductProizvod], [ProductSupplier], [ProductCategory], [Skidka], [ProductCount], [ProductDescription], [ProductIMG], [ProductImage]) VALUES (8, N'E345R4', 1, N'шт.', 199, 5, 5, 2, 2, 5, 7, N'Игрушка для животных «Котик» с кошачьей мятой FANCY PETS', N'E345R4.jpg', NULL)
INSERT [dbo].[Product] ([id], [Articl], [ProductName], [Mera], [ProductCost], [MaxSkidka], [ProductProizvod], [ProductSupplier], [ProductCategory], [Skidka], [ProductCount], [ProductDescription], [ProductIMG], [ProductImage]) VALUES (9, N'R356F4', 5, N'шт.', 234, 10, 7, 1, 3, 3, 17, N'Миска Nobby с рисунком Dog для собак 130 мл красный', N'R356F4.jpg', NULL)
INSERT [dbo].[Product] ([id], [Articl], [ProductName], [Mera], [ProductCost], [MaxSkidka], [ProductProizvod], [ProductSupplier], [ProductCategory], [Skidka], [ProductCount], [ProductDescription], [ProductIMG], [ProductImage]) VALUES (10, N'E431R5', 3, N'шт.', 170, 5, 10, 2, 3, 5, 5, N'Лакомство для собак Triol Кость из жил 7.5 см, 4шт. в уп.', N'E431R5.png', NULL)
INSERT [dbo].[Product] ([id], [Articl], [ProductName], [Mera], [ProductCost], [MaxSkidka], [ProductProizvod], [ProductSupplier], [ProductCategory], [Skidka], [ProductCount], [ProductDescription], [ProductIMG], [ProductImage]) VALUES (11, N'D563F4', 1, N'шт.', 600, 10, 10, 1, 3, 5, 5, N'Игрушка для собак Triol Бобер 41 см 12141053 бежевый', N'', NULL)
INSERT [dbo].[Product] ([id], [Articl], [ProductName], [Mera], [ProductCost], [MaxSkidka], [ProductProizvod], [ProductSupplier], [ProductCategory], [Skidka], [ProductCount], [ProductDescription], [ProductIMG], [ProductImage]) VALUES (12, N'H436R4', 1, N'шт.', 300, 15, 10, 1, 3, 2, 15, N'Игрушка для собак Triol 3D плетение EC-04/12171005 бежевый', N'', NULL)
INSERT [dbo].[Product] ([id], [Articl], [ProductName], [Mera], [ProductCost], [MaxSkidka], [ProductProizvod], [ProductSupplier], [ProductCategory], [Skidka], [ProductCount], [ProductDescription], [ProductIMG], [ProductImage]) VALUES (13, N'D643B5', 7, N'шт.', 4100, 30, 1, 1, 2, 4, 9, N'Сухой корм для котят CAT CHOW с высоким содержанием домашней птицы', N'', NULL)
INSERT [dbo].[Product] ([id], [Articl], [ProductName], [Mera], [ProductCost], [MaxSkidka], [ProductProizvod], [ProductSupplier], [ProductCategory], [Skidka], [ProductCount], [ProductDescription], [ProductIMG], [ProductImage]) VALUES (14, N'H432F4', 5, N'шт.', 385, 10, 10, 2, 1, 2, 17, N'Миска Triol 9002/KIDP3211/30261087 400 мл серебристый', N'', NULL)
INSERT [dbo].[Product] ([id], [Articl], [ProductName], [Mera], [ProductCost], [MaxSkidka], [ProductProizvod], [ProductSupplier], [ProductCategory], [Skidka], [ProductCount], [ProductDescription], [ProductIMG], [ProductImage]) VALUES (15, N'S245R4', 7, N'шт.', 280, 15, 1, 2, 2, 3, 8, N'Сухой корм для кошек CAT CHOW', N'', NULL)
INSERT [dbo].[Product] ([id], [Articl], [ProductName], [Mera], [ProductCost], [MaxSkidka], [ProductProizvod], [ProductSupplier], [ProductCategory], [Skidka], [ProductCount], [ProductDescription], [ProductIMG], [ProductImage]) VALUES (16, N'V352R4', 7, N'шт.', 1700, 25, 2, 1, 3, 4, 9, N'Сухой корм для собак Chappi Мясное изобилие, мясное ассорти', N'', NULL)
INSERT [dbo].[Product] ([id], [Articl], [ProductName], [Mera], [ProductCost], [MaxSkidka], [ProductProizvod], [ProductSupplier], [ProductCategory], [Skidka], [ProductCount], [ProductDescription], [ProductIMG], [ProductImage]) VALUES (17, N'H342F5', 1, N'шт.', 510, 5, 10, 2, 3, 2, 17, N'Игрушка для собак Triol Енот 41 см 12141063 серый', N'', NULL)
INSERT [dbo].[Product] ([id], [Articl], [ProductName], [Mera], [ProductCost], [MaxSkidka], [ProductProizvod], [ProductSupplier], [ProductCategory], [Skidka], [ProductCount], [ProductDescription], [ProductIMG], [ProductImage]) VALUES (18, N'Q245F5', 1, N'шт.', 510, 5, 10, 2, 3, 2, 17, N'Игрушка для собак Triol Бобер 41 см 12141063 серый', N'', NULL)
INSERT [dbo].[Product] ([id], [Articl], [ProductName], [Mera], [ProductCost], [MaxSkidka], [ProductProizvod], [ProductSupplier], [ProductCategory], [Skidka], [ProductCount], [ProductDescription], [ProductIMG], [ProductImage]) VALUES (19, N'G542F5', 7, N'шт.', 2190, 30, 8, 1, 3, 4, 7, N'Сухой корм для собак Pro Plan при чувствительном пищеварении, ягненок', N'', NULL)
INSERT [dbo].[Product] ([id], [Articl], [ProductName], [Mera], [ProductCost], [MaxSkidka], [ProductProizvod], [ProductSupplier], [ProductCategory], [Skidka], [ProductCount], [ProductDescription], [ProductIMG], [ProductImage]) VALUES (20, N'H542R6', 3, N'шт.', 177, 15, 10, 2, 3, 3, 15, N'Лакомство для собак Triol Мясные полоски из кролика, 70 г', N'', NULL)
INSERT [dbo].[Product] ([id], [Articl], [ProductName], [Mera], [ProductCost], [MaxSkidka], [ProductProizvod], [ProductSupplier], [ProductCategory], [Skidka], [ProductCount], [ProductDescription], [ProductIMG], [ProductImage]) VALUES (21, N'K436T5', 6, N'шт.', 100, 5, 10, 2, 3, 4, 21, N'Мячик для собак Triol с косточками 12101096 желтый/зеленый', N'', NULL)
INSERT [dbo].[Product] ([id], [Articl], [ProductName], [Mera], [ProductCost], [MaxSkidka], [ProductProizvod], [ProductSupplier], [ProductCategory], [Skidka], [ProductCount], [ProductDescription], [ProductIMG], [ProductImage]) VALUES (22, N'V527T5', 1, N'шт.', 640, 5, 10, 1, 3, 5, 4, N'Игрушка для собак Triol Ящерица 39 см коричневый', N'', NULL)
INSERT [dbo].[Product] ([id], [Articl], [ProductName], [Mera], [ProductCost], [MaxSkidka], [ProductProizvod], [ProductSupplier], [ProductCategory], [Skidka], [ProductCount], [ProductDescription], [ProductIMG], [ProductImage]) VALUES (23, N'K452T5', 4, N'шт.', 800, 25, 13, 2, 3, 2, 17, N'Лежак для собак и кошек ZooM Lama 40х30х8 см бежевый', N'', NULL)
INSERT [dbo].[Product] ([id], [Articl], [ProductName], [Mera], [ProductCost], [MaxSkidka], [ProductProizvod], [ProductSupplier], [ProductCategory], [Skidka], [ProductCount], [ProductDescription], [ProductIMG], [ProductImage]) VALUES (24, N'E466T6', 2, N'шт.', 3500, 30, 10, 2, 3, 5, 3, N'Клетка для собак Triol 30671002 61х45.5х52 см серый/белый', N'', NULL)
INSERT [dbo].[Product] ([id], [Articl], [ProductName], [Mera], [ProductCost], [MaxSkidka], [ProductProizvod], [ProductSupplier], [ProductCategory], [Skidka], [ProductCount], [ProductDescription], [ProductIMG], [ProductImage]) VALUES (25, N'B427R5', 5, N'шт.', 400, 15, 10, 2, 1, 4, 5, N'Миска для животных Triol "Стрекоза", 450 мл', N'', NULL)
INSERT [dbo].[Product] ([id], [Articl], [ProductName], [Mera], [ProductCost], [MaxSkidka], [ProductProizvod], [ProductSupplier], [ProductCategory], [Skidka], [ProductCount], [ProductDescription], [ProductIMG], [ProductImage]) VALUES (26, N'H643W2', 5, N'шт.', 292, 25, 10, 1, 1, 3, 13, N'Миска Triol CB02/30231002 100 мл бежевый/голубой', N'', NULL)
INSERT [dbo].[Product] ([id], [Articl], [ProductName], [Mera], [ProductCost], [MaxSkidka], [ProductProizvod], [ProductSupplier], [ProductCategory], [Skidka], [ProductCount], [ProductDescription], [ProductIMG], [ProductImage]) VALUES (27, N'D356R4', 6, N'шт.', 600, 15, 11, 1, 3, 2, 16, N'Мячик для собак TRIXIE DentaFun (32942) зеленый / белый', N'', NULL)
INSERT [dbo].[Product] ([id], [Articl], [ProductName], [Mera], [ProductCost], [MaxSkidka], [ProductProizvod], [ProductSupplier], [ProductCategory], [Skidka], [ProductCount], [ProductDescription], [ProductIMG], [ProductImage]) VALUES (28, N'E434U6', 3, N'шт.', 140, 20, 9, 2, 3, 3, 19, N'Лакомство для собак Titbit Лакомый кусочек Нарезка из говядины, 80 г', N'', NULL)
INSERT [dbo].[Product] ([id], [Articl], [ProductName], [Mera], [ProductCost], [MaxSkidka], [ProductProizvod], [ProductSupplier], [ProductCategory], [Skidka], [ProductCount], [ProductDescription], [ProductIMG], [ProductImage]) VALUES (29, N'M356R4', 3, N'шт.', 50, 5, 9, 2, 3, 4, 6, N'Лакомство для собак Titbit Гематоген мясной Classic, 35 г', N'', NULL)
INSERT [dbo].[Product] ([id], [Articl], [ProductName], [Mera], [ProductCost], [MaxSkidka], [ProductProizvod], [ProductSupplier], [ProductCategory], [Skidka], [ProductCount], [ProductDescription], [ProductIMG], [ProductImage]) VALUES (30, N'W548O7', 7, N'шт.', 600, 15, 3, 1, 3, 5, 15, N'Сухой корм для щенков DOG CHOW Puppy, ягненок 2.5 кг', N'', NULL)
GO
INSERT [dbo].[Role] ([id], [RoleName]) VALUES (1, N'Администратор')
INSERT [dbo].[Role] ([id], [RoleName]) VALUES (2, N'Клиент')
INSERT [dbo].[Role] ([id], [RoleName]) VALUES (3, N'Менеджер')
GO
INSERT [dbo].[Status] ([id], [StatusName]) VALUES (1, N'Завершен')
INSERT [dbo].[Status] ([id], [StatusName]) VALUES (2, N'Новый ')
GO
INSERT [dbo].[Street] ([id], [StreetName]) VALUES (1, N' ул. 8 Марта')
INSERT [dbo].[Street] ([id], [StreetName]) VALUES (2, N' ул. Вишневая')
INSERT [dbo].[Street] ([id], [StreetName]) VALUES (3, N' ул. Гоголя')
INSERT [dbo].[Street] ([id], [StreetName]) VALUES (4, N' ул. Дзержинского')
INSERT [dbo].[Street] ([id], [StreetName]) VALUES (5, N' ул. Зеленая')
INSERT [dbo].[Street] ([id], [StreetName]) VALUES (6, N' ул. Коммунистическая')
INSERT [dbo].[Street] ([id], [StreetName]) VALUES (7, N' ул. Комсомольская')
INSERT [dbo].[Street] ([id], [StreetName]) VALUES (8, N' ул. Маяковского')
INSERT [dbo].[Street] ([id], [StreetName]) VALUES (9, N' ул. Мичурина')
INSERT [dbo].[Street] ([id], [StreetName]) VALUES (10, N' ул. Молодежная')
INSERT [dbo].[Street] ([id], [StreetName]) VALUES (11, N' ул. Набережная')
INSERT [dbo].[Street] ([id], [StreetName]) VALUES (12, N' ул. Некрасова')
INSERT [dbo].[Street] ([id], [StreetName]) VALUES (13, N' ул. Новая')
INSERT [dbo].[Street] ([id], [StreetName]) VALUES (14, N' ул. Октябрьская')
INSERT [dbo].[Street] ([id], [StreetName]) VALUES (15, N' ул. Партизанская')
INSERT [dbo].[Street] ([id], [StreetName]) VALUES (16, N' ул. Победы')
INSERT [dbo].[Street] ([id], [StreetName]) VALUES (17, N' ул. Подгорная')
INSERT [dbo].[Street] ([id], [StreetName]) VALUES (18, N' ул. Полевая')
INSERT [dbo].[Street] ([id], [StreetName]) VALUES (19, N' ул. Садовая')
INSERT [dbo].[Street] ([id], [StreetName]) VALUES (20, N' ул. Светлая')
INSERT [dbo].[Street] ([id], [StreetName]) VALUES (21, N' ул. Северная')
INSERT [dbo].[Street] ([id], [StreetName]) VALUES (22, N' ул. Солнечная')
INSERT [dbo].[Street] ([id], [StreetName]) VALUES (23, N' ул. Спортивная')
INSERT [dbo].[Street] ([id], [StreetName]) VALUES (24, N' ул. Фрунзе')
INSERT [dbo].[Street] ([id], [StreetName]) VALUES (25, N' ул. Цветочная')
INSERT [dbo].[Street] ([id], [StreetName]) VALUES (26, N' ул. Чехова')
INSERT [dbo].[Street] ([id], [StreetName]) VALUES (27, N' ул. Школьная')
INSERT [dbo].[Street] ([id], [StreetName]) VALUES (28, N' ул. Шоссейная')
INSERT [dbo].[Street] ([id], [StreetName]) VALUES (29, N'ул. Клубная')
GO
INSERT [dbo].[Supplier] ([id], [SupplierName]) VALUES (1, N'PetShop')
INSERT [dbo].[Supplier] ([id], [SupplierName]) VALUES (2, N'ZooMir')
GO
INSERT [dbo].[User] ([id], [UserRole], [SureName], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (1, 1, N'Суслов', N'Илья', N'Арсентьевич', N'pixil59@gmail.com', N'2L6KZG')
INSERT [dbo].[User] ([id], [UserRole], [SureName], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (2, 1, N'Яковлева', N'Ярослава', N'Даниэльевна', N'"deummecillummu-4992@mail.ru', NULL)
INSERT [dbo].[User] ([id], [UserRole], [SureName], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (3, 1, N'Игнатьева', N'Алина', N'Михайловна', N'vilagajaunne-5170@yandex.ru', N'8ntwUp')
INSERT [dbo].[User] ([id], [UserRole], [SureName], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (4, 3, N'Денисов', N'Михаил', N'Романович', N'frusubroppotou656@yandex.ru', N'YOyhfR')
INSERT [dbo].[User] ([id], [UserRole], [SureName], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (5, 3, N'Тимофеев', N'Михаил', N'Елисеевич', N'leuttevitrafo1998@mail.ru', N'RSbvHv')
INSERT [dbo].[User] ([id], [UserRole], [SureName], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (6, 3, N'Соловьев', N'Ярослав', N'Маркович', N'frapreubrulloba1141@yandex.ru', N'rwVDh9')
INSERT [dbo].[User] ([id], [UserRole], [SureName], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (7, 2, N'Филимонов', N'Роберт', N'Васильевич', N'loudittoimmolau1900@gmail.com', N'LdNyos')
INSERT [dbo].[User] ([id], [UserRole], [SureName], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (8, 2, N'Шилова', N'Майя', N'Артемьевна', N'hittuprofassa4984@mail.com', N'gynQMT')
INSERT [dbo].[User] ([id], [UserRole], [SureName], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (9, 2, N'Чистякова', N'Виктория', N'Степановна', N'freineiciweijau888@yandex.ru', N'AtnDjr')
INSERT [dbo].[User] ([id], [UserRole], [SureName], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (10, 2, N'Волкова', N'Эмилия', N'Артёмовна', N'nokupekidda2001@gmail.com', N'JlFRCZ')
GO
ALTER TABLE [dbo].[Live]  WITH CHECK ADD  CONSTRAINT [FK_Live_City] FOREIGN KEY([CityId])
REFERENCES [dbo].[City] ([id])
GO
ALTER TABLE [dbo].[Live] CHECK CONSTRAINT [FK_Live_City]
GO
ALTER TABLE [dbo].[Live]  WITH CHECK ADD  CONSTRAINT [FK_Live_Index] FOREIGN KEY([Articlid])
REFERENCES [dbo].[Index] ([id])
GO
ALTER TABLE [dbo].[Live] CHECK CONSTRAINT [FK_Live_Index]
GO
ALTER TABLE [dbo].[Live]  WITH CHECK ADD  CONSTRAINT [FK_Live_Street] FOREIGN KEY([StreetId])
REFERENCES [dbo].[Street] ([id])
GO
ALTER TABLE [dbo].[Live] CHECK CONSTRAINT [FK_Live_Street]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Status] FOREIGN KEY([Status])
REFERENCES [dbo].[Status] ([id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Status]
GO
ALTER TABLE [dbo].[OrderProduct]  WITH CHECK ADD  CONSTRAINT [FK_OrderProduct_Order] FOREIGN KEY([idClient])
REFERENCES [dbo].[Order] ([id])
GO
ALTER TABLE [dbo].[OrderProduct] CHECK CONSTRAINT [FK_OrderProduct_Order]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([ProductCategory])
REFERENCES [dbo].[Category] ([id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Name] FOREIGN KEY([ProductName])
REFERENCES [dbo].[Name] ([id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Name]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Producer] FOREIGN KEY([ProductProizvod])
REFERENCES [dbo].[Producer] ([id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Producer]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Supplier] FOREIGN KEY([ProductSupplier])
REFERENCES [dbo].[Supplier] ([id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Supplier]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([UserRole])
REFERENCES [dbo].[Role] ([id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
