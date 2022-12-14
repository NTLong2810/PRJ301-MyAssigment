USE [master]
GO
/****** Object:  Database [PRJ301_Assignment]    Script Date: 11/7/2022 11:24:10 PM ******/
CREATE DATABASE [PRJ301_Assignment]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PRJ301_Assignment', FILENAME = N'D:\SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\PRJ301_Assignment.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PRJ301_Assignment_log', FILENAME = N'D:\SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\PRJ301_Assignment_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [PRJ301_Assignment] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PRJ301_Assignment].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PRJ301_Assignment] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PRJ301_Assignment] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PRJ301_Assignment] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PRJ301_Assignment] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PRJ301_Assignment] SET ARITHABORT OFF 
GO
ALTER DATABASE [PRJ301_Assignment] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PRJ301_Assignment] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PRJ301_Assignment] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PRJ301_Assignment] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PRJ301_Assignment] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PRJ301_Assignment] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PRJ301_Assignment] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PRJ301_Assignment] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PRJ301_Assignment] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PRJ301_Assignment] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PRJ301_Assignment] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PRJ301_Assignment] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PRJ301_Assignment] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PRJ301_Assignment] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PRJ301_Assignment] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PRJ301_Assignment] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PRJ301_Assignment] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PRJ301_Assignment] SET RECOVERY FULL 
GO
ALTER DATABASE [PRJ301_Assignment] SET  MULTI_USER 
GO
ALTER DATABASE [PRJ301_Assignment] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PRJ301_Assignment] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PRJ301_Assignment] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PRJ301_Assignment] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PRJ301_Assignment] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PRJ301_Assignment] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'PRJ301_Assignment', N'ON'
GO
ALTER DATABASE [PRJ301_Assignment] SET QUERY_STORE = OFF
GO
USE [PRJ301_Assignment]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 11/7/2022 11:24:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[username] [varchar](150) NOT NULL,
	[password] [varchar](150) NOT NULL,
	[displayname] [varchar](150) NOT NULL,
	[id] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Attendance]    Script Date: 11/7/2022 11:24:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attendance](
	[sesid] [int] NOT NULL,
	[stdid] [varchar](150) NOT NULL,
	[present] [bit] NOT NULL,
	[description] [varchar](150) NOT NULL,
	[record_time] [datetime] NULL,
 CONSTRAINT [PK_Attandance] PRIMARY KEY CLUSTERED 
(
	[sesid] ASC,
	[stdid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feature]    Script Date: 11/7/2022 11:24:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feature](
	[fid] [int] NOT NULL,
	[fname] [varchar](150) NOT NULL,
	[url] [varchar](max) NOT NULL,
 CONSTRAINT [PK_Feature] PRIMARY KEY CLUSTERED 
(
	[fid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Group]    Script Date: 11/7/2022 11:24:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group](
	[gid] [int] NOT NULL,
	[gname] [varchar](150) NOT NULL,
	[subid] [int] NOT NULL,
	[lid] [int] NOT NULL,
	[sem] [varchar](150) NOT NULL,
	[year] [int] NOT NULL,
 CONSTRAINT [PK_Group] PRIMARY KEY CLUSTERED 
(
	[gid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lecturer]    Script Date: 11/7/2022 11:24:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lecturer](
	[lid] [int] NOT NULL,
	[lname] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Lecturer] PRIMARY KEY CLUSTERED 
(
	[lid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 11/7/2022 11:24:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[rid] [int] NOT NULL,
	[rname] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[rid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role_Account]    Script Date: 11/7/2022 11:24:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role_Account](
	[rid] [int] NOT NULL,
	[username] [varchar](150) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role_Feature]    Script Date: 11/7/2022 11:24:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role_Feature](
	[rid] [int] NOT NULL,
	[fid] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Room]    Script Date: 11/7/2022 11:24:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room](
	[rid] [int] NOT NULL,
	[rname] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Room] PRIMARY KEY CLUSTERED 
(
	[rid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Session]    Script Date: 11/7/2022 11:24:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Session](
	[sesid] [int] NOT NULL,
	[gid] [int] NOT NULL,
	[rid] [int] NOT NULL,
	[date] [date] NOT NULL,
	[tid] [int] NOT NULL,
	[index] [int] NOT NULL,
	[lid] [int] NOT NULL,
	[attanded] [bit] NULL,
 CONSTRAINT [PK_Session] PRIMARY KEY CLUSTERED 
(
	[sesid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 11/7/2022 11:24:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[stdid] [varchar](150) NOT NULL,
	[stdname] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[stdid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student_Group]    Script Date: 11/7/2022 11:24:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student_Group](
	[stdid] [varchar](150) NOT NULL,
	[gid] [int] NOT NULL,
 CONSTRAINT [PK_Student_Group] PRIMARY KEY CLUSTERED 
(
	[stdid] ASC,
	[gid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subject]    Script Date: 11/7/2022 11:24:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subject](
	[subid] [int] NOT NULL,
	[subname] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Subject] PRIMARY KEY CLUSTERED 
(
	[subid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TimeSlot]    Script Date: 11/7/2022 11:24:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TimeSlot](
	[tid] [int] NOT NULL,
	[description] [varchar](150) NOT NULL,
 CONSTRAINT [PK_TimeSlot] PRIMARY KEY CLUSTERED 
(
	[tid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Account] ([username], [password], [displayname], [id]) VALUES (N'annt', N'123', N'AnNT79', N'3')
INSERT [dbo].[Account] ([username], [password], [displayname], [id]) VALUES (N'caupd', N'123', N'CauPD', N'2')
INSERT [dbo].[Account] ([username], [password], [displayname], [id]) VALUES (N'longnthe', N'123', N'LongNTHE161629', N'HE161629')
INSERT [dbo].[Account] ([username], [password], [displayname], [id]) VALUES (N'sonnt', N'123', N'SonNT5', N'1')
INSERT [dbo].[Account] ([username], [password], [displayname], [id]) VALUES (N'trangdt', N'123', N'TrangDTHE161724', N'HE161724')
GO
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (1, N'HE161610', 0, N'', CAST(N'2022-11-03T09:54:35.613' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (1, N'HE161629', 0, N'', CAST(N'2022-11-03T09:54:35.613' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (1, N'HE161645', 0, N'', CAST(N'2022-11-03T09:54:35.617' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (1, N'HE161660', 0, N'', CAST(N'2022-11-03T09:54:35.617' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (1, N'HE161724', 0, N'', CAST(N'2022-11-03T09:54:35.617' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (1, N'HE162680', 0, N'', CAST(N'2022-11-03T09:54:35.617' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (2, N'HE161610', 0, N'', CAST(N'2022-11-03T09:55:03.747' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (2, N'HE161629', 0, N'', CAST(N'2022-11-03T09:55:03.747' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (2, N'HE161645', 0, N'', CAST(N'2022-11-03T09:55:03.747' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (2, N'HE161660', 0, N'', CAST(N'2022-11-03T09:55:03.750' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (2, N'HE161724', 0, N'', CAST(N'2022-11-03T09:55:03.750' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (2, N'HE162680', 0, N'', CAST(N'2022-11-03T09:55:03.750' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (3, N'HE161610', 1, N'', CAST(N'2022-11-07T11:43:31.887' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (3, N'HE161629', 1, N'', CAST(N'2022-11-07T11:43:31.887' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (3, N'HE161645', 0, N'', CAST(N'2022-11-07T11:43:31.887' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (3, N'HE161660', 1, N'', CAST(N'2022-11-07T11:43:31.890' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (3, N'HE161724', 0, N'', CAST(N'2022-11-07T11:43:31.890' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (3, N'HE162680', 1, N'', CAST(N'2022-11-07T11:43:31.890' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (4, N'HE161610', 0, N'', CAST(N'2022-11-07T09:18:09.160' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (4, N'HE161629', 0, N'', CAST(N'2022-11-07T09:18:09.160' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (4, N'HE161645', 0, N'', CAST(N'2022-11-07T09:18:09.160' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (4, N'HE161660', 0, N'', CAST(N'2022-11-07T09:18:09.160' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (4, N'HE161724', 0, N'', CAST(N'2022-11-07T09:18:09.160' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (4, N'HE162680', 0, N'', CAST(N'2022-11-07T09:18:09.160' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (6, N'HE161610', 0, N'', CAST(N'2022-11-03T09:54:50.687' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (6, N'HE161629', 0, N'', CAST(N'2022-11-03T09:54:50.687' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (6, N'HE161645', 0, N'', CAST(N'2022-11-03T09:54:50.687' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (6, N'HE161666', 0, N'', CAST(N'2022-11-03T09:54:50.687' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (6, N'HE161724', 0, N'', CAST(N'2022-11-03T09:54:50.687' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (6, N'HE162680', 0, N'', CAST(N'2022-11-03T09:54:50.690' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (8, N'HE161610', 0, N'', CAST(N'2022-11-07T09:46:53.510' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (8, N'HE161629', 1, N'', CAST(N'2022-11-07T09:46:53.510' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (8, N'HE161645', 1, N'', CAST(N'2022-11-07T09:46:53.510' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (8, N'HE161666', 0, N'', CAST(N'2022-11-07T09:46:53.510' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (8, N'HE161724', 1, N'', CAST(N'2022-11-07T09:46:53.513' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (8, N'HE162680', 0, N'', CAST(N'2022-11-07T09:46:53.513' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (13, N'HE161629', 1, N'ok', CAST(N'2022-11-07T10:09:05.840' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (13, N'HE161645', 1, N'', CAST(N'2022-11-07T10:09:05.840' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (13, N'HE161660', 1, N'', CAST(N'2022-11-07T10:09:05.840' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (13, N'HE161666', 0, N'', CAST(N'2022-11-07T10:09:05.840' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (13, N'HE162680', 0, N'', CAST(N'2022-11-07T10:09:05.843' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (18, N'HE161610', 1, N'', CAST(N'2022-11-07T09:47:01.433' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (18, N'HE161629', 0, N'', CAST(N'2022-11-07T09:47:01.433' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (23, N'HE161629', 0, N'', CAST(N'2022-11-07T23:20:33.223' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (23, N'HE161645', 0, N'', CAST(N'2022-11-07T23:20:33.223' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (23, N'HE161724', 0, N'', CAST(N'2022-11-07T23:20:33.223' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (28, N'HE161645', 1, N'', CAST(N'2022-11-07T23:20:56.090' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (28, N'HE161666', 0, N'', CAST(N'2022-11-07T23:20:56.090' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (28, N'HE162680', 0, N'', CAST(N'2022-11-07T23:20:56.093' AS DateTime))
GO
INSERT [dbo].[Feature] ([fid], [fname], [url]) VALUES (1, N'TimeTable', N'/lecturer/timetable')
INSERT [dbo].[Feature] ([fid], [fname], [url]) VALUES (2, N'TakeAttendance', N'/lecturer/takeatt')
INSERT [dbo].[Feature] ([fid], [fname], [url]) VALUES (3, N'StatusAttendance', N'/lecturer/status')
INSERT [dbo].[Feature] ([fid], [fname], [url]) VALUES (4, N'DetailAttendance', N'/lecturer/detail')
INSERT [dbo].[Feature] ([fid], [fname], [url]) VALUES (5, N'TimeTableStu', N'/student/timetablestu')
INSERT [dbo].[Feature] ([fid], [fname], [url]) VALUES (6, N'HomeLecturer', N'/home')
INSERT [dbo].[Feature] ([fid], [fname], [url]) VALUES (7, N'HomeStudent', N'/homestu')
INSERT [dbo].[Feature] ([fid], [fname], [url]) VALUES (8, N'AttendanceStu', N'/student/status')
GO
INSERT [dbo].[Group] ([gid], [gname], [subid], [lid], [sem], [year]) VALUES (1, N'SE1643', 1, 1, N'FALL', 2022)
INSERT [dbo].[Group] ([gid], [gname], [subid], [lid], [sem], [year]) VALUES (2, N'SE1645', 1, 1, N'FALL', 2022)
INSERT [dbo].[Group] ([gid], [gname], [subid], [lid], [sem], [year]) VALUES (3, N'AI1672', 1, 2, N'FALL', 2022)
INSERT [dbo].[Group] ([gid], [gname], [subid], [lid], [sem], [year]) VALUES (4, N'SE1643', 2, 1, N'FALL', 2022)
INSERT [dbo].[Group] ([gid], [gname], [subid], [lid], [sem], [year]) VALUES (5, N'SE1645', 2, 2, N'FALL', 2022)
INSERT [dbo].[Group] ([gid], [gname], [subid], [lid], [sem], [year]) VALUES (6, N'AI1672', 3, 3, N'FALL', 2022)
GO
INSERT [dbo].[Lecturer] ([lid], [lname]) VALUES (1, N'Sonnt5')
INSERT [dbo].[Lecturer] ([lid], [lname]) VALUES (2, N'CauPD')
INSERT [dbo].[Lecturer] ([lid], [lname]) VALUES (3, N'AnNT79')
GO
INSERT [dbo].[Role] ([rid], [rname]) VALUES (1, N'Lecturer')
INSERT [dbo].[Role] ([rid], [rname]) VALUES (2, N'Student')
GO
INSERT [dbo].[Role_Account] ([rid], [username]) VALUES (1, N'sonnt')
INSERT [dbo].[Role_Account] ([rid], [username]) VALUES (1, N'caupd')
INSERT [dbo].[Role_Account] ([rid], [username]) VALUES (1, N'annt')
INSERT [dbo].[Role_Account] ([rid], [username]) VALUES (2, N'longnthe')
INSERT [dbo].[Role_Account] ([rid], [username]) VALUES (2, N'trangdt')
GO
INSERT [dbo].[Role_Feature] ([rid], [fid]) VALUES (1, 1)
INSERT [dbo].[Role_Feature] ([rid], [fid]) VALUES (1, 2)
INSERT [dbo].[Role_Feature] ([rid], [fid]) VALUES (1, 3)
INSERT [dbo].[Role_Feature] ([rid], [fid]) VALUES (1, 4)
INSERT [dbo].[Role_Feature] ([rid], [fid]) VALUES (2, 5)
INSERT [dbo].[Role_Feature] ([rid], [fid]) VALUES (1, 6)
INSERT [dbo].[Role_Feature] ([rid], [fid]) VALUES (2, 7)
INSERT [dbo].[Role_Feature] ([rid], [fid]) VALUES (2, 8)
GO
INSERT [dbo].[Room] ([rid], [rname]) VALUES (1, N'DE-C205')
INSERT [dbo].[Room] ([rid], [rname]) VALUES (2, N'DE-C203')
INSERT [dbo].[Room] ([rid], [rname]) VALUES (3, N'AL-L201')
INSERT [dbo].[Room] ([rid], [rname]) VALUES (4, N'DE-C207')
GO
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (1, 1, 1, CAST(N'2022-11-02' AS Date), 1, 1, 1, 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (2, 1, 1, CAST(N'2022-11-04' AS Date), 1, 2, 1, 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (3, 1, 1, CAST(N'2022-11-07' AS Date), 1, 3, 1, 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (4, 1, 1, CAST(N'2022-11-09' AS Date), 1, 4, 1, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (5, 1, 1, CAST(N'2022-11-11' AS Date), 1, 5, 1, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (6, 2, 1, CAST(N'2022-11-02' AS Date), 2, 1, 1, 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (7, 2, 1, CAST(N'2022-11-04' AS Date), 2, 2, 1, 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (8, 2, 1, CAST(N'2022-11-07' AS Date), 2, 3, 1, 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (9, 2, 1, CAST(N'2022-11-09' AS Date), 2, 1, 1, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (10, 2, 1, CAST(N'2022-11-11' AS Date), 2, 1, 1, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (11, 3, 2, CAST(N'2022-11-02' AS Date), 4, 1, 2, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (12, 3, 2, CAST(N'2022-11-04' AS Date), 4, 1, 2, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (13, 3, 2, CAST(N'2022-11-07' AS Date), 4, 1, 2, 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (14, 3, 2, CAST(N'2022-11-09' AS Date), 4, 1, 2, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (15, 3, 2, CAST(N'2022-11-11' AS Date), 4, 1, 2, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (16, 4, 1, CAST(N'2022-11-02' AS Date), 3, 1, 1, 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (17, 4, 1, CAST(N'2022-11-04' AS Date), 3, 2, 1, 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (18, 4, 1, CAST(N'2022-11-07' AS Date), 3, 3, 1, 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (19, 4, 1, CAST(N'2022-11-09' AS Date), 3, 4, 1, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (20, 4, 1, CAST(N'2022-11-11' AS Date), 3, 5, 1, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (21, 5, 4, CAST(N'2022-11-02' AS Date), 5, 1, 2, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (22, 5, 4, CAST(N'2022-11-04' AS Date), 5, 2, 2, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (23, 5, 4, CAST(N'2022-11-07' AS Date), 5, 3, 2, 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (24, 5, 4, CAST(N'2022-11-09' AS Date), 5, 4, 2, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (25, 5, 4, CAST(N'2022-11-11' AS Date), 5, 5, 2, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (26, 6, 3, CAST(N'2022-11-02' AS Date), 6, 1, 3, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (27, 6, 3, CAST(N'2022-11-04' AS Date), 6, 2, 3, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (28, 6, 3, CAST(N'2022-11-07' AS Date), 6, 3, 3, 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (29, 6, 3, CAST(N'2022-11-09' AS Date), 6, 4, 3, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (30, 6, 3, CAST(N'2022-11-11' AS Date), 6, 5, 3, 0)
GO
INSERT [dbo].[Student] ([stdid], [stdname]) VALUES (N'HE161610', N'Hua Duy Khanh')
INSERT [dbo].[Student] ([stdid], [stdname]) VALUES (N'HE161629', N'Nguyen Thanh Long')
INSERT [dbo].[Student] ([stdid], [stdname]) VALUES (N'HE161645', N'Nguyen Luong Khang')
INSERT [dbo].[Student] ([stdid], [stdname]) VALUES (N'HE161660', N'Tran Van Hoang')
INSERT [dbo].[Student] ([stdid], [stdname]) VALUES (N'HE161666', N'Hoang Chu Anh Vu')
INSERT [dbo].[Student] ([stdid], [stdname]) VALUES (N'HE161724', N'Dang Thuy Trang')
INSERT [dbo].[Student] ([stdid], [stdname]) VALUES (N'HE162680', N'Nguyen Thi Quynh Anh')
GO
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (N'HE161610', 1)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (N'HE161610', 2)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (N'HE161610', 4)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (N'HE161629', 1)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (N'HE161629', 2)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (N'HE161629', 3)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (N'HE161629', 4)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (N'HE161629', 5)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (N'HE161645', 1)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (N'HE161645', 2)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (N'HE161645', 3)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (N'HE161645', 5)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (N'HE161645', 6)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (N'HE161660', 1)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (N'HE161660', 3)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (N'HE161666', 2)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (N'HE161666', 3)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (N'HE161666', 6)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (N'HE161724', 1)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (N'HE161724', 2)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (N'HE161724', 5)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (N'HE162680', 1)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (N'HE162680', 2)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (N'HE162680', 3)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (N'HE162680', 6)
GO
INSERT [dbo].[Subject] ([subid], [subname]) VALUES (1, N'PRJ301')
INSERT [dbo].[Subject] ([subid], [subname]) VALUES (2, N'PRO192')
INSERT [dbo].[Subject] ([subid], [subname]) VALUES (3, N'MAS291')
GO
INSERT [dbo].[TimeSlot] ([tid], [description]) VALUES (1, N'7:30 -9:00')
INSERT [dbo].[TimeSlot] ([tid], [description]) VALUES (2, N'9:10 - 10:40')
INSERT [dbo].[TimeSlot] ([tid], [description]) VALUES (3, N'10:50 - 12:20')
INSERT [dbo].[TimeSlot] ([tid], [description]) VALUES (4, N'12:50 - 14:20')
INSERT [dbo].[TimeSlot] ([tid], [description]) VALUES (5, N'14:30 - 16:00')
INSERT [dbo].[TimeSlot] ([tid], [description]) VALUES (6, N'16:10 - 17:40')
GO
ALTER TABLE [dbo].[Attendance]  WITH CHECK ADD  CONSTRAINT [FK_Attandance_Session] FOREIGN KEY([sesid])
REFERENCES [dbo].[Session] ([sesid])
GO
ALTER TABLE [dbo].[Attendance] CHECK CONSTRAINT [FK_Attandance_Session]
GO
ALTER TABLE [dbo].[Attendance]  WITH CHECK ADD  CONSTRAINT [FK_Attandance_Student] FOREIGN KEY([stdid])
REFERENCES [dbo].[Student] ([stdid])
GO
ALTER TABLE [dbo].[Attendance] CHECK CONSTRAINT [FK_Attandance_Student]
GO
ALTER TABLE [dbo].[Group]  WITH CHECK ADD  CONSTRAINT [FK_Group_Lecturer] FOREIGN KEY([lid])
REFERENCES [dbo].[Lecturer] ([lid])
GO
ALTER TABLE [dbo].[Group] CHECK CONSTRAINT [FK_Group_Lecturer]
GO
ALTER TABLE [dbo].[Group]  WITH CHECK ADD  CONSTRAINT [FK_Group_Subject] FOREIGN KEY([subid])
REFERENCES [dbo].[Subject] ([subid])
GO
ALTER TABLE [dbo].[Group] CHECK CONSTRAINT [FK_Group_Subject]
GO
ALTER TABLE [dbo].[Role_Account]  WITH CHECK ADD  CONSTRAINT [FK_Role_Account_Account] FOREIGN KEY([username])
REFERENCES [dbo].[Account] ([username])
GO
ALTER TABLE [dbo].[Role_Account] CHECK CONSTRAINT [FK_Role_Account_Account]
GO
ALTER TABLE [dbo].[Role_Account]  WITH CHECK ADD  CONSTRAINT [FK_Role_Account_Role] FOREIGN KEY([rid])
REFERENCES [dbo].[Role] ([rid])
GO
ALTER TABLE [dbo].[Role_Account] CHECK CONSTRAINT [FK_Role_Account_Role]
GO
ALTER TABLE [dbo].[Role_Feature]  WITH CHECK ADD  CONSTRAINT [FK_Role_Feature_Feature] FOREIGN KEY([fid])
REFERENCES [dbo].[Feature] ([fid])
GO
ALTER TABLE [dbo].[Role_Feature] CHECK CONSTRAINT [FK_Role_Feature_Feature]
GO
ALTER TABLE [dbo].[Role_Feature]  WITH CHECK ADD  CONSTRAINT [FK_Role_Feature_Role] FOREIGN KEY([rid])
REFERENCES [dbo].[Role] ([rid])
GO
ALTER TABLE [dbo].[Role_Feature] CHECK CONSTRAINT [FK_Role_Feature_Role]
GO
ALTER TABLE [dbo].[Session]  WITH CHECK ADD  CONSTRAINT [FK_Session_Group] FOREIGN KEY([gid])
REFERENCES [dbo].[Group] ([gid])
GO
ALTER TABLE [dbo].[Session] CHECK CONSTRAINT [FK_Session_Group]
GO
ALTER TABLE [dbo].[Session]  WITH CHECK ADD  CONSTRAINT [FK_Session_Lecturer] FOREIGN KEY([lid])
REFERENCES [dbo].[Lecturer] ([lid])
GO
ALTER TABLE [dbo].[Session] CHECK CONSTRAINT [FK_Session_Lecturer]
GO
ALTER TABLE [dbo].[Session]  WITH CHECK ADD  CONSTRAINT [FK_Session_Room] FOREIGN KEY([rid])
REFERENCES [dbo].[Room] ([rid])
GO
ALTER TABLE [dbo].[Session] CHECK CONSTRAINT [FK_Session_Room]
GO
ALTER TABLE [dbo].[Session]  WITH CHECK ADD  CONSTRAINT [FK_Session_TimeSlot] FOREIGN KEY([tid])
REFERENCES [dbo].[TimeSlot] ([tid])
GO
ALTER TABLE [dbo].[Session] CHECK CONSTRAINT [FK_Session_TimeSlot]
GO
ALTER TABLE [dbo].[Student_Group]  WITH CHECK ADD  CONSTRAINT [FK_Student_Group_Group] FOREIGN KEY([gid])
REFERENCES [dbo].[Group] ([gid])
GO
ALTER TABLE [dbo].[Student_Group] CHECK CONSTRAINT [FK_Student_Group_Group]
GO
ALTER TABLE [dbo].[Student_Group]  WITH CHECK ADD  CONSTRAINT [FK_Student_Group_Student] FOREIGN KEY([stdid])
REFERENCES [dbo].[Student] ([stdid])
GO
ALTER TABLE [dbo].[Student_Group] CHECK CONSTRAINT [FK_Student_Group_Student]
GO
USE [master]
GO
ALTER DATABASE [PRJ301_Assignment] SET  READ_WRITE 
GO
