USE [MKYOPC]
GO
/****** Object:  Table [dbo].[CPU]    Script Date: 2018-01-29 08:06:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CPU](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Company] [varchar](50) NULL,
	[PFamily] [varchar](50) NULL,
	[PModel] [varchar](50) NULL,
	[Socket] [varchar](50) NULL,
	[PFullModelName] [varchar](50) NULL,
	[CNumber] [int] NULL,
	[TNumber] [int] NULL,
	[GIntegrated] [bit] NOT NULL,
	[GName] [varchar](50) NULL,
	[SupportedRAMType1] [varchar](50) NULL,
	[SupportedRAMType2] [varchar](50) NULL,
	[DDR3RAMFrequency1] [int] NULL,
	[DDR3RAMFrequency2] [int] NULL,
	[DDR3RAMFrequency3] [int] NULL,
	[DDR3RAMFrequency4] [int] NULL,
	[DDR4RAMFrequency1] [int] NULL,
	[DDR4RAMFrequency2] [int] NULL,
	[DDR4RAMFrequency3] [int] NULL,
	[DDR4RAMFrequency4] [int] NULL,
 CONSTRAINT [PK_CPU] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CPUCOOLING]    Script Date: 2018-01-29 08:06:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CPUCOOLING](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Company] [varchar](50) NULL,
	[COOLINGFullModelName] [varchar](50) NULL,
	[Compatibility] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GPU]    Script Date: 2018-01-29 08:06:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GPU](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Company] [varchar](50) NULL,
	[GPUFamily] [varchar](50) NULL,
	[GPUName] [varchar](50) NULL,
	[GPUFullModelName] [varchar](50) NULL,
	[VRAMCapacity] [varchar](50) NULL,
	[RAMType] [varchar](50) NULL,
	[MemoryBus] [varchar](50) NULL,
	[MBConnection] [varchar](50) NULL,
	[CoolingType] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HDD]    Script Date: 2018-01-29 08:06:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HDD](
	[LP] [int] IDENTITY(1,1) NOT NULL,
	[Producent] [varchar](50) NULL,
	[DriveFullModelName] [varchar](50) NULL,
	[DriveType] [varchar](50) NULL,
	[DriveCapacity] [varchar](50) NULL,
	[DriveInterface] [varchar](50) NULL,
 CONSTRAINT [PK_HDD] PRIMARY KEY CLUSTERED 
(
	[LP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HDDSSD]    Script Date: 2018-01-29 08:06:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HDDSSD](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Company] [varchar](50) NULL,
	[DriveFullModelName] [varchar](50) NULL,
	[DriveType] [varchar](50) NULL,
	[DriveCapacity] [varchar](50) NULL,
	[DriveInterface] [varchar](50) NULL,
 CONSTRAINT [PK_HDDSSD] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Keyboard]    Script Date: 2018-01-29 08:06:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Keyboard](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Company] [varchar](50) NULL,
	[KeyboardFullModelName] [varchar](50) NULL,
	[KeyboardConnection] [varchar](50) NULL,
	[KeyboardInterface] [varchar](50) NULL,
 CONSTRAINT [PK_Keyboard] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MOTHERBOARDS]    Script Date: 2018-01-29 08:06:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MOTHERBOARDS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Company] [varchar](50) NULL,
	[PFamily1] [varchar](50) NULL,
	[PFamily2] [varchar](50) NULL,
	[PFamily3] [varchar](50) NULL,
	[PFamily4] [varchar](50) NULL,
	[PFamily5] [varchar](50) NULL,
	[MModel] [varchar](50) NULL,
	[PSocket] [varchar](50) NULL,
	[MFullModelName] [varchar](50) NULL,
	[MFormat] [varchar](50) NULL,
	[MChipset] [varchar](50) NULL,
	[DDRSocketQ] [int] NOT NULL,
	[DDRSocketTYPE] [varchar](50) NULL,
	[MIConnectors] [varchar](max) NULL,
	[MEConnectors] [varchar](max) NULL,
	[GraphicsInCPUs] [bit] NOT NULL,
	[IntegratedGPU] [bit] NOT NULL,
	[ManyGPUs] [varchar](50) NULL,
	[SupportedRAMType1] [varchar](50) NULL,
	[SupportedRAMType2] [varchar](50) NULL,
	[DDR3RAMFrequency1] [int] NULL,
	[DDR3RAMFrequency2] [int] NULL,
	[DDR3RAMFrequency3] [int] NULL,
	[DDR3RAMFrequency4] [int] NULL,
	[DDR4RAMFrequency1] [int] NULL,
	[DDR4RAMFrequency2] [int] NULL,
	[DDR4RAMFrequency3] [int] NULL,
	[DDR4RAMFrequency4] [int] NULL,
 CONSTRAINT [PK_MOTHERBOARDS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mouse]    Script Date: 2018-01-29 08:06:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mouse](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Company] [varchar](50) NULL,
	[MouseFullModelName] [varchar](50) NULL,
	[MouseSensor] [varchar](50) NULL,
	[MouseResolution] [varchar](50) NULL,
	[MouseConnection] [varchar](50) NULL,
	[MouseInterface] [varchar](50) NULL,
 CONSTRAINT [PK_Mouse] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OPDrives]    Script Date: 2018-01-29 08:06:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OPDrives](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Company] [varchar](50) NULL,
	[OPDriveFullModelName] [varchar](50) NULL,
	[DriveType] [varchar](50) NULL,
	[OPDInterface] [varchar](50) NULL,
 CONSTRAINT [PK_OPDrives] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PCCOVER]    Script Date: 2018-01-29 08:06:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PCCOVER](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Company] [varchar](50) NULL,
	[CoverFullModelName] [varchar](50) NULL,
	[CoverType] [varchar](50) NULL,
	[MBFormat] [varchar](50) NULL,
	[PSFormat] [varchar](50) NULL,
	[ExConnectors] [varchar](50) NULL,
 CONSTRAINT [PK_PCCOVER] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PSU]    Script Date: 2018-01-29 08:06:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PSU](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Company] [varchar](50) NULL,
	[PSUFullModelName] [varchar](50) NULL,
	[PSFormat] [varchar](50) NULL,
	[MaxPower] [varchar](50) NULL,
	[Modular] [varchar](50) NULL,
	[Connectors] [varchar](50) NULL,
 CONSTRAINT [PK_PSU] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RAM]    Script Date: 2018-01-29 08:06:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RAM](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Company] [varchar](50) NULL,
	[RAMFamily1] [varchar](50) NULL,
	[RAMFamily2] [varchar](50) NULL,
	[RAMQuantity] [int] NULL,
	[RAMFullModelName] [varchar](50) NULL,
	[RAMCapacity] [varchar](50) NULL,
	[RAMFrequency] [int] NULL,
	[RAMDelay] [varchar](50) NULL,
	[RAMVoltage] [varchar](50) NULL,
	[RAMSetOrSingle] [varchar](50) NULL,
	[RAMSingleModuleCapacity] [int] NOT NULL,
 CONSTRAINT [PK_RAM] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Screen]    Script Date: 2018-01-29 08:06:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Screen](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Company] [varchar](50) NULL,
	[ScreenFullModelName] [varchar](50) NULL,
	[ScreenSize] [varchar](50) NULL,
	[ScreenUsage] [varchar](50) NULL,
	[MatrixType] [varchar](50) NULL,
	[Resolution] [varchar](50) NULL,
	[ScreenFormat] [varchar](50) NULL,
 CONSTRAINT [PK_Monitory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CPU] ON 

INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (1, N'AMD', N'AMD FX', N'FX-4300', N'AM3+', N'AMD FX-4300 3.80GHz 4MB BOX', 4, 4, 0, N'', N'DDR3', N'', 1866, 1600, 1333, 0, 0, 0, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (2, N'AMD', N'AMD FX', N'FX-4320', N'AM3+', N'AMD FX-4320 4.00GHz 4MB BOX', 4, 4, 0, N'', N'DDR3', N'', 1866, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (3, N'AMD', N'AMD FX', N'FX-6100', N'AM3+', N'AMD FX-6100 3.30GHz 6MB BOX', 6, 6, 0, N'', N'DDR3', N'', 1866, 1600, 1333, 0, 0, 0, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (4, N'AMD', N'AMD FX', N'FX-6300', N'AM3+', N'AMD FX-6300 3.50GHz 6MB BOX', 6, 6, 0, N'', N'DDR3', N'', 1866, 1600, 1333, 0, 0, 0, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (5, N'AMD', N'AMD FX', N'FX-6350', N'AM3+', N'AMD FX-6350 3.90GHz 8MB BOX', 6, 6, 0, N'', N'DDR3', N'', 1866, 1600, 1333, 0, 0, 0, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (6, N'AMD', N'AMD FX', N'FX-8300', N'AM3+', N'AMD FX-8300 3.30GHz 8MB BOX', 8, 8, 0, N'', N'DDR3', N'', 1866, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (7, N'AMD', N'AMD FX', N'FX-8320', N'AM3+', N'AMD FX-8320 3.50GHz 8MB BOX', 8, 8, 0, N'', N'DDR3', N'', 1866, 1600, 1333, 0, 0, 0, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (8, N'AMD', N'AMD FX', N'FX-8350', N'AM3+', N'AMD FX-8350 4.00GHz 8MB BOX', 8, 8, 0, N'', N'DDR3', N'', 1866, 1600, 1333, 0, 0, 0, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (9, N'AMD', N'AMD FX', N'FX-8370E', N'AM3+', N'AMD FX-8370E 3.30GHz 8MB BOX', 8, 8, 0, N'', N'DDR3', N'', 1866, 1600, 1333, 0, 0, 0, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (10, N'AMD', N'AMD A12', N'A12-9800E', N'AM4', N'AMD A12 9800E 3.10GHz 2MB BOX', 4, 8, 1, N'Radeon R7', N'DDR4', N'', 0, 0, 0, 0, 2400, 0, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (11, N'AMD', N'AMD A12', N'A12-9800', N'AM4', N'AMD A12-9800 3.80GHz 2MB BOX', 4, 4, 1, N'Radeon R7', N'DDR4', N'', 0, 0, 0, 0, 2400, 0, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (12, N'AMD', N'AMD A10', N'A10-7800', N'FM2+', N'AMD A10-7800 3.50GHz 4MB BOX', 4, 4, 1, N'Radeon R7', N'DDR3', N'', 2133, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (13, N'AMD', N'AMD A10', N'A10-7860K', N'FM2+', N'AMD A10-7860K 3.60GHz 4MB BOX', 4, 4, 1, N'Radeon R7', N'DDR3', N'', 2133, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (14, N'AMD', N'AMD A10', N'A10-7870K', N'FM2+', N'AMD A10-7870K 3.90GHz 4MB BOX', 4, 4, 1, N'Radeon R7', N'DDR3', N'', 2133, 2000, 1866, 1600, 0, 0, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (15, N'AMD', N'AMD A10', N'A10-7890K', N'FM2+', N'AMD A10-7890K 4.10GHz 4MB BOX', 4, 4, 1, N'Radeon R7', N'DDR3', N'', 2133, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (16, N'AMD', N'AMD A10', N'A10-9700', N'AM4', N'AMD A10-9700 3.50GHz 2MB BOX', 4, 6, 1, N'Radeon R7', N'DDR4', N'', 0, 0, 0, 0, 2400, 0, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (17, N'AMD', N'AMD A10', N'A10-9700E', N'AM4', N'AMD A10-9700E 3.00GHz 2MB BOX', 4, 6, 1, N'Radeon R7', N'DDR4', N'', 0, 0, 0, 0, 2400, 0, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (18, N'AMD', N'AMD A8', N'A8-7670K', N'FM2+', N'AMD A8-7670K 3.60GHz 4MB BOX', 4, 4, 1, N'Radeon R7', N'DDR3', N'', 2133, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (19, N'AMD', N'AMD A6', N'A6-6400K', N'FM2+', N'AMD A6-6400K 3.90GHz 1MB BOX', 2, 2, 1, N'Radeon HD 8470D', N'DDR3', N'', 1866, 1600, 1333, 0, 0, 0, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (20, N'AMD', N'AMD A6', N'A6-6420K', N'FM2', N'AMD A6-6420K 4.00GHz 1MB BOX', 2, 2, 1, N'Radeon HD 8470D', N'DDR3', N'', 1866, 1600, 1333, 0, 0, 0, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (21, N'AMD', N'AMD A6', N'A6-7470K', N'FM2+', N'AMD A6-7470K 3.70GHz 1MB BOX', 2, 2, 1, N'Radeon R5', N'DDR3', N'', 1866, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (22, N'AMD', N'AMD A6', N'A6-9500E', N'AM4', N'AMD A6-9500E 3.00GHz 1MB BOX', 2, 2, 1, N'Radeon R5', N'DDR4', N'', 0, 0, 0, 0, 2400, 0, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (23, N'AMD', N'AMD A4', N'A4-4020', N'FM2', N'AMD A4-4020 3.20GHz 1MB BOX', 2, 2, 1, N'Radeon HD 7480D', N'DDR3', N'', 1333, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (24, N'AMD', N'AMD Athlon X2', N'Athlon X2 370K', N'FM2', N'AMD ATHLON X2 370K 1MB BOX', 2, 2, 0, N'', N'DDR3', N'', 1600, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (25, N'AMD', N'AMD Athlon X4', N'Athlon X4 860K', N'FM2+', N'AMD ATHLON X4 860K 3.70GHz 4MB BOX', 4, 4, 0, N'', N'DDR3', N'', 2133, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (26, N'AMD', N'AMD Athlon X4', N'Athlon X4 870K', N'FM2+', N'AMD ATHLON X4 870K 3.90GHz 4MB BOX', 4, 4, 0, N'', N'DDR3', N'', 2133, 2000, 1866, 1600, 0, 0, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (27, N'AMD', N'AMD Athlon X4', N'Athlon X4 950', N'AM4', N'AMD ATHLON X4 950 3.80GHz 2MB BOX', 4, 4, 0, N'', N'DDR4', N'', 0, 0, 0, 0, 2400, 0, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (28, N'AMD', N'AMD Athlon X4', N'Athlon X4-880K', N'FM2+', N'AMD ATHLON X4-880K 4.00GHz 4MB BOX', 4, 4, 0, N'', N'DDR3', N'', 2133, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (29, N'AMD', N'AMD A6', N'A6-7400K', N'FM2+', N'AMD A6-7400K 3.50GHz 1MB BOX', 2, 2, 1, N'Radeon R5', N'DDR3', N'', 1866, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (30, N'AMD', N'AMD Richland', N'A4-6300', N'FM2', N'AMD A4-6300 3.70GHz 1MB BOX', 2, 2, 1, N'Radeon HD 8370D', N'DDR3', N'', 1600, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (31, N'AMD', N'AMD Richland', N'A4-6320', N'FM2', N'AMD A4-6320 3.80GHz 1MB BOX', 2, 2, 1, N'Radeon HD 8370D', N'DDR3', N'', 1600, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (32, N'AMD', N'AMD Richland', N'A4-7300', N'FM2', N'AMD A4-7300 3.80GHz 1MB BOX', 2, 2, 1, N'Radeon HD 8470D', N'DDR3', N'', 1600, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (33, N'AMD', N'AMD Richland', N'A8-7600', N'FM2+', N'AMD A8-7600 3.10GHz 4MB BOX', 4, 4, 1, N'Radeon R7', N'DDR3', N'', 2133, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (34, N'AMD', N'AMD Ryzen', N'Ryzen 3 1200', N'AM4', N'AMD Ryzen 3 1200 3.1GHz BOX', 4, 4, 0, N'', N'DDR4', N'', 0, 0, 0, 0, 2667, 0, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (35, N'AMD', N'AMD Ryzen', N'Ryzen 3 1300X', N'AM4', N'AMD Ryzen 3 1300X 3.5GHz BOX', 4, 4, 0, N'', N'DDR4', N'', 0, 0, 0, 0, 2667, 0, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (36, N'AMD', N'AMD Ryzen', N'Ryzen 5 1400', N'AM4', N'AMD Ryzen 5 1400 3.2GHz BOX', 4, 8, 0, N'', N'DDR4', N'', 0, 0, 0, 0, 2667, 0, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (37, N'AMD', N'AMD Ryzen', N'Ryzen 5 1500X', N'AM4', N'AMD Ryzen 5 1500X 3.5GHz BOX', 4, 8, 0, N'', N'DDR4', N'', 0, 0, 0, 0, 2667, 0, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (38, N'AMD', N'AMD Ryzen', N'Ryzen 5 1600', N'AM4', N'AMD Ryzen 5 1600 3.2GHz BOX', 6, 12, 0, N'', N'DDR4', N'', 0, 0, 0, 0, 2667, 0, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (39, N'AMD', N'AMD Ryzen', N'Ryzen 5 1600X', N'AM4', N'AMD Ryzen 5 1600X 3.6GHz BOX BW', 6, 12, 0, N'', N'DDR4', N'', 0, 0, 0, 0, 2667, 0, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (40, N'AMD', N'AMD Ryzen', N'Ryzen 7 1700', N'AM4', N'AMD Ryzen 7 1700 3GHz BOX', 8, 16, 0, N'', N'DDR4', N'', 2667, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (41, N'AMD', N'AMD Ryzen', N'Ryzen 7 1700X', N'AM4', N'AMD Ryzen 7 1700X 3.4GHz BOX BW', 8, 16, 0, N'', N'DDR4', N'', 0, 0, 0, 0, 2667, 0, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (42, N'AMD', N'AMD Ryzen', N'Ryzen 7 1800X', N'AM4', N'AMD Ryzen 7 1800X 3.6GHz BOX BW', 8, 16, 0, N'', N'DDR4', N'', 0, 0, 0, 0, 2667, 0, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (43, N'AMD', N'AMD Ryzen', N'Ryzen Threadripper 1900X', N'TR4', N'AMD Ryzen Threadripper 1900X BOX BW', 8, 16, 0, N'', N'DDR4', N'', 0, 0, 0, 0, 2667, 0, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (44, N'AMD', N'AMD Ryzen', N'Ryzen Threadripper 1920X', N'TR4', N'AMD Ryzen Threadripper 1920X BOX BW', 12, 24, 0, N'', N'DDR4', N'', 0, 0, 0, 0, 2667, 0, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (45, N'AMD', N'AMD Ryzen', N'Ryzen Threadripper 1950X', N'TR4', N'AMD Ryzen Threadripper 1950X BOX BW', 16, 32, 0, N'', N'DDR4', N'', 0, 0, 0, 0, 2667, 0, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (46, N'INTEL', N'Intel Core i9', N'i9-7900X', N'2066', N'Intel i9-7900X 3.30GHz 13.75MB BOX BW', 10, 20, 0, N'', N'DDR4', N'', 0, 0, 0, 0, 2666, 0, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (47, N'INTEL', N'Intel Core i9', N'i9-7920X', N'2066', N'Intel i9-7920X 2.90GHz 16.50MB BOX BW', 12, 24, 0, N'', N'DDR4', N'', 0, 0, 0, 0, 2666, 0, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (48, N'INTEL', N'Intel Core i9', N'i9-7940X', N'2066', N'Intel i9-7940X 3.10GHz 19.25MB BOX BW', 14, 28, 0, N'', N'DDR4', N'', 0, 0, 0, 0, 2666, 0, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (49, N'INTEL', N'Intel Core i9', N'i9-7960X', N'2066', N'Intel i9-7960X 2.80GHz 22MB BOX BW', 16, 32, 0, N'', N'DDR4', N'', 0, 0, 0, 0, 2666, 0, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (50, N'INTEL', N'Intel Core i9', N'i9-7980XE', N'2066', N'Intel i9-7980XE 2.60GHz 24.75MB BOX BW', 18, 36, 0, N'', N'DDR4', N'', 0, 0, 0, 0, 2666, 0, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (51, N'INTEL', N'Intel Core i7', N'i7-4770S', N'1150', N'Intel i7-4770S 3.10GHz 8MB BOX', 4, 8, 1, N'Intel HD Graphics 4600', N'DDR3', N'', 1600, 1333, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (52, N'INTEL', N'Intel Core i7', N'i7-5775C', N'1150', N'Intel i7-5775C 3.30GHz 6MB BOX', 4, 8, 1, N'Intel Iris Graphics 6200', N'DDR3', N'', 1600, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (53, N'INTEL', N'Intel Core i7', N'i7-6700K', N'1151', N'Intel i7-6700K 4.00GHz 8MB BOX BW', 4, 8, 1, N'Intel HD Graphics 530', N'DDR3', N'DDR4', 0, 1600, 0, 0, 2133, 0, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (54, N'INTEL', N'Intel Core i7', N'i7-7700', N'1151', N'Intel i7-7700 3.60GHz 8MB BOX', 4, 8, 1, N'Intel HD Graphics 630', N'DDR4', N'DDR3', 1600, 1333, 0, 0, 2400, 2133, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (55, N'INTEL', N'Intel Core i7', N'i7-7700K', N'1151', N'Intel i7-7700K 4.20GHz 8MB BOX BW', 4, 8, 1, N'	Intel HD Graphics 630', N'DDR4', N'DDR3', 1600, 1333, 0, 0, 2400, 2133, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (56, N'INTEL', N'Intel Core i7', N'i7-8700', N'1151', N'Intel i7-8700 3.20GHz 12MB BOX', 6, 12, 1, N'Intel UHD Graphics 630', N'DDR4', N'', 0, 0, 0, 0, 2666, 0, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (57, N'INTEL', N'Intel Core i7', N'i7-8700K', N'1151', N'Intel i7-8700K 3.70GHz 12MB', 6, 12, 1, N'Intel UHD Graphics 630', N'DDR4', N'', 0, 0, 0, 0, 2666, 0, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (58, N'INTEL', N'Intel Core i7', N'i7-4820K', N'2011', N'Intel i7-4820K 3.70GHz 10MB BOX BW', 4, 8, 0, N'', N'DDR3', N'', 1866, 1600, 1333, 0, 0, 0, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (59, N'INTEL', N'Intel Core i7', N'i7-4930K', N'2011', N'Intel i7-4930K 3.40GHz 12MB BOX BW', 6, 12, 0, N'', N'DDR3', N'', 1866, 1600, 1333, 0, 0, 0, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (60, N'INTEL', N'Intel Core i7', N'i7-5820K', N'2011-3', N'Intel i7-5820K 3.30GHz 15MB BOXX BW', 6, 12, 0, N'', N'DDR4', N'', 0, 0, 0, 0, 2133, 0, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (61, N'INTEL', N'Intel Core i7', N'i7-5930K', N'2011-3', N'Intel i7-5930K 3.50GHz 15MB BOX BW', 6, 12, 0, N'', N'DDR4', N'', 0, 0, 0, 0, 2133, 0, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (62, N'INTEL', N'Intel Core i7', N'i7-5960X', N'2011-3', N'Intel i7-5960X 3.00GHz 20MB BOX Extreme Edition BW', 8, 16, 0, N'', N'DDR4', N'', 0, 0, 0, 0, 2133, 0, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (63, N'INTEL', N'Intel Core i7', N'i7-6800K', N'2011-3', N'Intel i7-6800K 3.40GHz 15MB BOX BW', 6, 12, 0, N'', N'DDR4', N'', 0, 0, 0, 0, 2400, 2133, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (64, N'INTEL', N'Intel Core i7', N'i7-6850K', N'2011-3', N'Intel i7-6850K 3.60GHz 15MB BOX BW', 6, 12, 0, N'', N'DDR4', N'', 0, 0, 0, 0, 2400, 2133, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (65, N'INTEL', N'Intel Core i7', N'i7-6900K', N'2011-3', N'Intel i7-6900K 3.20GHz 20MB BOX BW', 8, 16, 0, N'', N'DDR4', N'', 0, 0, 0, 0, 2400, 2133, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (66, N'INTEL', N'Intel Core i7', N'i7-7740X', N'2066', N'Intel i7-7740X 4.30GHz 8MB BOX BW', 4, 8, 0, N'', N'DDR4', N'', 0, 0, 0, 0, 2666, 0, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (67, N'INTEL', N'Intel Core i7', N'i7-7800X', N'2066', N'Intel i7-7800X 3.50GHz 8MB BOX BW', 6, 12, 0, N'', N'DDR4', N'', 0, 0, 0, 0, 2400, 0, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (68, N'INTEL', N'Intel Core i7', N'i7-7820X', N'2066', N'Intel i7-7820X 3.6GHz 11MB BOX BW', 8, 16, 0, N'', N'DDR4', N'', 0, 0, 0, 0, 2666, 0, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (69, N'INTEL', N'Intel Core i5', N'i5-4430', N'1150', N'Intel i5-4430 3.00GHz 6MB BOX', 4, 4, 1, N'Intel HD Graphics 4600', N'DDR3', N'1600', 1333, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (70, N'INTEL', N'Intel Core i5', N'i5-4440', N'1150', N'Intel i5-4440 3.10GHz 6MB BOX', 4, 4, 1, N'Intel HD Graphics 4600', N'DDR3', N'1600', 1333, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (71, N'INTEL', N'Intel Core i5', N'i5-4460', N'1150', N'Intel i5-4460 3.20GHz 6MB BOX', 4, 4, 1, N'Intel HD Graphics 4600', N'DDR3', N'1600', 1333, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (72, N'INTEL', N'Intel Core i5', N'i5-4570', N'1150', N'Intel i5-4570 3.20GHz 6MB BOX', 4, 4, 1, N'Intel HD Graphics 4600', N'DDR3', N'1600', 1333, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (73, N'INTEL', N'Intel Core i5', N'i5-4590', N'1150', N'Intel i5-4590 3.30GHz 6MB BOX', 4, 4, 1, N'Intel HD Graphics 4600', N'DDR3', N'1600', 1333, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (74, N'INTEL', N'Intel Core i5', N'i5-4670K', N'1150', N'Intel i5-4670K 3.40GHz 6MB BOX', 4, 4, 1, N'Intel HD Graphics 4600', N'DDR3', N'1600', 1333, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (75, N'INTEL', N'Intel Core i5', N'i5-5675C', N'1150', N'Intel i5-5675C 3.10GHz 4MB BOX', 4, 4, 1, N'Intel Iris Graphics 6200', N'DDR3', N'1600', 1333, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (76, N'INTEL', N'Intel Core i5', N'i5-6400', N'1151', N'Intel i5-6400 2.70GHz 6MB BOX', 4, 4, 1, N'Intel HD Graphics 530', N'DDR3', N'DDR4', 1600, 0, 0, 0, 2133, 0, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (77, N'INTEL', N'Intel Core i5', N'i5-6402P', N'1151', N'Intel i5-6402P 2.80GHz 6MB BOX', 4, 4, 1, N'Intel HD Graphics 510', N'DDR3', N'DDR4', 1600, 1333, 0, 0, 2133, 1866, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (78, N'INTEL', N'Intel Core i5', N'i5-6500', N'1151', N'Intel i5-6500 3.20GHz 6MB BOX', 4, 4, 1, N'Intel HD Graphics 530', N'DDR3', N'DDR4', 1600, 0, 0, 0, 2133, 0, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (79, N'INTEL', N'Intel Core i5', N'i5-6600', N'1151', N'Intel i5-6600 3.30GHz 6MB BOX', 4, 4, 1, N'Intel HD Graphics 530', N'DDR3', N'DDR4', 1600, 0, 0, 0, 2133, 0, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (80, N'INTEL', N'Intel Core i5', N'i5-6600K', N'1151', N'Intel i5-6600K 3.50GHz 6MB BOX BW', 4, 4, 1, N'Intel HD Graphics 530', N'DDR3', N'DDR4', 1600, 0, 0, 0, 2133, 0, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (81, N'INTEL', N'Intel Core i5', N'i5-7400', N'1151', N'Intel i5-7400 3.00GHz 6MB BOX', 4, 4, 1, N'Intel HD Graphics 630', N'DDR3', N'DDR4', 1600, 1333, 0, 0, 2400, 2133, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (82, N'INTEL', N'Intel Core i5', N'i5-7500', N'1151', N'Intel i5-7500 3.40GHz 6MB BOX', 4, 4, 1, N'Intel HD Graphics 630', N'DDR3', N'DDR4', 1600, 1333, 0, 0, 2400, 2133, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (83, N'INTEL', N'Intel Core i5', N'i5-7600', N'1151', N'Intel i5-7600 3.50GHz 6MB BOX', 4, 4, 1, N'Intel HD Graphics 630', N'DDR3', N'DDR4', 1600, 1333, 0, 0, 2400, 2133, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (84, N'INTEL', N'Intel Core i5', N'i5-7600K', N'1151', N'Intel i5-7600K 3.80GHz 6MB BOX BW', 4, 4, 1, N'Intel HD Graphics 630', N'DDR3', N'DDR4', 1600, 1333, 0, 0, 2400, 2133, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (85, N'INTEL', N'Intel Core i5', N'i5-8400', N'1151', N'Intel i5-8400 2.80GHz 9MB BOX BW', 6, 6, 1, N'Intel UHD Graphics 630', N'DDR4', N'', 0, 0, 0, 0, 2666, 0, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (86, N'INTEL', N'Intel Core i5', N'i5-8600K', N'1151', N'Intel i5-8600K 3.60GHz 9MB BOX BW', 6, 6, 1, N'Intel UHD Graphics 630', N'DDR4', N'', 0, 0, 0, 0, 2666, 0, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (87, N'INTEL', N'Intel Core i5', N'i5-7640X', N'2066', N'Intel i5-7640X 4.00GHz 6MB BOX BW', 4, 4, 0, N'', N'DDR4', N'', 0, 0, 0, 0, 2666, 0, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (88, N'INTEL', N'Intel Core i3', N'i3-4150', N'1150', N'Intel i3-4150 3.50GHz 3MB BOX', 2, 4, 1, N'Intel HD Graphics 4400', N'DDR3', N'', 1600, 1333, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (89, N'INTEL', N'Intel Core i3', N'i3-4350', N'1150', N'Intel i3-4350 3.60GHz 4MB BOX', 2, 4, 1, N'Intel HD Graphics 4600', N'DDR3', N'', 1600, 1333, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (90, N'INTEL', N'Intel Core i3', N'i3-4370', N'1150', N'Intel i3-4370 3.80GHz 4MB BOX', 2, 4, 1, N'Intel HD Graphics 4600', N'DDR3', N'', 1600, 1333, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (91, N'INTEL', N'Intel Core i3', N'i3-6098P', N'1151', N'Intel i3-6098P 3.60GHz 3MB BOX', 2, 4, 1, N'Intel HD Graphics 510', N'DDR3', N'', 2133, 1866, 1600, 1333, 0, 0, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (92, N'INTEL', N'Intel Core i3', N'i3-6100X', N'1151', N'Intel i3-6100 3.70GHz 3MB BOX', 2, 4, 1, N'Intel HD Graphics 530', N'DDR3', N'DDR4', 1600, 1333, 0, 0, 2133, 1866, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (93, N'INTEL', N'Intel Core i3', N'i3-6100T', N'1151', N'Intel i3-6100T 3.20GHz 3MB BOX', 2, 4, 1, N'Intel HD Graphics 530', N'DDR3', N'DDR4', 1600, 1333, 0, 0, 2133, 1866, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (94, N'INTEL', N'Intel Core i3', N'i3-6300', N'1151', N'Intel i3-6300 3.80GHz 4MB BOX', 2, 4, 1, N'Intel HD Graphics 530', N'DDR3', N'DDR4', 1600, 1333, 0, 0, 2133, 1866, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (95, N'INTEL', N'Intel Core i3', N'i3-6320', N'1151', N'Intel i3-6320 3.90GHz 4MB BOX', 2, 4, 1, N'Intel HD Graphics 530', N'DDR3', N'DDR4', 1600, 1333, 0, 0, 2133, 1866, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (96, N'INTEL', N'Intel Core i3', N'i3-7100', N'1151', N'Intel i3-7100 3.90GHz 3MB BOX', 2, 4, 1, N'Intel HD Graphics 630', N'DDR3', N'DDR3', 1600, 1333, 0, 0, 2400, 2133, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (97, N'INTEL', N'Intel Core i3', N'i3-7300', N'1151', N'Intel i3-7300 4.00GHz 4MB BOX', 2, 4, 1, N'Intel HD Graphics 630', N'DDR3', N'DDR3', 1600, 1333, 0, 0, 2400, 2133, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (98, N'INTEL', N'Intel Core i3', N'i3-7320', N'1151', N'Intel i3-7320 4.10GHz 4MB BOX', 2, 4, 1, N'Intel HD Graphics 630', N'DDR3', N'DDR4', 1600, 1333, 0, 0, 2133, 0, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (99, N'INTEL', N'Intel Core i3', N'i3-7350K', N'1151', N'Intel i3-7350K 4.20GHz 4MB BOX BW', 2, 4, 1, N'Intel HD Graphics 630', N'DDR3', N'DDR3', 1600, 1333, 0, 0, 2400, 2133, 0, 0)
GO
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (100, N'INTEL', N'Intel Core i3', N'i3-8100', N'1151', N'Intel i3-8100 3.60GHz 6MB BOX', 4, 4, 1, N'Intel UHD Graphics 630', N'', N'DDR4', 0, 0, 0, 0, 2400, 0, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (101, N'INTEL', N'Intel Core i3', N'i3-8100', N'1151', N'Intel i3-8100 3.60GHz 6MB OEM BW', 4, 4, 1, N'Intel UHD Graphics 630', N'', N'DDR4', 0, 0, 0, 0, 2400, 0, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (102, N'INTEL', N'Intel Core i3', N'i3-8350K', N'1151', N'Intel i3-8350K 4.00GHz 8MB BOX BW', 4, 4, 1, N'Intel UHD Graphics 630', N'', N'DDR4', 0, 0, 0, 0, 2400, 0, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (103, N'INTEL', N'Intel Celeron', N'G3900', N'1151', N'Intel Celeron G3900 2.80GHz 2MB BOX', 2, 2, 1, N'Intel HD Graphics 510', N'DDR3', N'DDR4', 1600, 1333, 0, 0, 2133, 1866, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (104, N'INTEL', N'Intel Celeron', N'G3930', N'1151', N'Intel Celeron G3930 2.90GHz 2MB BOX', 2, 2, 1, N'Intel HD Graphics 610', N'DDR3', N'DDR4', 1600, 1333, 0, 0, 2400, 2133, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (105, N'INTEL', N'Intel Pentium', N'G3258', N'1151', N'Intel Pentium G3258 3.20GHz 3MB BOX', 2, 2, 1, N'Intel HD Graphics', N'DDR3', N'', 1333, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (106, N'INTEL', N'Intel Pentium', N'G4400', N'1151', N'Intel Pentium G4400 3.30GHz 3MB BOX', 2, 2, 1, N'Intel HD Graphics 510', N'DDR3', N'DDR4', 1600, 1333, 0, 0, 2133, 1866, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (107, N'INTEL', N'Intel Pentium', N'G4500', N'1151', N'Intel Pentium G4500 3.50GHz 3MB BOX', 2, 2, 1, N'Intel HD Graphics 530', N'DDR3', N'DDR4', 1600, 1333, 0, 0, 2133, 1866, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (108, N'INTEL', N'Intel Pentium', N'G4520', N'1151', N'Intel Pentium G4520 3.60GHz 3MB BOX', 2, 2, 1, N'Intel HD Graphics 530', N'DDR3', N'DDR4', 1600, 1333, 0, 0, 2133, 1866, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (109, N'INTEL', N'Intel Pentium', N'G4560', N'1151', N'Intel Pentium G4560 3.50GHz 3MB BOX', 2, 4, 1, N'Intel HD Graphics 610', N'DDR3', N'DDR4', 1600, 1333, 0, 0, 2400, 2133, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (110, N'INTEL', N'Intel Pentium', N'G4600', N'1151', N'Intel Pentium G4600 3.60GHz 3MB BOX', 2, 4, 1, N'Intel HD Graphics 630', N'DDR3', N'DDR4', 1600, 1333, 0, 0, 2400, 2133, 0, 0)
INSERT [dbo].[CPU] ([ID], [Company], [PFamily], [PModel], [Socket], [PFullModelName], [CNumber], [TNumber], [GIntegrated], [GName], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (111, N'INTEL', N'Intel Pentium', N'G4620', N'1151', N'Intel Pentium G4620 3.70GHz 3MB BOX', 2, 4, 1, N'Intel HD Graphics 630', N'DDR3', N'DDR4', 1600, 1333, 0, 0, 2400, 2133, 0, 0)
SET IDENTITY_INSERT [dbo].[CPU] OFF
SET IDENTITY_INSERT [dbo].[CPUCOOLING] ON 

INSERT [dbo].[CPUCOOLING] ([ID], [Company], [COOLINGFullModelName], [Compatibility]) VALUES (1, N'', N'', N'')
SET IDENTITY_INSERT [dbo].[CPUCOOLING] OFF
SET IDENTITY_INSERT [dbo].[GPU] ON 

INSERT [dbo].[GPU] ([ID], [Company], [GPUFamily], [GPUName], [GPUFullModelName], [VRAMCapacity], [RAMType], [MemoryBus], [MBConnection], [CoolingType]) VALUES (1, N'', N'', N'', N'', N'', N'', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[GPU] OFF
SET IDENTITY_INSERT [dbo].[HDDSSD] ON 

INSERT [dbo].[HDDSSD] ([ID], [Company], [DriveFullModelName], [DriveType], [DriveCapacity], [DriveInterface]) VALUES (1, N'', N'', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[HDDSSD] OFF
SET IDENTITY_INSERT [dbo].[Keyboard] ON 

INSERT [dbo].[Keyboard] ([ID], [Company], [KeyboardFullModelName], [KeyboardConnection], [KeyboardInterface]) VALUES (1, N'', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[Keyboard] OFF
SET IDENTITY_INSERT [dbo].[MOTHERBOARDS] ON 

INSERT [dbo].[MOTHERBOARDS] ([ID], [Company], [PFamily1], [PFamily2], [PFamily3], [PFamily4], [PFamily5], [MModel], [PSocket], [MFullModelName], [MFormat], [MChipset], [DDRSocketQ], [DDRSocketTYPE], [MIConnectors], [MEConnectors], [GraphicsInCPUs], [IntegratedGPU], [ManyGPUs], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (1, N'ASUS', N'Intel Core i7', N'Intel Core i5', N'Intel Core i3', N'Intel Celeron', N'Intel Pentium', N'B85M-G', N'1150', N'ASUS B85M-G (PCI-E DDR3)', N'mATX', N'Intel B85', 4, N'DIMM', N'SATA II (3 Gb/s) - 2 szt.
SATA III (6 Gb/s) - 4 szt.
PCIe 3.0 x16 - 1 szt.
PCIe 2.0 x1 - 2 szt.
USB 3.1 Gen. 1 (USB 3.0) - 2 szt.
USB 2.0 - 4 szt.', N'DVI-D - 1 szt.
VGA (D-Sub) - 1 szt.
HDMI - 1 szt.
RJ45 (LAN) - 1 szt.
USB 3.1 Gen. 1 (USB 3.0) - 2 szt.
USB 2.0 - 4 szt.
PS/2 - 2 szt.
Audio jack - 3 szt.', 1, 0, N'', N'DDR3', N'', 1600, 1333, 1066, 0, 0, 0, 0, 0)
INSERT [dbo].[MOTHERBOARDS] ([ID], [Company], [PFamily1], [PFamily2], [PFamily3], [PFamily4], [PFamily5], [MModel], [PSocket], [MFullModelName], [MFormat], [MChipset], [DDRSocketQ], [DDRSocketTYPE], [MIConnectors], [MEConnectors], [GraphicsInCPUs], [IntegratedGPU], [ManyGPUs], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (2, N'ASUS', N'Intel Core i7', N'Intel Core i5', N'Intel Core i3', N'Intel Celeron', N'Intel Pentium', N'H81M-K', N'1150', N'ASUS H81M-K (PCI-E DDR3)', N'uATX', N'Intel H81', 2, N'DIMM', N'SATA II (3 Gb/s) - 2 szt.
SATA III (6 Gb/s) - 2 szt.
PCIe 3.0 x16 - 1 szt.
PCIe 2.0 x1 - 2 szt.
USB 2.0 - 4 szt.', N'DVI-D - 1 szt.
VGA (D-Sub) - 1 szt.
RJ45 (LAN) - 1 szt.
USB 3.1 Gen. 1 (USB 3.0) - 2 szt.
USB 2.0 - 2 szt.
PS/2 - 2 szt.
Audio jack - 3 szt.', 1, 0, N'', N'DDR3', N'', 1600, 1333, 1066, 0, 0, 0, 0, 0)
INSERT [dbo].[MOTHERBOARDS] ([ID], [Company], [PFamily1], [PFamily2], [PFamily3], [PFamily4], [PFamily5], [MModel], [PSocket], [MFullModelName], [MFormat], [MChipset], [DDRSocketQ], [DDRSocketTYPE], [MIConnectors], [MEConnectors], [GraphicsInCPUs], [IntegratedGPU], [ManyGPUs], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (3, N'ASUS', N'Intel Core i7', N'Intel Core i5', N'Intel Core i3', N'Intel Celeron', N'Intel Pentium', N'H81M-P', N'1150', N'ASUS H81M-P PLUS (H81 PCI-E DDR3)', N'uATX', N'Intel H81', 2, N'DIMM', N'SATA II (3 Gb/s) - 2 szt.
SATA III (6 Gb/s) - 2 szt.
PCIe 2.0 x16 - 1 szt.
PCIe 2.0 x1 - 2 szt.
USB 3.1 Gen. 1 (USB 3.0) - 2 szt.
USB 2.0 - 4 szt.
Front Panel Audio', N'DVI-D - 1 szt.
VGA (D-Sub) - 1 szt.
HDMI - 1 szt.
RJ45 (LAN) - 1 szt.
USB 3.1 Gen. 1 (USB 3.0) - 2 szt.
USB 2.0 - 2 szt.
PS/2 - 2 szt.
Audio jack - 3 szt.', 1, 0, N'', N'DDR3', N'', 1600, 1333, 1066, 0, 0, 0, 0, 0)
INSERT [dbo].[MOTHERBOARDS] ([ID], [Company], [PFamily1], [PFamily2], [PFamily3], [PFamily4], [PFamily5], [MModel], [PSocket], [MFullModelName], [MFormat], [MChipset], [DDRSocketQ], [DDRSocketTYPE], [MIConnectors], [MEConnectors], [GraphicsInCPUs], [IntegratedGPU], [ManyGPUs], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (4, N'ASUS', N'Intel Core i7', N'Intel Core i5', N'Intel Core i3', N'Intel Celeron', N'Intel Pentium', N'B85M-G', N'1150', N'ASUS B85M-G PLUS/USB 3.1 (B85 PCI-E DDR3)', N'mATX', N'Intel B85', 4, N'DIMM', N'SATA II (3 Gb/s) - 2 szt.
SATA III (6 Gb/s) - 4 szt.
PCIe 3.0 x16 - 1 szt.
PCIe 2.0 x1 - 2 szt.
USB 3.1 Gen. 1 (USB 3.0) - 1 szt.
USB 2.0 - 2 szt.', N'DVI-D - 1 szt.
VGA (D-Sub) - 1 szt.
HDMI - 1 szt.
RJ45 (LAN) - 1 szt.
USB Type-C - 1 szt.
USB 3.1 Gen. 1 (USB 3.0) - 2 szt.
USB 2.0 - 2 szt.
PS/2 - 2 szt.
Audio jack - 3 szt.', 1, 0, N'', N'DDR3', N'', 1600, 1333, 1066, 0, 0, 0, 0, 0)
INSERT [dbo].[MOTHERBOARDS] ([ID], [Company], [PFamily1], [PFamily2], [PFamily3], [PFamily4], [PFamily5], [MModel], [PSocket], [MFullModelName], [MFormat], [MChipset], [DDRSocketQ], [DDRSocketTYPE], [MIConnectors], [MEConnectors], [GraphicsInCPUs], [IntegratedGPU], [ManyGPUs], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (5, N'ASUS', N'Intel Core i7', N'Intel Core i5', N'Intel Core i3', N'Intel Celeron', N'Intel Pentium', N'H81M-D', N'1150', N'ASUS H81M-D (H81 PCI-E DDR3)', N'uATX', N'Intel H81', 2, N'DIMM', N'SATA II (3 Gb/s) - 2 szt.
SATA III (6 Gb/s) - 2 szt.
PCIe 2.0 x16 - 1 szt.
PCIe 2.0 x1 - 2 szt.
USB 2.0 - 4 szt.', N'DVI-D - 1 szt.
VGA (D-Sub) - 1 szt.
RJ45 (LAN) - 1 szt.
USB 3.1 Gen. 1 (USB 3.0) - 2 szt.
USB 2.0 - 2 szt.
PS/2 - 2 szt.
Audio jack - 3 szt.
LPT - 1 szt.', 1, 0, N'', N'DDR3', N'', 1600, 1333, 1066, 0, 0, 0, 0, 0)
INSERT [dbo].[MOTHERBOARDS] ([ID], [Company], [PFamily1], [PFamily2], [PFamily3], [PFamily4], [PFamily5], [MModel], [PSocket], [MFullModelName], [MFormat], [MChipset], [DDRSocketQ], [DDRSocketTYPE], [MIConnectors], [MEConnectors], [GraphicsInCPUs], [IntegratedGPU], [ManyGPUs], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (6, N'ASUS', N'Intel Core i7', N'Intel Core i5', N'Intel Core i3', N'Intel Celeron', N'Intel Pentium', N'B85M-E', N'1150', N'ASUS B85M-E (2xPCI-E DDR3)', N'mATX', N'Intel B85', 4, N'DIMM', N'SATA II (3 Gb/s) - 2 szt.
SATA III (6 Gb/s) - 4 szt.
PCIe 3.0 x16 - 1 szt.
PCIe 2.0 x16 - 1 szt.
PCIe 2.0 x1 - 1 szt.
PCI - 1 szt.
USB 3.1 Gen. 1 (USB 3.0) - 2 szt.
USB 2.0 - 4 szt.', N'DVI-D - 1 szt.
VGA (D-Sub) - 1 szt.
HDMI - 1 szt.
DisplayPort - 1 szt.
RJ45 (LAN) - 1 szt.
USB 3.1 Gen. 1 (USB 3.0) - 2 szt.
USB 2.0 - 4 szt.
PS/2 - 2 szt.
Audio jack - 3 szt.', 1, 0, N'AMD CrossFireX', N'DDR3', N'', 1600, 1333, 1066, 0, 0, 0, 0, 0)
INSERT [dbo].[MOTHERBOARDS] ([ID], [Company], [PFamily1], [PFamily2], [PFamily3], [PFamily4], [PFamily5], [MModel], [PSocket], [MFullModelName], [MFormat], [MChipset], [DDRSocketQ], [DDRSocketTYPE], [MIConnectors], [MEConnectors], [GraphicsInCPUs], [IntegratedGPU], [ManyGPUs], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (7, N'ASUS', N'Intel Core i7', N'Intel Core i5', N'Intel Core i3', N'Intel Celeron', N'Intel Pentium', N'B85M-K', N'1150', N'ASUS B85M-K (PCI-E DDR3)', N'uATX', N'Intel B85', 2, N'DIMM', N'SATA II (3 Gb/s) - 2 szt.
SATA III (6 Gb/s) - 4 szt.
PCIe 3.0 x16 - 1 szt.
PCIe 2.0 x1 - 2 szt.
USB 3.1 Gen. 1 (USB 3.0) - 1 szt.
USB 2.0 - 2 szt.
Złącze wyjścia S/PDIF - 1 szt.', N'DVI-D - 1 szt.
VGA (D-Sub) - 1 szt.
RJ45 (LAN) - 1 szt.
USB 3.1 Gen. 1 (USB 3.0) - 2 szt.
USB 2.0 - 2 szt.
PS/2 - 2 szt.
Audio jack - 3 szt.', 1, 1, N'', N'DDR3', N'', 1600, 1333, 1066, 0, 0, 0, 0, 0)
INSERT [dbo].[MOTHERBOARDS] ([ID], [Company], [PFamily1], [PFamily2], [PFamily3], [PFamily4], [PFamily5], [MModel], [PSocket], [MFullModelName], [MFormat], [MChipset], [DDRSocketQ], [DDRSocketTYPE], [MIConnectors], [MEConnectors], [GraphicsInCPUs], [IntegratedGPU], [ManyGPUs], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (8, N'ASUS', N'Intel Core i7', N'Intel Core i5', N'Intel Core i3', N'Intel Celeron', N'Intel Pentium', N'H81M-C', N'1150', N'ASUS H81M-C (H81 PCI-E DDR3)', N'mATX', N'Intel H81', 2, N'DIMM', N'SATA II (3 Gb/s) - 2 szt.
SATA III (6 Gb/s) - 2 szt.
PCIe 2.0 x16 - 1 szt.
PCIe 2.0 x1 - 2 szt.
PCI - 1 szt.
USB 2.0 - 4 szt.', N'DVI-D - 1 szt.
VGA (D-Sub) - 1 szt.
RJ45 (LAN) - 1 szt.
USB 3.1 Gen. 1 (USB 3.0) - 2 szt.
USB 2.0 - 4 szt.
PS/2 - 2 szt.
Audio jack - 3 szt.
LPT - 1 szt.', 1, 0, N'', N'DDR3', N'', 1600, 1333, 1066, 0, 0, 0, 0, 0)
INSERT [dbo].[MOTHERBOARDS] ([ID], [Company], [PFamily1], [PFamily2], [PFamily3], [PFamily4], [PFamily5], [MModel], [PSocket], [MFullModelName], [MFormat], [MChipset], [DDRSocketQ], [DDRSocketTYPE], [MIConnectors], [MEConnectors], [GraphicsInCPUs], [IntegratedGPU], [ManyGPUs], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (9, N'GIGABYTE', N'Intel Core i7', N'Intel Core i5', N'Intel Core i3', N'Intel Celeron', N'Intel Pentium', N'GA-H81M-S2V', N'1150', N'Gigabyte GA-H81M-S2V (PCI-E DDR3)', N'uATX', N'Intel H81', 2, N'DIMM', N'SATA II (3 Gb/s) - 2 szt.
SATA III (6 Gb/s) - 2 szt.
PCIe 2.0 x16 - 1 szt.
PCIe 2.0 x1 - 1 szt.
USB 2.0 - 2 szt.', N'DVI-D - 1 szt.
VGA (D-Sub) - 1 szt.
RJ45 (LAN) - 1 szt.
USB 3.1 Gen. 1 (USB 3.0) - 2 szt.
USB 2.0 - 2 szt.
PS/2 - 2 szt.
Audio jack - 3 szt.', 1, 0, N'', N'DDR3', N'', 1600, 1333, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[MOTHERBOARDS] ([ID], [Company], [PFamily1], [PFamily2], [PFamily3], [PFamily4], [PFamily5], [MModel], [PSocket], [MFullModelName], [MFormat], [MChipset], [DDRSocketQ], [DDRSocketTYPE], [MIConnectors], [MEConnectors], [GraphicsInCPUs], [IntegratedGPU], [ManyGPUs], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (10, N'GIGABYTE', N'Intel Core i7', N'Intel Core i5', N'Intel Core i3', N'Intel Celeron', N'Intel Pentium', N'GA-H81M-S2PV', N'1150', N'Gigabyte GA-H81M-S2PV (H81 PCI-E DDR3)', N'uATX', N'Intel H81', 2, N'DIMM', N'SATA II (3 Gb/s) - 2 szt.
SATA III (6 Gb/s) - 2 szt.
PCIe 2.0 x16 - 1 szt.
PCIe 2.0 x1 - 1 szt.
PCI - 2 szt.
USB 2.0 - 2 szt.', N'DVI-D - 1 szt.
VGA (D-Sub) - 1 szt.
RJ45 (LAN) - 1 szt.
USB 3.1 Gen. 1 (USB 3.0) - 2 szt.
USB 2.0 - 2 szt.
PS/2 - 2 szt.
Audio jack - 3 szt.
RS-232 - 1 szt.', 1, 0, N'', N'DDR3', N'', 1600, 1333, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[MOTHERBOARDS] ([ID], [Company], [PFamily1], [PFamily2], [PFamily3], [PFamily4], [PFamily5], [MModel], [PSocket], [MFullModelName], [MFormat], [MChipset], [DDRSocketQ], [DDRSocketTYPE], [MIConnectors], [MEConnectors], [GraphicsInCPUs], [IntegratedGPU], [ManyGPUs], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (11, N'MSI', N'Intel Core i7', N'Intel Core i5', N'Intel Core i3', N'Intel Celeron', N'Intel Pentium', N'H81M-P33', N'1150', N'MSI H81M-P33 (PCI-E DDR3)', N'mATX', N'Intel H81', 2, N'DIMM', N'SATA II (3 Gb/s) - 2 szt.
SATA III (6 Gb/s) - 2 szt.
PCIe 2.0 x16 - 1 szt.
PCIe 2.0 x1 - 1 szt.
USB 2.0 - 4 szt.', N'DVI-D - 1 szt.
VGA (D-Sub) - 1 szt.
RJ45 (LAN) - 1 szt.
USB 3.1 Gen. 1 (USB 3.0) - 2 szt.
USB 2.0 - 4 szt.
PS/2 - 2 szt.
Audio jack - 3 szt.', 1, 0, N'', N'DDR3', N'', 1600, 1333, 1066, 0, 0, 0, 0, 0)
INSERT [dbo].[MOTHERBOARDS] ([ID], [Company], [PFamily1], [PFamily2], [PFamily3], [PFamily4], [PFamily5], [MModel], [PSocket], [MFullModelName], [MFormat], [MChipset], [DDRSocketQ], [DDRSocketTYPE], [MIConnectors], [MEConnectors], [GraphicsInCPUs], [IntegratedGPU], [ManyGPUs], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (12, N'MSI', N'Intel Core i7', N'Intel Core i5', N'Intel Core i3', N'Intel Celeron', N'Intel Pentium', N'H81M-P32L', N'1150', N'MSI H81M-P32L (H81 PCI-E DDR3)', N'mATX', N'Intel H81', 2, N'DIMM', N'SATA II (3 Gb/s) - 2 szt.
SATA III (6 Gb/s) - 2 szt.
PCIe 2.0 x16 - 1 szt.
PCIe 2.0 x1 - 1 szt.
PCI - 2 szt.
USB 2.0 - 2 szt.', N'VGA (D-Sub) - 1 szt.
RJ45 (LAN) - 1 szt.
USB 3.1 Gen. 1 (USB 3.0) - 2 szt.
USB 2.0 - 2 szt.
PS/2 - 2 szt.
Audio jack - 3 szt.
RS-232 - 1 szt.
LPT - 1 szt.', 1, 0, N'', N'DDR3', N'', 1600, 1333, 1066, 0, 0, 0, 0, 0)
INSERT [dbo].[MOTHERBOARDS] ([ID], [Company], [PFamily1], [PFamily2], [PFamily3], [PFamily4], [PFamily5], [MModel], [PSocket], [MFullModelName], [MFormat], [MChipset], [DDRSocketQ], [DDRSocketTYPE], [MIConnectors], [MEConnectors], [GraphicsInCPUs], [IntegratedGPU], [ManyGPUs], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (13, N'MSI', N'Intel Core i7', N'Intel Core i5', N'Intel Core i3', N'Intel Celeron', N'Intel Pentium', N'H81I', N'1150', N'MSI H81I (PCI-E DDR3)', N'mITX', N'Intel H81', 2, N'DIMM', N'SATA II (3 Gb/s) - 2 szt.
SATA III (6 Gb/s) - 2 szt.
PCIe 2.0 x16 - 1 szt.
USB 3.1 Gen. 1 (USB 3.0) - 2 szt.
USB 2.0 - 4 szt.', N'DVI-D - 1 szt.
VGA (D-Sub) - 1 szt.
HDMI - 1 szt.
RJ45 (LAN) - 1 szt.
USB 3.1 Gen. 1 (USB 3.0) - 2 szt.
USB 2.0 - 2 szt.
PS/2 klawiatura/mysz - 1 szt.
Audio jack - 3 szt.
S/PDIF - 1 szt.', 1, 0, N'', N'DDR3', N'', 1600, 1333, 1066, 0, 0, 0, 0, 0)
INSERT [dbo].[MOTHERBOARDS] ([ID], [Company], [PFamily1], [PFamily2], [PFamily3], [PFamily4], [PFamily5], [MModel], [PSocket], [MFullModelName], [MFormat], [MChipset], [DDRSocketQ], [DDRSocketTYPE], [MIConnectors], [MEConnectors], [GraphicsInCPUs], [IntegratedGPU], [ManyGPUs], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (14, N'MSI', N'Intel Core i7', N'Intel Core i5', N'Intel Core i3', N'Intel Celeron', N'Intel Pentium', N'H81M-E33', N'1150', N'MSI H81M-E33 (H81 PCI-E DDR3)', N'mATX', N'Intel H81', 2, N'DIMM', N'SATA II (3 Gb/s) - 2 szt.
SATA III (6 Gb/s) - 2 szt.
PCIe 2.0 x16 - 1 szt.
PCIe 2.0 x1 - 1 szt.
USB 2.0 - 4 szt.', N'VGA (D-Sub) - 1 szt.
HDMI - 1 szt.
RJ45 (LAN) - 1 szt.
USB 3.1 Gen. 1 (USB 3.0) - 2 szt.
USB 2.0 - 4 szt.
PS/2 - 2 szt.
Audio jack - 1 szt.', 1, 0, N'', N'DDR3', N'', 1600, 1333, 1066, 0, 0, 0, 0, 0)
INSERT [dbo].[MOTHERBOARDS] ([ID], [Company], [PFamily1], [PFamily2], [PFamily3], [PFamily4], [PFamily5], [MModel], [PSocket], [MFullModelName], [MFormat], [MChipset], [DDRSocketQ], [DDRSocketTYPE], [MIConnectors], [MEConnectors], [GraphicsInCPUs], [IntegratedGPU], [ManyGPUs], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (15, N'ASUS', N'Intel Core i7', N'Intel Core i5', N'Intel Core i3', N'Intel Celeron', N'Intel Pentium', N'H110M-D', N'1151', N'ASUS H110M-D (PCI-E DDR4)', N'mATX', N'Intel H110', 2, N'DIMM', N'SATA III (6 Gb/s) - 4 szt.
PCIe 3.0/2.0 x16 - 1 szt.
PCIe 2.0 x1 - 2 szt.
USB 3.1 Gen. 1 (USB 3.0) - 1 szt.
USB 2.0 - 2 szt.
Złącze wyjścia S/PDIF - 1 szt.
Front Panel Audio', N'VGA (D-Sub) - 1 szt.
HDMI - 1 szt.
RJ45 (LAN) - 1 szt.
USB 3.1 Gen. 1 (USB 3.0) - 2 szt.
USB 2.0 - 2 szt.
PS/2 klawiatura/mysz - 1 szt.
Audio jack - 3 szt.
LPT - 1 szt.
COM - 1 szt.', 1, 0, N'', N'DDR4', N'', 0, 0, 0, 0, 2133, 0, 0, 0)
INSERT [dbo].[MOTHERBOARDS] ([ID], [Company], [PFamily1], [PFamily2], [PFamily3], [PFamily4], [PFamily5], [MModel], [PSocket], [MFullModelName], [MFormat], [MChipset], [DDRSocketQ], [DDRSocketTYPE], [MIConnectors], [MEConnectors], [GraphicsInCPUs], [IntegratedGPU], [ManyGPUs], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (16, N'ASUS', N'Intel Core i7', N'Intel Core i5', N'Intel Core i3', N'Intel Celeron', N'Intel Pentium', N'H110M-K', N'1151', N'ASUS H110M-K (PCI-E DDR4)', N'mATX', N'Intel H110', 2, N'DIMM', N'SATA III (6 Gb/s) - 4 szt.
PCIe 3.0 x16 - 1 szt.
PCIe 2.0 x1 - 2 szt.
USB 3.1 Gen. 1 (USB 3.0) - 1 szt.
USB 2.0 - 1 szt.', N'DVI-I - 1 szt.
VGA (D-Sub) - 1 szt.
RJ45 (LAN) - 1 szt.
USB 3.1 Gen. 1 (USB 3.0) - 2 szt.
USB 2.0 - 4 szt.
PS/2 - 2 szt.
Audio jack - 3 szt.', 1, 0, N'', N'DDR4', N'', 0, 0, 0, 0, 2133, 0, 0, 0)
INSERT [dbo].[MOTHERBOARDS] ([ID], [Company], [PFamily1], [PFamily2], [PFamily3], [PFamily4], [PFamily5], [MModel], [PSocket], [MFullModelName], [MFormat], [MChipset], [DDRSocketQ], [DDRSocketTYPE], [MIConnectors], [MEConnectors], [GraphicsInCPUs], [IntegratedGPU], [ManyGPUs], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (17, N'ASUS', N'Intel Core i7', N'Intel Core i5', N'Intel Core i3', N'Intel Celeron', N'Intel Pentium', N'H110M-R/C/SI', N'1151', N'ASUS H110M-R/C/SI (H110 PCI-E DDR4)', N'uATX', N'Intel H110', 2, N'DIMM', N'SATA III (6 Gb/s) - 4 szt.
PCIe 3.0/2.0 x16 - 1 szt.
PCIe 2.0 x1 - 2 szt.
USB 3.1 Gen. 1 (USB 3.0) - 1 szt.
USB 2.0 - 1 szt.
Złącze COM - 1 szt.
Złącze wyjścia S/PDIF - 1 szt.
Front Panel Audio', N'DVI-D - 1 szt.
VGA (D-Sub) - 1 szt.
HDMI - 1 szt.
RJ45 (LAN) - 1 szt.
USB 3.1 Gen. 1 (USB 3.0) - 2 szt.
USB 2.0 - 4 szt.
PS/2 - 2 szt.
Audio jack - 3 szt.', 1, 0, N'', N'DDR4', N'', 0, 0, 0, 0, 2133, 0, 0, 0)
INSERT [dbo].[MOTHERBOARDS] ([ID], [Company], [PFamily1], [PFamily2], [PFamily3], [PFamily4], [PFamily5], [MModel], [PSocket], [MFullModelName], [MFormat], [MChipset], [DDRSocketQ], [DDRSocketTYPE], [MIConnectors], [MEConnectors], [GraphicsInCPUs], [IntegratedGPU], [ManyGPUs], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (18, N'ASUS', N'Intel Core i7', N'Intel Core i5', N'Intel Core i3', N'Intel Celeron', N'Intel Pentium', N'H110M-A/M.2', N'1151', N'ASUS H110M-A/M.2 (H110 PCI-E DDR4)', N'mATX', N'Intel H110', 2, N'DIMM', N'SATA III (6 Gb/s) - 4 szt.
M.2 - 1 szt.
PCIe 3.0/2.0 x16 - 1 szt.
PCIe 2.0 x1 - 2 szt.
USB 3.1 Gen. 1 (USB 3.0) - 1 szt.
USB 2.0 - 1 szt.
Złącze COM - 1 szt.
Złącze wyjścia S/PDIF - 1 szt.
Front Panel Audio', N'DVI-D - 1 szt.
VGA (D-Sub) - 1 szt.
HDMI - 1 szt.
RJ45 (LAN) - 1 szt.
USB 3.1 Gen. 1 (USB 3.0) - 2 szt.
USB 2.0 - 4 szt.
PS/2 - 2 szt.
Audio jack - 3 szt.', 1, 0, N'', N'DDR4', N'', 0, 0, 0, 0, 2133, 0, 0, 0)
INSERT [dbo].[MOTHERBOARDS] ([ID], [Company], [PFamily1], [PFamily2], [PFamily3], [PFamily4], [PFamily5], [MModel], [PSocket], [MFullModelName], [MFormat], [MChipset], [DDRSocketQ], [DDRSocketTYPE], [MIConnectors], [MEConnectors], [GraphicsInCPUs], [IntegratedGPU], [ManyGPUs], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (19, N'ASUS', N'Intel Core i7', N'Intel Core i5', N'Intel Core i3', N'Intel Celeron', N'Intel Pentium', N'H110M-C', N'1151', N'ASUS H110M-C (PCI-E DDR4)', N'mATX', N'Intel H110', 2, N'DIMM', N'SATA III (6 Gb/s) - 4 szt.
PCIe 3.0 x16 - 1 szt.
PCIe 2.0 x1 - 1 szt.
PCI - 1 szt.
USB 3.1 Gen. 1 (USB 3.0) - 1 szt.
USB 2.0 - 1 szt.', N'DVI-I - 1 szt.
VGA (D-Sub) - 1 szt.
RJ45 (LAN) - 1 szt.
USB 3.1 Gen. 1 (USB 3.0) - 2 szt.
USB 2.0 - 4 szt.
PS/2 - 2 szt.
Audio jack - 3 szt.
RS-232 - 1 szt.', 1, 0, N'', N'DDR4', N'', 0, 0, 0, 0, 2133, 0, 0, 0)
INSERT [dbo].[MOTHERBOARDS] ([ID], [Company], [PFamily1], [PFamily2], [PFamily3], [PFamily4], [PFamily5], [MModel], [PSocket], [MFullModelName], [MFormat], [MChipset], [DDRSocketQ], [DDRSocketTYPE], [MIConnectors], [MEConnectors], [GraphicsInCPUs], [IntegratedGPU], [ManyGPUs], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (20, N'ASUS', N'Intel Core i7', N'Intel Core i5', N'Intel Core i3', N'Intel Celeron', N'Intel Pentium', N'B150M-K', N'1151', N'ASUS B150M-K (B150 PCI-E DDR4)', N'mATX', N'Intel B150', 2, N'DIMM', N'SATA III (6 Gb/s) - 6 szt.
PCIe 3.0/2.0 x16 - 1 szt.
PCIe 3.0/2.0 x1 - 2 szt.
USB 3.1 Gen. 1 (USB 3.0) - 1 szt.
USB 2.0 - 2 szt.
Złącze COM - 1 szt.
Front Panel Audio', N'DVI-D - 1 szt.
VGA (D-Sub) - 1 szt.
RJ45 (LAN) - 1 szt.
USB 3.1 Gen. 1 (USB 3.0) - 4 szt.
USB 2.0 - 2 szt.
PS/2 - 2 szt.
Audio jack - 3 szt.', 1, 0, N'', N'DDR4', N'', 0, 0, 0, 0, 2133, 0, 0, 0)
INSERT [dbo].[MOTHERBOARDS] ([ID], [Company], [PFamily1], [PFamily2], [PFamily3], [PFamily4], [PFamily5], [MModel], [PSocket], [MFullModelName], [MFormat], [MChipset], [DDRSocketQ], [DDRSocketTYPE], [MIConnectors], [MEConnectors], [GraphicsInCPUs], [IntegratedGPU], [ManyGPUs], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (21, N'ASUS', N'Intel Core i7', N'Intel Core i5', N'Intel Core i3', N'Intel Celeron', N'Intel Pentium', N'H110I-PLUS', N'1151', N'ASUS H110I-PLUS (H110 PCI-E DDR4)', N'mITX', N'Intel H110', 2, N'DIMM', N'SATA III (6 Gb/s) - 4 szt.
USB 3.1 Gen. 1 (USB 3.0) - 2 szt.
USB 2.0 - 2 szt.
Złącze COM - 1 szt.', N'DVI-D - 1 szt.
VGA (D-Sub) - 1 szt.
HDMI - 1 szt.
RJ45 (LAN) - 1 szt.
USB 3.1 Gen. 1 (USB 3.0) - 2 szt.
USB 2.0 - 4 szt.
PS/2 klawiatura/mysz - 1 szt.
Audio jack - 3 szt.', 1, 0, N'', N'DDR4', N'', 0, 0, 0, 0, 2133, 0, 0, 0)
INSERT [dbo].[MOTHERBOARDS] ([ID], [Company], [PFamily1], [PFamily2], [PFamily3], [PFamily4], [PFamily5], [MModel], [PSocket], [MFullModelName], [MFormat], [MChipset], [DDRSocketQ], [DDRSocketTYPE], [MIConnectors], [MEConnectors], [GraphicsInCPUs], [IntegratedGPU], [ManyGPUs], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (22, N'ASUS', N'Intel Core i7', N'Intel Core i5', N'Intel Core i3', N'Intel Celeron', N'Intel Pentium', N'H110M-PLUS', N'1151', N'ASUS H110M-PLUS (H110 PCI-E DDR4)', N'uATX', N'Intel H110', 2, N'DIMM', N'SATA III (6 Gb/s) - 4 szt.
PCIe 3.0/2.0 x16 - 1 szt.
PCIe 2.0 x1 - 2 szt.
USB 3.1 Gen. 1 (USB 3.0) - 2 szt.
USB 2.0 - 4 szt.
Złącze COM - 1 szt.
Złącze wyjścia S/PDIF - 1 szt.
Front Panel Audio', N'DVI-D - 1 szt.
VGA (D-Sub) - 1 szt.
HDMI - 1 szt.
RJ45 (LAN) - 1 szt.
USB 3.1 Gen. 1 (USB 3.0) - 2 szt.
USB 2.0 - 2 szt.
PS/2 - 2 szt.
Audio jack - 3 szt.', 1, 0, N'', N'DDR4', N'', 0, 0, 0, 0, 2133, 0, 0, 0)
INSERT [dbo].[MOTHERBOARDS] ([ID], [Company], [PFamily1], [PFamily2], [PFamily3], [PFamily4], [PFamily5], [MModel], [PSocket], [MFullModelName], [MFormat], [MChipset], [DDRSocketQ], [DDRSocketTYPE], [MIConnectors], [MEConnectors], [GraphicsInCPUs], [IntegratedGPU], [ManyGPUs], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (23, N'ASUS', N'Intel Core i7', N'Intel Core i5', N'Intel Core i3', N'Intel Celeron', N'Intel Pentium', N'B250M-K', N'1151', N'ASUS PRIME B250M-K (3xPCI-E DDR4 USB3/M.2)', N'mATX', N'Intel B250', 2, N'DIMM', N'SATA III (6 Gb/s) - 6 szt.
M.2 - 1 szt.
PCIe 3.0 x16 - 1 szt.
PCIe 3.0 x1 - 2 szt.
USB 3.1 Gen. 1 (USB 3.0) - 1 szt.
USB 2.0 - 2 szt.
Złącze COM - 1 szt.
Złącze wyjścia S/PDIF - 1 szt.
Front Panel Audio', N'DVI-D - 1 szt.
VGA (D-Sub) - 1 szt.
RJ45 (LAN) - 1 szt.
USB 3.1 Gen. 1 (USB 3.0) - 4 szt.
USB 2.0 - 2 szt.
PS/2 - 2 szt.
Audio jack - 3 szt.', 1, 0, N'', N'DDR4', N'', 0, 0, 0, 0, 2400, 2133, 0, 0)
INSERT [dbo].[MOTHERBOARDS] ([ID], [Company], [PFamily1], [PFamily2], [PFamily3], [PFamily4], [PFamily5], [MModel], [PSocket], [MFullModelName], [MFormat], [MChipset], [DDRSocketQ], [DDRSocketTYPE], [MIConnectors], [MEConnectors], [GraphicsInCPUs], [IntegratedGPU], [ManyGPUs], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (24, N'ASUS', N'Intel Core i7', N'Intel Core i5', N'Intel Core i3', N'Intel Celeron', N'Intel Pentium', N'H110-PLUS', N'1151', N'ASUS H110-PLUS (H110 PCI-E DDR4)', N'ATX', N'Intel H110', 2, N'DIMM', N'SATA III (6 Gb/s) - 4 szt.
PCIe 3.0 x16 - 1 szt.
PCIe 3.0 x1 - 2 szt.
PCI - 3 szt.
USB 3.1 Gen. 1 (USB 3.0) - 1 szt.
USB 2.0 - 2 szt.
Złącze COM - 1 szt.', N'DVI-D - 1 szt.
VGA (D-Sub) - 1 szt.
RJ45 (LAN) - 1 szt.
USB 3.1 Gen. 1 (USB 3.0) - 2 szt.
USB 2.0 - 2 szt.
PS/2 - 2 szt.
Audio jack - 3 szt.
LPT - 1 szt.', 1, 0, N'', N'DDR4', N'', 0, 0, 0, 0, 2133, 0, 0, 0)
INSERT [dbo].[MOTHERBOARDS] ([ID], [Company], [PFamily1], [PFamily2], [PFamily3], [PFamily4], [PFamily5], [MModel], [PSocket], [MFullModelName], [MFormat], [MChipset], [DDRSocketQ], [DDRSocketTYPE], [MIConnectors], [MEConnectors], [GraphicsInCPUs], [IntegratedGPU], [ManyGPUs], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (25, N'MSI', N'Intel Core i7', N'Intel Core i5', N'Intel Core i3', N'Intel Celeron', N'Intel Pentium', N'H110M PRO-D', N'1151', N'MSI H110M PRO-D (PCI-E DDR4)', N'mATX', N'Intel H110', 2, N'DIMM', N'SATA III (6 Gb/s) - 4 szt.
PCIe 3.0 x16 - 1 szt.
PCIe 2.0 x1 - 2 szt.
USB 3.1 Gen. 1 (USB 3.0) - 1 szt.
USB 2.0 - 1 szt.
Front Panel Audio', N'DVI-D - 1 szt.
RJ45 (LAN) - 1 szt.
USB 3.1 Gen. 1 (USB 3.0) - 2 szt.
USB 2.0 - 4 szt.
PS/2 klawiatura/mysz - 1 szt.
Audio jack - 3 szt.', 1, 0, N'', N'DDR4', N'', 0, 0, 0, 0, 2133, 0, 0, 0)
INSERT [dbo].[MOTHERBOARDS] ([ID], [Company], [PFamily1], [PFamily2], [PFamily3], [PFamily4], [PFamily5], [MModel], [PSocket], [MFullModelName], [MFormat], [MChipset], [DDRSocketQ], [DDRSocketTYPE], [MIConnectors], [MEConnectors], [GraphicsInCPUs], [IntegratedGPU], [ManyGPUs], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (26, N'MSI', N'Intel Core i7', N'Intel Core i5', N'Intel Core i3', N'Intel Celeron', N'Intel Pentium', N'H110M PRO-VD', N'1151', N'MSI H110M PRO-VD (PCI-E DDR4)', N'uATX', N'Intel H110', 2, N'DIMM', N'SATA III (6 Gb/s) - 4 szt.
PCIe 3.0 x16 - 1 szt.
PCIe 2.0 x1 - 2 szt.
USB 3.1 Gen. 1 (USB 3.0) - 1 szt.
USB 2.0 - 1 szt.', N'DVI-D - 1 szt.
VGA (D-Sub) - 1 szt.
RJ45 (LAN) - 1 szt.
USB 3.1 Gen. 1 (USB 3.0) - 2 szt.
USB 2.0 - 4 szt.
PS/2 klawiatura/mysz - 1 szt.
Audio jack - 3 szt.', 1, 0, N'', N'DDR4', N'', 0, 0, 0, 0, 2133, 0, 0, 0)
INSERT [dbo].[MOTHERBOARDS] ([ID], [Company], [PFamily1], [PFamily2], [PFamily3], [PFamily4], [PFamily5], [MModel], [PSocket], [MFullModelName], [MFormat], [MChipset], [DDRSocketQ], [DDRSocketTYPE], [MIConnectors], [MEConnectors], [GraphicsInCPUs], [IntegratedGPU], [ManyGPUs], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (27, N'MSI', N'Intel Core i7', N'Intel Core i5', N'Intel Core i3', N'Intel Celeron', N'Intel Pentium', N'H110M PRO-VD PLUS', N'1151', N'MSI H110M PRO-VD PLUS (PCI-E DDR4)', N'uATX', N'Intel H110', 2, N'DIMM', N'SATA III (6 Gb/s) - 4 szt.
PCIe 3.0 x16 - 1 szt.
PCIe 2.0 x1 - 2 szt.
USB 3.1 Gen. 1 (USB 3.0) - 1 szt.
USB 2.0 - 2 szt.
Front Panel Audio', N'DVI-D - 1 szt.
VGA (D-Sub) - 1 szt.
RJ45 (LAN) - 1 szt.
USB 3.1 Gen. 1 (USB 3.0) - 2 szt.
USB 2.0 - 2 szt.
PS/2 - 2 szt.
Audio jack - 3 szt.', 1, 0, N'', N'DDR4', N'', 0, 0, 0, 0, 2133, 0, 0, 0)
INSERT [dbo].[MOTHERBOARDS] ([ID], [Company], [PFamily1], [PFamily2], [PFamily3], [PFamily4], [PFamily5], [MModel], [PSocket], [MFullModelName], [MFormat], [MChipset], [DDRSocketQ], [DDRSocketTYPE], [MIConnectors], [MEConnectors], [GraphicsInCPUs], [IntegratedGPU], [ManyGPUs], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (28, N'MSI', N'Intel Core i7', N'Intel Core i5', N'Intel Core i3', N'Intel Celeron', N'Intel Pentium', N'H110M PRO-VH', N'1151', N'MSI H110M PRO-VH (PCI-E DDR4) ', N'mATX', N'Intel H110', 2, N'DIMM', N'SATA III (6 Gb/s) - 4 szt.
PCIe 3.0 x16 - 1 szt.
PCIe 3.0 x1 - 2 szt.
USB 3.1 Gen. 1 (USB 3.0) - 1 szt.
USB 2.0 - 1 szt.', N'VGA (D-Sub) - 1 szt.
HDMI - 1 szt.
RJ45 (LAN) - 1 szt.
USB 3.1 Gen. 1 (USB 3.0) - 2 szt.
USB 2.0 - 4 szt.
PS/2 klawiatura/mysz - 1 szt.
Audio jack - 3 szt.', 1, 0, N'', N'DDR4', N'', 0, 0, 0, 0, 2133, 0, 0, 0)
INSERT [dbo].[MOTHERBOARDS] ([ID], [Company], [PFamily1], [PFamily2], [PFamily3], [PFamily4], [PFamily5], [MModel], [PSocket], [MFullModelName], [MFormat], [MChipset], [DDRSocketQ], [DDRSocketTYPE], [MIConnectors], [MEConnectors], [GraphicsInCPUs], [IntegratedGPU], [ManyGPUs], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (29, N'MSI', N'Intel Core i7', N'Intel Core i5', N'Intel Core i3', N'Intel Celeron', N'Intel Pentium', N'H110M ECO', N'1151', N'MSI H110M ECO (H110 PCI-E DDR4)', N'mATX', N'Intel H110', 2, N'DIMM', N'SATA III (6 Gb/s) - 4 szt.
PCIe 3.0 x16 - 1 szt.
PCIe 2.0 x1 - 2 szt.
USB 3.1 Gen. 1 (USB 3.0) - 1 szt.
USB 2.0 - 2 szt.
Front Panel Audio', N'DVI-D - 1 szt.
VGA (D-Sub) - 1 szt.
HDMI - 1 szt.
RJ45 (LAN) - 1 szt.
USB 3.1 Gen. 1 (USB 3.0) - 2 szt.
USB 2.0 - 2 szt.
PS/2 - 2 szt.
Audio jack - 3 szt.', 1, 0, N'', N'DDR4', N'', 0, 0, 0, 0, 2133, 0, 0, 0)
INSERT [dbo].[MOTHERBOARDS] ([ID], [Company], [PFamily1], [PFamily2], [PFamily3], [PFamily4], [PFamily5], [MModel], [PSocket], [MFullModelName], [MFormat], [MChipset], [DDRSocketQ], [DDRSocketTYPE], [MIConnectors], [MEConnectors], [GraphicsInCPUs], [IntegratedGPU], [ManyGPUs], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (30, N'MSI', N'Intel Core i7', N'Intel Core i5', N'Intel Core i3', N'Intel Celeron', N'Intel Pentium', N'H110M PRO-VDL', N'1151', N'MSI H110M PRO-VDL (H110 PCI-E DDR4)', N'uATX', N'Intel H110', 2, N'DIMM', N'SATA III (6 Gb/s) - 4 szt.
PCIe 3.0 x16 - 1 szt.
PCIe 2.0 x1 - 1 szt.
PCI - 2 szt.', N'DVI-D - 1 szt.
VGA (D-Sub) - 1 szt.
RJ45 (LAN) - 1 szt.
USB 3.1 Gen. 1 (USB 3.0) - 2 szt.
USB 2.0 - 2 szt.
PS/2 - 2 szt.
Audio jack - 3 szt.
COM - 1 szt.', 1, 0, N'', N'DDR4', N'', 0, 0, 0, 0, 2133, 0, 0, 0)
INSERT [dbo].[MOTHERBOARDS] ([ID], [Company], [PFamily1], [PFamily2], [PFamily3], [PFamily4], [PFamily5], [MModel], [PSocket], [MFullModelName], [MFormat], [MChipset], [DDRSocketQ], [DDRSocketTYPE], [MIConnectors], [MEConnectors], [GraphicsInCPUs], [IntegratedGPU], [ManyGPUs], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (31, N'MSI', N'Intel Core i7', N'Intel Core i5', N'Intel Core i3', N'Intel Celeron', N'Intel Pentium', N'H110M PRO-VDP', N'1151', N'MSI H110M PRO-VDP (H110 PCI-E DDR4)', N'mATX', N'Intel H110', 2, N'DIMM', N'SATA III (6 Gb/s) - 4 szt.
PCIe 3.0 x16 - 1 szt.
PCIe 2.0 x1 - 3 szt.
USB 3.1 Gen. 1 (USB 3.0) - 1 szt.
USB 2.0 - 2 szt.
Front Panel Audio', N'DVI-D - 1 szt.
VGA (D-Sub) - 1 szt.
DisplayPort - 1 szt.
RJ45 (LAN) - 1 szt.
USB 3.1 Gen. 1 (USB 3.0) - 2 szt.
USB 2.0 - 2 szt.
PS/2 - 2 szt.
Audio jack - 3 szt.', 1, 0, N'', N'DDR4', N'', 0, 0, 0, 0, 2133, 0, 0, 0)
INSERT [dbo].[MOTHERBOARDS] ([ID], [Company], [PFamily1], [PFamily2], [PFamily3], [PFamily4], [PFamily5], [MModel], [PSocket], [MFullModelName], [MFormat], [MChipset], [DDRSocketQ], [DDRSocketTYPE], [MIConnectors], [MEConnectors], [GraphicsInCPUs], [IntegratedGPU], [ManyGPUs], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (32, N'MSI', N'Intel Core i7', N'Intel Core i5', N'Intel Core i3', N'Intel Celeron', N'Intel Pentium', N'H110M-A PRO M2', N'1151', N'MSI H110M-A PRO M2 (H110 PCI-E DDR4)', N'uATX', N'Intel H110', 2, N'DIMM', N'SATA III (6 Gb/s) - 4 szt.
M.2 - 1 szt.
PCIe 3.0 x16 - 1 szt.
PCIe 2.0 x1 - 2 szt.
USB 3.1 Gen. 1 (USB 3.0) - 1 szt.
USB 2.0 - 1 szt.
Front Panel Audio', N'DVI-D - 1 szt.
HDMI - 1 szt.
RJ45 (LAN) - 1 szt.
USB Type-C - 1 szt.
USB 3.1 Gen. 1 (USB 3.0) - 1 szt.
USB 2.0 - 4 szt.
PS/2 klawiatura/mysz - 1 szt.
Audio jack - 3 szt.', 1, 0, N'', N'DDR4', N'', 0, 0, 0, 0, 2133, 0, 0, 0)
INSERT [dbo].[MOTHERBOARDS] ([ID], [Company], [PFamily1], [PFamily2], [PFamily3], [PFamily4], [PFamily5], [MModel], [PSocket], [MFullModelName], [MFormat], [MChipset], [DDRSocketQ], [DDRSocketTYPE], [MIConnectors], [MEConnectors], [GraphicsInCPUs], [IntegratedGPU], [ManyGPUs], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (33, N'MSI', N'Intel Core i7', N'Intel Core i5', N'Intel Core i3', N'Intel Celeron', N'Intel Pentium', N'H110M PRO-VHL', N'1151', N'MSI H110M PRO-VHL (H110 PCI-E DDR4)', N'mATX', N'Intel H110', 2, N'DIMM', N'SATA III (6 Gb/s) - 4 szt.
PCIe 3.0 x16 - 1 szt.
PCIe 3.0 x1 - 1 szt.
PCI - 1 szt.
USB 3.1 Gen. 1 (USB 3.0) - 1 szt.
USB 2.0 - 2 szt.
Front Panel Audio', N'VGA (D-Sub) - 1 szt.
HDMI - 1 szt.
RJ45 (LAN) - 1 szt.
USB 3.1 Gen. 1 (USB 3.0) - 2 szt.
USB 2.0 - 2 szt.
PS/2 - 2 szt.
Audio jack - 3 szt.
LPT - 1 szt.
COM - 1 szt.', 1, 0, N'', N'DDR4', N'', 0, 0, 0, 0, 2133, 0, 0, 0)
INSERT [dbo].[MOTHERBOARDS] ([ID], [Company], [PFamily1], [PFamily2], [PFamily3], [PFamily4], [PFamily5], [MModel], [PSocket], [MFullModelName], [MFormat], [MChipset], [DDRSocketQ], [DDRSocketTYPE], [MIConnectors], [MEConnectors], [GraphicsInCPUs], [IntegratedGPU], [ManyGPUs], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (34, N'MSI', N'Intel Core i7', N'Intel Core i5', N'Intel Core i3', N'Intel Celeron', N'Intel Pentium', N'B250M PRO-VH', N'1151', N'MSI B250M PRO-VH (3xPCI-E DDR4 USB3.1/M.2)', N'uATX', N'Intel B250', 2, N'DIMM', N'SATA III (6 Gb/s) - 6 szt.
M.2 - 1 szt.
PCIe 3.0 x16 - 1 szt.
PCIe 3.0 x1 - 2 szt.
USB 3.1 Gen. 1 (USB 3.0) - 1 szt.
USB 2.0 - 2 szt.
Front Panel Audio', N'VGA (D-Sub) - 1 szt.
HDMI - 1 szt.
RJ45 (LAN) - 1 szt.
USB 3.1 Gen. 1 (USB 3.0) - 4 szt.
USB 2.0 - 2 szt.
PS/2 klawiatura/mysz - 1 szt.
Audio jack - 3 szt.', 1, 0, N'', N'DDR4', N'', 0, 0, 0, 0, 2400, 2133, 0, 0)
INSERT [dbo].[MOTHERBOARDS] ([ID], [Company], [PFamily1], [PFamily2], [PFamily3], [PFamily4], [PFamily5], [MModel], [PSocket], [MFullModelName], [MFormat], [MChipset], [DDRSocketQ], [DDRSocketTYPE], [MIConnectors], [MEConnectors], [GraphicsInCPUs], [IntegratedGPU], [ManyGPUs], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (35, N'ASUS', N'Intel Core i7', N'Intel Core i7 Extreme', N'', N'', N'', N'RAMPAGE V EXTREME ROG/U3.1', N'2011-3', N'ASUS RAMPAGE V EXTREME ROG/U3.1 (X99 5xPCI-E DDR4)', N'E-ATX', N'Intel X99', 8, N'DIMM', N'SATA III (6 Gb/s) - 8 szt.
SATA Express - 2 szt.
PCIe 3.0 x16 - 4 szt.
PCIe 2.0 x16 - 1 szt.
PCIe 2.0 x1 - 1 szt.
USB 3.1 Gen. 1 (USB 3.0) - 4 szt.
USB 2.0 - 4 szt.', N'RJ45 (LAN) - 1 szt.
USB 3.1 Gen. 1 (USB 3.0) - 10 szt.
USB 2.0 - 2 szt.
PS/2 klawiatura/mysz - 1 szt.
Audio jack - 5 szt.
S/PDIF - 1 szt.
Przycisk Clear CMOS - 1 szt.
Przełącznik wł./wył. ROG Connect - 1 szt.
Moduł ASUS Wi-Fi GO! (Wi-Fi 802.11 a/b/g/n/ac oraz Bluetooth 4.0) - 1 szt.', 0, 1, N'NVIDIA SLI,AMD CrossFireX', N'DDR4', N'', 0, 0, 0, 0, 3333, 3200, 3000, 2800)
INSERT [dbo].[MOTHERBOARDS] ([ID], [Company], [PFamily1], [PFamily2], [PFamily3], [PFamily4], [PFamily5], [MModel], [PSocket], [MFullModelName], [MFormat], [MChipset], [DDRSocketQ], [DDRSocketTYPE], [MIConnectors], [MEConnectors], [GraphicsInCPUs], [IntegratedGPU], [ManyGPUs], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (36, N'ASUS', N'Intel Core i7 Extreme Edition', N'', N'', N'', N'', N'X99-A II', N'2011-3', N'ASUS X99-A II (X99 4xPCI-E DDR4)', N'ATX', N'Intel X99', 8, N'DIMM', N'SATA III (6 Gb/s) - 10 szt.
SATA Express - 1 szt.
M.2 - 1 szt.
PCIe 2.0 x16 - 1 szt.
PCIe 3.0/2.0 x16 - 3 szt.
PCIe 2.0 x1 - 2 szt.', N'RJ45 (LAN) - 1 szt.
USB Type-C - 1 szt.
USB 3.1 Gen. 1 (USB 3.0) - 1 szt.
USB 3.1 Gen. 1 (USB 3.0) - 4 szt.
USB 2.0 - 4 szt.
PS/2 klawiatura/mysz - 1 szt.
Audio jack - 5 szt.
S/PDIF - 1 szt.', 0, 1, N'NVIDIA SLI,AMD CrossFireX', N'DDR4', N'', 0, 0, 0, 0, 3333, 3200, 3000, 2800)
INSERT [dbo].[MOTHERBOARDS] ([ID], [Company], [PFamily1], [PFamily2], [PFamily3], [PFamily4], [PFamily5], [MModel], [PSocket], [MFullModelName], [MFormat], [MChipset], [DDRSocketQ], [DDRSocketTYPE], [MIConnectors], [MEConnectors], [GraphicsInCPUs], [IntegratedGPU], [ManyGPUs], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (37, N'ASUS', N'Intel Core i7', N'Intel Core i5', N'Intel Core i3', N'Intel Celeron', N'Intel Pentium', N'X99-WS/IPMI', N'2011-3', N'ASUS X99-WS/IPMI (X99 5xPCI-E DDR4)', N'uATX', N'Intel X99', 2, N'DIMM', N'SATA III (6 Gb/s) - 8 szt.
SATA Express - 1 szt.
M.2 - 1 szt.
PCIe 3.0 x16 - 5 szt.', N'RJ45 (LAN) - 2 szt.
USB 3.1 Gen. 1 (USB 3.0) - 4 szt.
USB 2.0 - 2 szt.
Audio jack - 6 szt.
Przycisk Clear CMOS - 1 szt.
Przycisk USB BIOS Flashback - 1 szt.
Management LAN - 1 szt.', 0, 1, N'NVIDIA SLI,AMD CrossFireX', N'DDR4', N'', 0, 0, 0, 0, 3200, 3000, 2800, 2666)
INSERT [dbo].[MOTHERBOARDS] ([ID], [Company], [PFamily1], [PFamily2], [PFamily3], [PFamily4], [PFamily5], [MModel], [PSocket], [MFullModelName], [MFormat], [MChipset], [DDRSocketQ], [DDRSocketTYPE], [MIConnectors], [MEConnectors], [GraphicsInCPUs], [IntegratedGPU], [ManyGPUs], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (38, N'ASUS', N'Intel Core i7', N'Intel Core i7 Extreme Edition', N'Intel Xeon 18-Core', N'', N'', N'X99-DELUXE II', N'2011-3', N'ASUS X99-DELUXE II (5xPCI-E DDR4)', N'ATX', N'Intel X99', 8, N'DIMM', N'SATA III (6 Gb/s) - 8 szt.
SATA Express - 1 szt.
M.2 - 1 szt.
PCIe 3.0 x16 - 5 szt.
PCIe 3.0/2.0 x1 - 1 szt.
USB 3.1 Gen. 1 (USB 3.0) - 2 szt.
USB 2.0 - 1 szt.
Złącze wyjścia S/PDIF - 1 szt.
Front Panel Audio', N'RJ45 (LAN) - 2 szt.
USB Type-C - 1 szt.
USB 3.1 Gen. 1 (USB 3.0) - 4 szt.
USB 3.1 Gen.2 - 3 szt.
USB 2.0 - 4 szt.
Audio jack - 5 szt.
S/PDIF - 1 szt.
Moduł ASUS Wi-Fi GO! (Wi-Fi 802.11 a/b/g/n/ac oraz Bluetooth 4.0) - 1 szt.
Przycisk USB BIOS Flashback - 1 szt.', 0, 1, N'NVIDIA SLI,AMD CrossFireX', N'DDR4', N'', 0, 0, 0, 0, 3333, 3300, 3200, 3000)
INSERT [dbo].[MOTHERBOARDS] ([ID], [Company], [PFamily1], [PFamily2], [PFamily3], [PFamily4], [PFamily5], [MModel], [PSocket], [MFullModelName], [MFormat], [MChipset], [DDRSocketQ], [DDRSocketTYPE], [MIConnectors], [MEConnectors], [GraphicsInCPUs], [IntegratedGPU], [ManyGPUs], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (39, N'ASUS', N'Intel Core i7 Extreme Edition', N'', N'', N'', N'', N'STRIX X99 GAMING ROG', N'2011-3', N'ASUS STRIX X99 GAMING ROG (4xPCI-E DDR4)', N'uATX', N'Intel X99', 8, N'DIMM', N'SATA III (6 Gb/s) - 8 szt.
SATA Express - 1 szt.
M.2 - 1 szt.
Ultra M.2 - 1 szt.
PCIe 2.0 x16 - 1 szt.
PCIe 3.0/2.0 x16 - 3 szt.
PCIe 2.0 x1 - 2 szt.
USB 3.1 Gen. 1 (USB 3.0) - 2 szt.
USB 2.0 - 2 szt.
Złącze COM - 1 szt.
Front Panel Audio', N'RJ45 (LAN) - 1 szt.
USB Type-C - 1 szt.
USB 3.1 Gen. 1 (USB 3.0) - 1 szt.
USB 3.1 Gen. 1 (USB 3.0) - 4 szt.
USB 2.0 - 4 szt.
PS/2 klawiatura/mysz - 1 szt.
Audio jack - 5 szt.
S/PDIF - 1 szt.
Złącze anteny Wi-Fi - 2 szt.', 0, 1, N'NVIDIA SLI,AMD CrossFireX', N'DDR4', N'', 0, 0, 0, 0, 3333, 3300, 3200, 3000)
INSERT [dbo].[MOTHERBOARDS] ([ID], [Company], [PFamily1], [PFamily2], [PFamily3], [PFamily4], [PFamily5], [MModel], [PSocket], [MFullModelName], [MFormat], [MChipset], [DDRSocketQ], [DDRSocketTYPE], [MIConnectors], [MEConnectors], [GraphicsInCPUs], [IntegratedGPU], [ManyGPUs], [SupportedRAMType1], [SupportedRAMType2], [DDR3RAMFrequency1], [DDR3RAMFrequency2], [DDR3RAMFrequency3], [DDR3RAMFrequency4], [DDR4RAMFrequency1], [DDR4RAMFrequency2], [DDR4RAMFrequency3], [DDR4RAMFrequency4]) VALUES (39, N'Gigabyte', N'AMD Athlon II', N'AMD Phenom II', N'', N'', N'', N'GA-990FX-GAMING', N'AM3+', N'Gigabyte GA-990FX-GAMING (3xPCI-E DDR3)', N'ATX', N'AMD 990FX/SB950', 4, N'DIMM', N'SATA III (6 Gb/s) - 6 szt.
M.2 - 1 szt.
PCIe 2.0 x16 - 3 szt.
PCIe 2.0 x1 - 3 szt.
USB 3.1 Gen. 1 (USB 3.0) - 1 szt.
USB 2.0 - 3 szt.', N'RJ45 (LAN) - 1 szt.
USB Type-C - 1 szt.
USB 3.1 Gen. 1 (USB 3.0) - 1 szt.
USB 3.1 Gen. 1 (USB 3.0) - 2 szt.
USB 2.0 - 6 szt.
PS/2 klawiatura/mysz - 1 szt.
Audio jack - 5 szt.
S/PDIF - 1 szt.', 0, 1, N'NVIDIA SLI,AMD CrossFireX', N'', N'DDR3', 2000, 1866, 1600, 1333, 0, 0, 0, 0)
SET IDENTITY_INSERT [dbo].[MOTHERBOARDS] OFF
SET IDENTITY_INSERT [dbo].[Mouse] ON 

INSERT [dbo].[Mouse] ([ID], [Company], [MouseFullModelName], [MouseSensor], [MouseResolution], [MouseConnection], [MouseInterface]) VALUES (1, N'', N'', N'', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[Mouse] OFF
SET IDENTITY_INSERT [dbo].[OPDrives] ON 

INSERT [dbo].[OPDrives] ([ID], [Company], [OPDriveFullModelName], [DriveType], [OPDInterface]) VALUES (1, N'', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[OPDrives] OFF
SET IDENTITY_INSERT [dbo].[PCCOVER] ON 

INSERT [dbo].[PCCOVER] ([ID], [Company], [CoverFullModelName], [CoverType], [MBFormat], [PSFormat], [ExConnectors]) VALUES (1, N'', N'', N'', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[PCCOVER] OFF
SET IDENTITY_INSERT [dbo].[PSU] ON 

INSERT [dbo].[PSU] ([ID], [Company], [PSUFullModelName], [PSFormat], [MaxPower], [Modular], [Connectors]) VALUES (1, N'', N'', N'', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[PSU] OFF
SET IDENTITY_INSERT [dbo].[RAM] ON 

INSERT [dbo].[RAM] ([ID], [Company], [RAMFamily1], [RAMFamily2], [RAMQuantity], [RAMFullModelName], [RAMCapacity], [RAMFrequency], [RAMDelay], [RAMVoltage], [RAMSetOrSingle], [RAMSingleModuleCapacity]) VALUES (1, N'', N'', N'', 0, N'', N'', 0, N'', N'', N'', 0)
SET IDENTITY_INSERT [dbo].[RAM] OFF
SET IDENTITY_INSERT [dbo].[Screen] ON 

INSERT [dbo].[Screen] ([ID], [Company], [ScreenFullModelName], [ScreenSize], [ScreenUsage], [MatrixType], [Resolution], [ScreenFormat]) VALUES (1, N'', N'', N'', N'', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[Screen] OFF
