USE [master]
GO
/****** Object:  Database [CommunityMedicineDB]    Script Date: 7/1/2015 11:51:41 AM ******/
CREATE DATABASE [CommunityMedicineDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CommunityMedicineDB', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\CommunityMedicineDB.mdf' , SIZE = 3136KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'CommunityMedicineDB_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\CommunityMedicineDB_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [CommunityMedicineDB] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CommunityMedicineDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CommunityMedicineDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CommunityMedicineDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CommunityMedicineDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CommunityMedicineDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CommunityMedicineDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [CommunityMedicineDB] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [CommunityMedicineDB] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [CommunityMedicineDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CommunityMedicineDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CommunityMedicineDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CommunityMedicineDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CommunityMedicineDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CommunityMedicineDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CommunityMedicineDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CommunityMedicineDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CommunityMedicineDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [CommunityMedicineDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CommunityMedicineDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CommunityMedicineDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CommunityMedicineDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CommunityMedicineDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CommunityMedicineDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CommunityMedicineDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CommunityMedicineDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [CommunityMedicineDB] SET  MULTI_USER 
GO
ALTER DATABASE [CommunityMedicineDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CommunityMedicineDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CommunityMedicineDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CommunityMedicineDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [CommunityMedicineDB]
GO
/****** Object:  Table [dbo].[Center_Medicine_Relation_tbl]    Script Date: 7/1/2015 11:51:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Center_Medicine_Relation_tbl](
	[center_medicine_id] [int] IDENTITY(1,1) NOT NULL,
	[center_id] [int] NOT NULL,
	[medicine_id] [int] NOT NULL,
	[medicine_quantity] [int] NOT NULL,
	[date] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Center_Medicine_Relation_tbl] PRIMARY KEY CLUSTERED 
(
	[center_medicine_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Center_tbl]    Script Date: 7/1/2015 11:51:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Center_tbl](
	[center_id] [int] IDENTITY(1,1) NOT NULL,
	[center_name] [varchar](50) NOT NULL,
	[center_code] [varchar](50) NOT NULL,
	[center_password] [varchar](50) NOT NULL,
	[thana_id] [int] NOT NULL,
 CONSTRAINT [PK_Center_tbl] PRIMARY KEY CLUSTERED 
(
	[center_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Disease_tbl]    Script Date: 7/1/2015 11:51:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Disease_tbl](
	[disease_id] [int] IDENTITY(1,1) NOT NULL,
	[disease_name] [varchar](50) NOT NULL,
	[disease_description] [text] NOT NULL,
	[treatement_procedure] [text] NOT NULL,
 CONSTRAINT [PK_Disease_tbl] PRIMARY KEY CLUSTERED 
(
	[disease_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[District_tbl]    Script Date: 7/1/2015 11:51:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[District_tbl](
	[district_id] [int] IDENTITY(1,1) NOT NULL,
	[district_name] [varchar](50) NULL,
 CONSTRAINT [PK_District_tbl] PRIMARY KEY CLUSTERED 
(
	[district_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Doctor_tbl]    Script Date: 7/1/2015 11:51:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Doctor_tbl](
	[doctor_id] [int] IDENTITY(1,1) NOT NULL,
	[doctor_name] [varchar](50) NOT NULL,
	[doctor_degree] [varchar](50) NOT NULL,
	[doctor_specialization] [varchar](50) NOT NULL,
	[center_id] [int] NULL,
 CONSTRAINT [PK_Docter_tbl] PRIMARY KEY CLUSTERED 
(
	[doctor_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Medicine_tbl]    Script Date: 7/1/2015 11:51:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Medicine_tbl](
	[medicine_id] [int] IDENTITY(1,1) NOT NULL,
	[medicine_name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Medicine_tbl] PRIMARY KEY CLUSTERED 
(
	[medicine_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Patient_tbl]    Script Date: 7/1/2015 11:51:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Patient_tbl](
	[patient_id] [int] IDENTITY(1,1) NOT NULL,
	[patient_voter_id] [varchar](50) NOT NULL,
	[patient__name] [varchar](50) NOT NULL,
	[patient_address] [varchar](50) NOT NULL,
	[patient_age] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Patient_tbl] PRIMARY KEY CLUSTERED 
(
	[patient_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Thana_tbl]    Script Date: 7/1/2015 11:51:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Thana_tbl](
	[thana_id] [int] IDENTITY(1,1) NOT NULL,
	[thana_name] [varchar](50) NOT NULL,
	[district_id] [int] NOT NULL,
 CONSTRAINT [PK_Thana_tbl] PRIMARY KEY CLUSTERED 
(
	[thana_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Treatment_tbl]    Script Date: 7/1/2015 11:51:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Treatment_tbl](
	[treatment_id] [int] IDENTITY(1,1) NOT NULL,
	[disease_id] [int] NOT NULL,
	[patient_id] [int] NOT NULL,
	[medicine_id] [int] NOT NULL,
	[dose] [varchar](50) NOT NULL,
	[beforeOrAfter] [varchar](50) NOT NULL,
	[medicine_quantity] [int] NOT NULL,
	[note] [varchar](500) NOT NULL,
	[treatment_date] [varchar](50) NOT NULL,
	[treatment_count] [int] NOT NULL,
 CONSTRAINT [PK_Treatment_tbl] PRIMARY KEY CLUSTERED 
(
	[treatment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Center_Medicine_Relation_tbl] ON 

INSERT [dbo].[Center_Medicine_Relation_tbl] ([center_medicine_id], [center_id], [medicine_id], [medicine_quantity], [date]) VALUES (1, 3, 8, 500, N'6/24/2015 9:18:53 AM')
INSERT [dbo].[Center_Medicine_Relation_tbl] ([center_medicine_id], [center_id], [medicine_id], [medicine_quantity], [date]) VALUES (2, 3, 1, 500, N'6/24/2015 9:18:53 AM')
INSERT [dbo].[Center_Medicine_Relation_tbl] ([center_medicine_id], [center_id], [medicine_id], [medicine_quantity], [date]) VALUES (3, 3, 10, 500, N'6/24/2015 9:18:53 AM')
INSERT [dbo].[Center_Medicine_Relation_tbl] ([center_medicine_id], [center_id], [medicine_id], [medicine_quantity], [date]) VALUES (4, 11, 4, 50, N'6/27/2015 9:48:02 AM')
INSERT [dbo].[Center_Medicine_Relation_tbl] ([center_medicine_id], [center_id], [medicine_id], [medicine_quantity], [date]) VALUES (5, 11, 4, 50, N'6/27/2015 9:48:02 AM')
INSERT [dbo].[Center_Medicine_Relation_tbl] ([center_medicine_id], [center_id], [medicine_id], [medicine_quantity], [date]) VALUES (6, 14, 3, -110, N'6/29/2015 9:48:54 AM')
INSERT [dbo].[Center_Medicine_Relation_tbl] ([center_medicine_id], [center_id], [medicine_id], [medicine_quantity], [date]) VALUES (7, 14, 8, 50, N'6/29/2015 9:48:54 AM')
INSERT [dbo].[Center_Medicine_Relation_tbl] ([center_medicine_id], [center_id], [medicine_id], [medicine_quantity], [date]) VALUES (8, 14, 11, 50, N'6/29/2015 9:48:54 AM')
INSERT [dbo].[Center_Medicine_Relation_tbl] ([center_medicine_id], [center_id], [medicine_id], [medicine_quantity], [date]) VALUES (9, 14, 5, 50, N'6/29/2015 9:48:54 AM')
INSERT [dbo].[Center_Medicine_Relation_tbl] ([center_medicine_id], [center_id], [medicine_id], [medicine_quantity], [date]) VALUES (10, 14, 3, -49, N'6/29/2015 10:13:25 AM')
INSERT [dbo].[Center_Medicine_Relation_tbl] ([center_medicine_id], [center_id], [medicine_id], [medicine_quantity], [date]) VALUES (11, 14, 3, -49, N'6/29/2015 10:13:25 AM')
INSERT [dbo].[Center_Medicine_Relation_tbl] ([center_medicine_id], [center_id], [medicine_id], [medicine_quantity], [date]) VALUES (12, 14, 3, -49, N'6/29/2015 10:13:25 AM')
INSERT [dbo].[Center_Medicine_Relation_tbl] ([center_medicine_id], [center_id], [medicine_id], [medicine_quantity], [date]) VALUES (13, 14, 3, -49, N'6/29/2015 10:13:32 AM')
INSERT [dbo].[Center_Medicine_Relation_tbl] ([center_medicine_id], [center_id], [medicine_id], [medicine_quantity], [date]) VALUES (14, 14, 3, -49, N'6/29/2015 10:13:32 AM')
INSERT [dbo].[Center_Medicine_Relation_tbl] ([center_medicine_id], [center_id], [medicine_id], [medicine_quantity], [date]) VALUES (15, 14, 3, -49, N'6/29/2015 10:13:32 AM')
INSERT [dbo].[Center_Medicine_Relation_tbl] ([center_medicine_id], [center_id], [medicine_id], [medicine_quantity], [date]) VALUES (16, 14, 3, -49, N'6/29/2015 10:13:33 AM')
INSERT [dbo].[Center_Medicine_Relation_tbl] ([center_medicine_id], [center_id], [medicine_id], [medicine_quantity], [date]) VALUES (17, 14, 3, -49, N'6/29/2015 10:13:33 AM')
INSERT [dbo].[Center_Medicine_Relation_tbl] ([center_medicine_id], [center_id], [medicine_id], [medicine_quantity], [date]) VALUES (18, 14, 3, -49, N'6/29/2015 10:13:33 AM')
INSERT [dbo].[Center_Medicine_Relation_tbl] ([center_medicine_id], [center_id], [medicine_id], [medicine_quantity], [date]) VALUES (19, 14, 3, -49, N'6/29/2015 10:13:34 AM')
INSERT [dbo].[Center_Medicine_Relation_tbl] ([center_medicine_id], [center_id], [medicine_id], [medicine_quantity], [date]) VALUES (20, 14, 3, -49, N'6/29/2015 10:13:34 AM')
INSERT [dbo].[Center_Medicine_Relation_tbl] ([center_medicine_id], [center_id], [medicine_id], [medicine_quantity], [date]) VALUES (21, 14, 3, -49, N'6/29/2015 10:13:34 AM')
INSERT [dbo].[Center_Medicine_Relation_tbl] ([center_medicine_id], [center_id], [medicine_id], [medicine_quantity], [date]) VALUES (22, 14, 3, 50, N'6/29/2015 11:51:34 AM')
INSERT [dbo].[Center_Medicine_Relation_tbl] ([center_medicine_id], [center_id], [medicine_id], [medicine_quantity], [date]) VALUES (23, 14, 3, 50, N'6/29/2015 11:51:35 AM')
INSERT [dbo].[Center_Medicine_Relation_tbl] ([center_medicine_id], [center_id], [medicine_id], [medicine_quantity], [date]) VALUES (24, 14, 3, 950, N'6/29/2015 1:00:00 PM')
INSERT [dbo].[Center_Medicine_Relation_tbl] ([center_medicine_id], [center_id], [medicine_id], [medicine_quantity], [date]) VALUES (25, 14, 4, 150, N'6/29/2015 1:00:00 PM')
INSERT [dbo].[Center_Medicine_Relation_tbl] ([center_medicine_id], [center_id], [medicine_id], [medicine_quantity], [date]) VALUES (26, 17, 2, 50, N'7/1/2015 9:34:06 AM')
INSERT [dbo].[Center_Medicine_Relation_tbl] ([center_medicine_id], [center_id], [medicine_id], [medicine_quantity], [date]) VALUES (27, 17, 2, 50, N'7/1/2015 9:34:12 AM')
INSERT [dbo].[Center_Medicine_Relation_tbl] ([center_medicine_id], [center_id], [medicine_id], [medicine_quantity], [date]) VALUES (28, 18, 2, 150, N'7/1/2015 9:41:34 AM')
INSERT [dbo].[Center_Medicine_Relation_tbl] ([center_medicine_id], [center_id], [medicine_id], [medicine_quantity], [date]) VALUES (29, 18, 2, 100, N'7/1/2015 9:42:02 AM')
INSERT [dbo].[Center_Medicine_Relation_tbl] ([center_medicine_id], [center_id], [medicine_id], [medicine_quantity], [date]) VALUES (30, 18, 4, 200, N'7/1/2015 9:43:21 AM')
INSERT [dbo].[Center_Medicine_Relation_tbl] ([center_medicine_id], [center_id], [medicine_id], [medicine_quantity], [date]) VALUES (31, 18, 8, 1000, N'7/1/2015 9:43:21 AM')
INSERT [dbo].[Center_Medicine_Relation_tbl] ([center_medicine_id], [center_id], [medicine_id], [medicine_quantity], [date]) VALUES (32, 18, 11, 200, N'7/1/2015 9:45:08 AM')
INSERT [dbo].[Center_Medicine_Relation_tbl] ([center_medicine_id], [center_id], [medicine_id], [medicine_quantity], [date]) VALUES (33, 19, 3, 10, N'7/1/2015 9:46:43 AM')
INSERT [dbo].[Center_Medicine_Relation_tbl] ([center_medicine_id], [center_id], [medicine_id], [medicine_quantity], [date]) VALUES (34, 19, 5, 5, N'7/1/2015 9:47:06 AM')
SET IDENTITY_INSERT [dbo].[Center_Medicine_Relation_tbl] OFF
SET IDENTITY_INSERT [dbo].[Center_tbl] ON 

INSERT [dbo].[Center_tbl] ([center_id], [center_name], [center_code], [center_password], [thana_id]) VALUES (1, N'Tejgong Community Clinic-1', N'DHATEJ.001', N'50JyNj59wsBD1SCyNV11pA==', 3)
INSERT [dbo].[Center_tbl] ([center_id], [center_name], [center_code], [center_password], [thana_id]) VALUES (2, N'Tejgong Community Clinic-2', N'DHATEJ.002', N'z0Lvkv8AV/qgt2z+3NetIQ==', 3)
INSERT [dbo].[Center_tbl] ([center_id], [center_name], [center_code], [center_password], [thana_id]) VALUES (3, N'Kawran Bazar Clinic-1', N'DHATEJ.003', N'in36vhpO5y7kRoAY+npiww==', 3)
INSERT [dbo].[Center_tbl] ([center_id], [center_name], [center_code], [center_password], [thana_id]) VALUES (4, N'Kawran Bazar Clinic-2', N'DHATEJ.004', N'BA3CPpye7MsyqJxRCFnQfA==', 3)
INSERT [dbo].[Center_tbl] ([center_id], [center_name], [center_code], [center_password], [thana_id]) VALUES (5, N'Motijheel Clinic-2', N'DHAMOT.001', N'hARz7vH3Lm8mSyBo+E9/mw==', 4)
INSERT [dbo].[Center_tbl] ([center_id], [center_name], [center_code], [center_password], [thana_id]) VALUES (6, N'Motijheel Clinic-1', N'DHAMOT.002', N'UbeXxPO96761TeQv7XYvWg==', 4)
INSERT [dbo].[Center_tbl] ([center_id], [center_name], [center_code], [center_password], [thana_id]) VALUES (7, N'Dawagonj Clinic-1', N'DHAMOT.003', N'hy1YALgyBXeSE9nRwg4iWw==', 4)
INSERT [dbo].[Center_tbl] ([center_id], [center_name], [center_code], [center_password], [thana_id]) VALUES (8, N'City College Clinic - 1', N'DHADHA.001', N'ClTytKjKDl1s+m8JOUpT1A==', 2)
INSERT [dbo].[Center_tbl] ([center_id], [center_name], [center_code], [center_password], [thana_id]) VALUES (9, N'City College Clinic - 2', N'DHADHA.002', N'I5Fqus8ZvajvjRg6zdbfPw==', 2)
INSERT [dbo].[Center_tbl] ([center_id], [center_name], [center_code], [center_password], [thana_id]) VALUES (10, N'Mirpur Clinic -1 ', N'DHAMIR.001', N'ClTytKjKDl1s+m8JOUpT1A==', 5)
INSERT [dbo].[Center_tbl] ([center_id], [center_name], [center_code], [center_password], [thana_id]) VALUES (11, N'Mirpur Clinic -2', N'DHAMIR.002', N'lwtHnvHyDyd+6rMBxhtj1w==', 5)
INSERT [dbo].[Center_tbl] ([center_id], [center_name], [center_code], [center_password], [thana_id]) VALUES (12, N'Mirpur Clinic -3', N'DHAMIR.003', N'Y+3VyIlEMaizud6cli+rfw==', 5)
INSERT [dbo].[Center_tbl] ([center_id], [center_name], [center_code], [center_password], [thana_id]) VALUES (13, N'Mirpur Clinic -4', N'DHAMIR.004', N'ewnOCIi5z1ZMXW+sJVhJKA==', 5)
INSERT [dbo].[Center_tbl] ([center_id], [center_name], [center_code], [center_password], [thana_id]) VALUES (14, N'mota', N'BRANAS.001', N'8E42qIEEOJPuA/ApYzrbNg==', 7)
INSERT [dbo].[Center_tbl] ([center_id], [center_name], [center_code], [center_password], [thana_id]) VALUES (15, N'ss', N'BRANAS.002', N'PkiWsEYCLFkAqLE6r9OGwQ==', 7)
INSERT [dbo].[Center_tbl] ([center_id], [center_name], [center_code], [center_password], [thana_id]) VALUES (16, N'aaa', N'BRAKAS.001', N'Bh2LUpGLJJCdHoL+8hSIaw==', 9)
INSERT [dbo].[Center_tbl] ([center_id], [center_name], [center_code], [center_password], [thana_id]) VALUES (17, N'ABJJ Clinic -1 ', N'DHADHA.003', N'v+eEyGK0o7f4SteeeQJ0xQ==', 2)
INSERT [dbo].[Center_tbl] ([center_id], [center_name], [center_code], [center_password], [thana_id]) VALUES (18, N'AKASH', N'DHATEJ.005', N'kFhB1Fpl3DOAY8TugcI2Pg==', 3)
INSERT [dbo].[Center_tbl] ([center_id], [center_name], [center_code], [center_password], [thana_id]) VALUES (19, N'akram', N'RAJDUR.001', N'ewnOCIi5z1ZMXW+sJVhJKA==', 13)
INSERT [dbo].[Center_tbl] ([center_id], [center_name], [center_code], [center_password], [thana_id]) VALUES (20, N'Barid', N'RAJBAG.001', N'A7Rx2cZQr9hzoX5bU6Elng==', 10)
SET IDENTITY_INSERT [dbo].[Center_tbl] OFF
SET IDENTITY_INSERT [dbo].[Disease_tbl] ON 

INSERT [dbo].[Disease_tbl] ([disease_id], [disease_name], [disease_description], [treatement_procedure]) VALUES (1, N'Cholera', N'Cholera is an infection of the intestines by the bacterium Vibrio cholerae. Symptoms may range from none, to mild, to severe.[1] The classic symptom is large amounts of watery diarrhea that lasts a few days.[2] Vomiting and muscle cramps may also occur.[1] Diarrhea can be so severe that it leads within hours to severe dehydration and electrolyte imbalance.[2] This may result in sunken eyes, cold skin, decreased skin elasticity, and wrinkling of the hands and feet.[3] The dehydration may result in the skin turning bluish.[4] Symptoms start two hours to five days after exposure.[1]', N'Continued eating speeds the recovery of normal intestinal function. The World Health Organization recommends this generally for cases of diarrhea no matter what the underlying cause.[37] A CDC training manual specifically for cholera states: “Continue to breastfeed your baby if the baby has watery diarrhea, even when traveling to get treatment. Adults and older children should continue to eat frequently')
INSERT [dbo].[Disease_tbl] ([disease_id], [disease_name], [disease_description], [treatement_procedure]) VALUES (2, N'Typhoid fever', N'Typhoid fever, also known simply as typhoid, is a symptomatic bacterial infection due to Salmonella typhi.[1] Symptoms may vary from mild to severe and usually begin six to thirty days after exposure.[2][3] Often there is a gradual onset of a high fever over several days.[2] Weakness, abdominal pain, constipation, and headaches also commonly occur.[3][4] Diarrhea and vomiting are uncommon.[4] Some people develop a skin rash with rose colored spots.[3] In severe cases there may be confusion.[4] Without treatment symptoms may last weeks or months.[3] Other people may carry the bacteria without being affected; however, they are still able to spread the disease to others.[5] Typhoid fever is a type of enteric fever along with paratyphoid fever.', N'Typhoid fever, when properly treated, is not fatal in most cases. Antibiotics, such as ampicillin, chloramphenicol, trimethoprim-sulfamethoxazole, amoxicillin, and ciprofloxacin, have been commonly used to treat typhoid fever in microbiology.[25] Treatment of the disease with antibiotics reduces the case-fatality rate to about 1%')
INSERT [dbo].[Disease_tbl] ([disease_id], [disease_name], [disease_description], [treatement_procedure]) VALUES (3, N'Asthma', N'Asthma (from the Greek ?s?µa, ásthma, "panting") is a common chronic inflammatory disease of the airways characterized by variable and recurring symptoms, reversible airflow obstruction and bronchospasm.[2] Common symptoms include wheezing, coughing, chest tightness, and shortness of breath', N'Treatment of acute symptoms is usually with an inhaled short-acting beta-2 agonist (such as salbutamol) and oral corticosteroids.[9] In very severe cases, intravenous corticosteroids, magnesium sulfate, and hospitalization may be required.[10] Symptoms can be prevented by avoiding triggers, such as allergens')
INSERT [dbo].[Disease_tbl] ([disease_id], [disease_name], [disease_description], [treatement_procedure]) VALUES (4, N'Diaria', N'Patla paikhana', N'PAni Khan')
INSERT [dbo].[Disease_tbl] ([disease_id], [disease_name], [disease_description], [treatement_procedure]) VALUES (5, N'Bosonta', N'Poks', N'Rest')
SET IDENTITY_INSERT [dbo].[Disease_tbl] OFF
SET IDENTITY_INSERT [dbo].[District_tbl] ON 

INSERT [dbo].[District_tbl] ([district_id], [district_name]) VALUES (1, N'Dhaka')
INSERT [dbo].[District_tbl] ([district_id], [district_name]) VALUES (2, N'Brahmanbaria')
INSERT [dbo].[District_tbl] ([district_id], [district_name]) VALUES (3, N'Rajshahi')
SET IDENTITY_INSERT [dbo].[District_tbl] OFF
SET IDENTITY_INSERT [dbo].[Doctor_tbl] ON 

INSERT [dbo].[Doctor_tbl] ([doctor_id], [doctor_name], [doctor_degree], [doctor_specialization], [center_id]) VALUES (1, N'Akku Islam', N'MBBS FAIL', N'HATURI', NULL)
INSERT [dbo].[Doctor_tbl] ([doctor_id], [doctor_name], [doctor_degree], [doctor_specialization], [center_id]) VALUES (2, N'paKKu Islam', N'MBBS FAIL', N'HATURI', NULL)
INSERT [dbo].[Doctor_tbl] ([doctor_id], [doctor_name], [doctor_degree], [doctor_specialization], [center_id]) VALUES (3, N'TaKKu Islam', N'MBBS FAIL', N'HATURI', NULL)
INSERT [dbo].[Doctor_tbl] ([doctor_id], [doctor_name], [doctor_degree], [doctor_specialization], [center_id]) VALUES (4, N'Akku Islam', N'MBBS FAIL', N'HATURI', 13)
INSERT [dbo].[Doctor_tbl] ([doctor_id], [doctor_name], [doctor_degree], [doctor_specialization], [center_id]) VALUES (5, N'paKKu Islam', N'MBBS FAIL', N'HATURI', 13)
INSERT [dbo].[Doctor_tbl] ([doctor_id], [doctor_name], [doctor_degree], [doctor_specialization], [center_id]) VALUES (6, N'paKKu Islam', N'MBBS FAIL', N'HATURI', 13)
INSERT [dbo].[Doctor_tbl] ([doctor_id], [doctor_name], [doctor_degree], [doctor_specialization], [center_id]) VALUES (7, N'Akku', N'MBBS', N'M Phil', 14)
INSERT [dbo].[Doctor_tbl] ([doctor_id], [doctor_name], [doctor_degree], [doctor_specialization], [center_id]) VALUES (8, N'Pkku', N'MBBS', N'M Phil', 14)
INSERT [dbo].[Doctor_tbl] ([doctor_id], [doctor_name], [doctor_degree], [doctor_specialization], [center_id]) VALUES (9, N'Tkku', N'MBBS', N'M Phil', 14)
INSERT [dbo].[Doctor_tbl] ([doctor_id], [doctor_name], [doctor_degree], [doctor_specialization], [center_id]) VALUES (10, N'Akku', N'MBBS', N'M Phil', 17)
INSERT [dbo].[Doctor_tbl] ([doctor_id], [doctor_name], [doctor_degree], [doctor_specialization], [center_id]) VALUES (11, N'Joy Khan', N'MBBS', N'M Phil', 18)
INSERT [dbo].[Doctor_tbl] ([doctor_id], [doctor_name], [doctor_degree], [doctor_specialization], [center_id]) VALUES (12, N'Pkku', N'MBBS', N'M Phil', 19)
INSERT [dbo].[Doctor_tbl] ([doctor_id], [doctor_name], [doctor_degree], [doctor_specialization], [center_id]) VALUES (13, N'Barid frcs', N'fdgdgd', N'vua', 20)
SET IDENTITY_INSERT [dbo].[Doctor_tbl] OFF
SET IDENTITY_INSERT [dbo].[Medicine_tbl] ON 

INSERT [dbo].[Medicine_tbl] ([medicine_id], [medicine_name]) VALUES (1, N'Napa Exter 250mg')
INSERT [dbo].[Medicine_tbl] ([medicine_id], [medicine_name]) VALUES (2, N'Alacot 250mg')
INSERT [dbo].[Medicine_tbl] ([medicine_id], [medicine_name]) VALUES (3, N'Phylopen 500MG')
INSERT [dbo].[Medicine_tbl] ([medicine_id], [medicine_name]) VALUES (4, N'Garlin 500MG')
INSERT [dbo].[Medicine_tbl] ([medicine_id], [medicine_name]) VALUES (5, N'Rupatrol 150mg')
INSERT [dbo].[Medicine_tbl] ([medicine_id], [medicine_name]) VALUES (6, N'Robic 150mg')
INSERT [dbo].[Medicine_tbl] ([medicine_id], [medicine_name]) VALUES (7, N'K-One 250mg')
INSERT [dbo].[Medicine_tbl] ([medicine_id], [medicine_name]) VALUES (8, N'Kop Gel 250mg')
INSERT [dbo].[Medicine_tbl] ([medicine_id], [medicine_name]) VALUES (9, N'Calbo-C 250mg')
INSERT [dbo].[Medicine_tbl] ([medicine_id], [medicine_name]) VALUES (10, N'Camlodin plus 250mg')
INSERT [dbo].[Medicine_tbl] ([medicine_id], [medicine_name]) VALUES (11, N'Elzer 250mg')
INSERT [dbo].[Medicine_tbl] ([medicine_id], [medicine_name]) VALUES (12, N'Bamper 2000mg')
SET IDENTITY_INSERT [dbo].[Medicine_tbl] OFF
SET IDENTITY_INSERT [dbo].[Thana_tbl] ON 

INSERT [dbo].[Thana_tbl] ([thana_id], [thana_name], [district_id]) VALUES (1, N'Badda', 1)
INSERT [dbo].[Thana_tbl] ([thana_id], [thana_name], [district_id]) VALUES (2, N'Dhanmondi', 1)
INSERT [dbo].[Thana_tbl] ([thana_id], [thana_name], [district_id]) VALUES (3, N'Tejgaon', 1)
INSERT [dbo].[Thana_tbl] ([thana_id], [thana_name], [district_id]) VALUES (4, N'Motijheel', 1)
INSERT [dbo].[Thana_tbl] ([thana_id], [thana_name], [district_id]) VALUES (5, N'Mirpur', 1)
INSERT [dbo].[Thana_tbl] ([thana_id], [thana_name], [district_id]) VALUES (6, N'Sarail', 2)
INSERT [dbo].[Thana_tbl] ([thana_id], [thana_name], [district_id]) VALUES (7, N'Nasirnagar', 2)
INSERT [dbo].[Thana_tbl] ([thana_id], [thana_name], [district_id]) VALUES (8, N'Nabinagar', 2)
INSERT [dbo].[Thana_tbl] ([thana_id], [thana_name], [district_id]) VALUES (9, N'Kasba', 2)
INSERT [dbo].[Thana_tbl] ([thana_id], [thana_name], [district_id]) VALUES (10, N'Bagha', 3)
INSERT [dbo].[Thana_tbl] ([thana_id], [thana_name], [district_id]) VALUES (11, N'Bagmara', 3)
INSERT [dbo].[Thana_tbl] ([thana_id], [thana_name], [district_id]) VALUES (12, N'Charghat', 3)
INSERT [dbo].[Thana_tbl] ([thana_id], [thana_name], [district_id]) VALUES (13, N'Durgapur', 3)
INSERT [dbo].[Thana_tbl] ([thana_id], [thana_name], [district_id]) VALUES (14, N'Godagari', 3)
SET IDENTITY_INSERT [dbo].[Thana_tbl] OFF
SET IDENTITY_INSERT [dbo].[Treatment_tbl] ON 

INSERT [dbo].[Treatment_tbl] ([treatment_id], [disease_id], [patient_id], [medicine_id], [dose], [beforeOrAfter], [medicine_quantity], [note], [treatment_date], [treatment_count]) VALUES (1, 2, 0, 4, N'1-0-1', N'Before Meal', 10, N'regular', N'12/12/12', 1)
INSERT [dbo].[Treatment_tbl] ([treatment_id], [disease_id], [patient_id], [medicine_id], [dose], [beforeOrAfter], [medicine_quantity], [note], [treatment_date], [treatment_count]) VALUES (2, 2, 0, 7, N'1-0-1', N'Before Meal', 10, N'regular', N'12/12/12', 1)
INSERT [dbo].[Treatment_tbl] ([treatment_id], [disease_id], [patient_id], [medicine_id], [dose], [beforeOrAfter], [medicine_quantity], [note], [treatment_date], [treatment_count]) VALUES (3, 2, 0, 3, N'1-1-1', N'Before Meal', 110, N'1323', N'12/12/12', 2)
INSERT [dbo].[Treatment_tbl] ([treatment_id], [disease_id], [patient_id], [medicine_id], [dose], [beforeOrAfter], [medicine_quantity], [note], [treatment_date], [treatment_count]) VALUES (4, 2, 0, 3, N'1-0-0', N'After Meal', 50, N'regular', N'12/12/12', 3)
SET IDENTITY_INSERT [dbo].[Treatment_tbl] OFF
USE [master]
GO
ALTER DATABASE [CommunityMedicineDB] SET  READ_WRITE 
GO
