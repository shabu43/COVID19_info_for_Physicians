USE [master]
GO
/****** Object:  Database [ASPdotNET_CRUD]    Script Date: 3/22/2020 5:19:07 PM ******/
CREATE DATABASE [ASPdotNET_CRUD]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ASPdotNET_CRUD', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\ASPdotNET_CRUD.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ASPdotNET_CRUD_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\ASPdotNET_CRUD_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [ASPdotNET_CRUD] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ASPdotNET_CRUD].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ASPdotNET_CRUD] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ASPdotNET_CRUD] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ASPdotNET_CRUD] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ASPdotNET_CRUD] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ASPdotNET_CRUD] SET ARITHABORT OFF 
GO
ALTER DATABASE [ASPdotNET_CRUD] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ASPdotNET_CRUD] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ASPdotNET_CRUD] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ASPdotNET_CRUD] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ASPdotNET_CRUD] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ASPdotNET_CRUD] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ASPdotNET_CRUD] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ASPdotNET_CRUD] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ASPdotNET_CRUD] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ASPdotNET_CRUD] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ASPdotNET_CRUD] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ASPdotNET_CRUD] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ASPdotNET_CRUD] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ASPdotNET_CRUD] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ASPdotNET_CRUD] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ASPdotNET_CRUD] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ASPdotNET_CRUD] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ASPdotNET_CRUD] SET RECOVERY FULL 
GO
ALTER DATABASE [ASPdotNET_CRUD] SET  MULTI_USER 
GO
ALTER DATABASE [ASPdotNET_CRUD] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ASPdotNET_CRUD] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ASPdotNET_CRUD] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ASPdotNET_CRUD] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ASPdotNET_CRUD] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'ASPdotNET_CRUD', N'ON'
GO
ALTER DATABASE [ASPdotNET_CRUD] SET QUERY_STORE = OFF
GO
USE [ASPdotNET_CRUD]
GO
/****** Object:  Table [dbo].[tbl_Blog]    Script Date: 3/22/2020 5:19:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Blog](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](50) NULL,
	[description] [varchar](191) NULL,
	[AddedBy] [varchar](90) NULL,
	[DateAdded] [datetime] NULL,
	[UpdatedBy] [varchar](90) NULL,
	[DateUpdated] [datetime] NULL,
 CONSTRAINT [PK_tbl_Blog] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_Blog] ON 

INSERT [dbo].[tbl_Blog] ([id], [title], [description], [AddedBy], [DateAdded], [UpdatedBy], [DateUpdated]) VALUES (1, N'Introduction to C#', N'Test Description here, okay !', N'Arif', CAST(N'2011-11-11T00:00:00.000' AS DateTime), N'Arif', CAST(N'2011-12-11T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_Blog] ([id], [title], [description], [AddedBy], [DateAdded], [UpdatedBy], [DateUpdated]) VALUES (2, N'Blog Title', N'Blog Details', N'Admin', CAST(N'2020-03-18T16:40:42.860' AS DateTime), N'', CAST(N'2020-03-22T16:46:58.633' AS DateTime))
INSERT [dbo].[tbl_Blog] ([id], [title], [description], [AddedBy], [DateAdded], [UpdatedBy], [DateUpdated]) VALUES (3, N'What''s New in Laravel 7 ??', N'Laravel AirLock & Laravel Custom Blade Component', N'Admin', CAST(N'2020-03-19T19:15:49.597' AS DateTime), N'', CAST(N'2020-03-22T12:59:49.510' AS DateTime))
INSERT [dbo].[tbl_Blog] ([id], [title], [description], [AddedBy], [DateAdded], [UpdatedBy], [DateUpdated]) VALUES (4, N'Bootstrap 5', N'Once again pure JS is back ! with Vannila JS implemented in bootstrap 5 rather than Jquery.', N'Admin', CAST(N'2020-03-19T19:19:01.127' AS DateTime), N'', CAST(N'2020-03-22T12:59:34.633' AS DateTime))
INSERT [dbo].[tbl_Blog] ([id], [title], [description], [AddedBy], [DateAdded], [UpdatedBy], [DateUpdated]) VALUES (10, N'Corona Virus Research & Report', N'Highest Death Toll In Italy 976 Dead In The Last 24 Hours', N'Admin', CAST(N'2020-03-22T12:11:28.447' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[tbl_Blog] OFF
/****** Object:  StoredProcedure [dbo].[CREATE_SP]    Script Date: 3/22/2020 5:19:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--EXEC CREATE_SP 'Inv_FabricRollMaster','RollMasterID'CREATE PROCEDURE [dbo].[CREATE_SP]--DECLARE @TableName VARCHAR(50)='Product',@PrimaryColumnName VARCHAR(150)='ProductID'@TableName VARCHAR(200)='',@PrimaryColumnName VARCHAR(150)=''ASCREATE TABLE #tablColumn(ID INT IDENTITY, ColName VARCHAR(50),ColType VARCHAR(50),ColLen VARCHAR(50))INSERT INTO #tablColumnSELECT COLUMN_NAME,DATA_TYPE,CASE WHEN UPPER(DATA_TYPE) IN('NUMERIC','DECIMAL') THEN CAST(NUMERIC_PRECISION AS VARCHAR(50))+','+ CAST(NUMERIC_SCALE AS VARCHAR(50))ELSE CAST(CHARACTER_MAXIMUM_LENGTH AS VARCHAR(50)) END CHARACTER_MAXIMUM_LENGTHFROM INFORMATION_SCHEMA.COLUMNSWHERE TABLE_NAME = @TableNameSET NOCOUNT ONDECLARE @NewLineChar AS CHAR(2) = CHAR(13) + CHAR(10)DECLARE @ID INT = 1, @COUNT INT,@ColName VARCHAR(50)='',@ColType VARCHAR(50)='',@ColLen VARCHAR(50) = 0,@DeclareSection VARCHAR(MAX)='',@SaveSection VARCHAR(MAX)='',@UpdateSection VARCHAR(MAX)='',@LoadAllSection VARCHAR(MAX)='',@LoadSelectedSection VARCHAR(MAX)='',@DeleteSelectedSection VARCHAR(MAX)='',@ColumnNames VARCHAR(MAX),@SaveColumnNames VARCHAR(MAX),@UpdateColumnNames VARCHAR(MAX),@VariableNames VARCHAR(MAX),@SaveVariableNames  VARCHAR(MAX)SELECT @ColumnNames = COALESCE(@ColumnNames + ', ', '') + ColName,@VariableNames = COALESCE(@VariableNames + ', ', '') +'@'+ColNameFROM #tablColumnWHERE ColName NOT IN ('AddedBy','DateAdded','UpdatedBy','DateUpdated')SELECT @SaveColumnNames = COALESCE(@SaveColumnNames + ',', '') + ColName,@SaveVariableNames = COALESCE(@SaveVariableNames + ', ', '') +'@'+ColNameFROM #tablColumnWHERE ColName NOT IN ('AddedBy','DateAdded','UpdatedBy','DateUpdated')AND ColName <> @PrimaryColumnNameSET @COUNT = (SELECT COUNT(*) FROM #tablColumn)SET @DeclareSection += 'CREATE PROCEDURE SP_SET_'+UPPER(@TableName)+@NewLineChar+'@QryOption AS INT = -1,'+@NewLineCharSET @SaveSection = 'IF @QryOption = @SAVE_DATA'+@NewLineChar+'BEGIN'+@NewLineChar+' INSERT INTO '+@TableName+'('+@SaveColumnNames+',AddedBy,DateAdded) VALUES('+@SaveVariableNames+',@AddedBy,GETDATE())'+@NewLineChar+'END'+@NewLineCharSELECT @UpdateColumnNames = COALESCE(@UpdateColumnNames + ', ', '') + ColName+' = @'+ColNameFROM #tablColumnWHERE ColName NOT IN ('AddedBy','DateAdded','UpdatedBy','DateUpdated') AND ColName <> @PrimaryColumnNameSET @UpdateSection = 'ELSE IF @QryOption = @UPDATE_DATA'+@NewLineChar+'BEGIN'+@NewLineChar+' UPDATE '+@TableName + ' SET '+ @UpdateColumnNames+', UpdatedBy=@AddedBy, DateUpdated = GETDATE()'+@NewLineChar+' WHERE '+@PrimaryColumnName +' = @'+@PrimaryColumnName+@NewLineChar+'END'+@NewLineCharSET @LoadAllSection = 'ELSE IF @QryOption = @LOAD_ALL_DATA'+@NewLineChar+'BEGIN'+@NewLineChar+' SELECT '+@ColumnNames+@NewLineChar+' FROM '+@TableName+@NewLineChar+'END'+@NewLineCharSET @LoadSelectedSection = 'ELSE IF @QryOption = @LOAD_SELECTED_DATA'+@NewLineChar+'BEGIN'+@NewLineChar+' SELECT '+@ColumnNames+@NewLineChar+' FROM '+@TableName+@NewLineChar+' WHERE '+@PrimaryColumnName +' = @'+@PrimaryColumnName+@NewLineChar+'END'+@NewLineCharSET @DeleteSelectedSection = 'ELSE IF @QryOption = @DELETE_DATA'+@NewLineChar+'BEGIN'+@NewLineChar+' DELETE FROM '+@TableName+@NewLineChar+' WHERE '+@PrimaryColumnName +' = @'+@PrimaryColumnName+@NewLineChar+'END'+@NewLineCharWHILE @ID <= @COUNTBEGINSELECT @ColName = ColName,@ColType = ColType,@ColLen = ColLen FROM #tablColumn WHERE ID = @IDIF UPPER(@ColType) = 'INT' AND @ColName NOT IN ('AddedBy','DateAdded','UpdatedBy','DateUpdated')BEGINSET @DeclareSection += '@'+@ColName +' INT = -1,'+@NewLineCharENDELSE IF UPPER(@ColType) = 'VARCHAR' AND @ColName NOT IN ('AddedBy','DateAdded','UpdatedBy','DateUpdated')BEGINSET @DeclareSection += '@'+@ColName +' VARCHAR('+@ColLen+') = '''','+@NewLineCharENDELSE IF UPPER(@ColType) = 'BIT' AND @ColName NOT IN ('AddedBy','DateAdded','UpdatedBy','DateUpdated')BEGINSET @DeclareSection += '@'+@ColName +' BIT = 0,'+@NewLineCharENDELSE IF UPPER(@ColType) = 'DECIMAL' AND @ColName NOT IN ('AddedBy','DateAdded','UpdatedBy','DateUpdated')BEGINSET @DeclareSection += '@'+@ColName +' DECIMAL('+@ColLen+') = 0.00,'+@NewLineCharENDELSE IF UPPER(@ColType) = 'NUMERIC' AND @ColName NOT IN ('AddedBy','DateAdded','UpdatedBy','DateUpdated')BEGINSET @DeclareSection += '@'+@ColName +' NUMERIC('+@ColLen+') = 0.00,'+@NewLineCharENDELSE IF UPPER(@ColType) = 'NVARCHAR' AND @ColName NOT IN ('AddedBy','DateAdded','UpdatedBy','DateUpdated')BEGINSET @DeclareSection += '@'+@ColName +' NVARCHAR('+@ColLen+') = '''','+@NewLineCharENDELSE IF UPPER(@ColType) ='DATE' AND @ColName NOT IN ('AddedBy','DateAdded','UpdatedBy','DateUpdated')BEGINSET @DeclareSection += '@'+@ColName +' DATE = ''1/1/1900'','+@NewLineCharENDELSE IF UPPER(@ColType) = 'DATETIME' AND @ColName NOT IN ('AddedBy','DateAdded','UpdatedBy','DateUpdated')BEGINSET @DeclareSection += '@'+@ColName +' DATETIME = ''1/1/1900'','+@NewLineCharENDELSE IF UPPER(@ColType) = 'BIGINT' AND @ColName NOT IN ('AddedBy','DateAdded','UpdatedBy','DateUpdated')BEGINSET @DeclareSection += '@'+@ColName +' BIGINT = -1,'+@NewLineCharENDSET @ID += 1ENDSET @DeclareSection += '@AddedBy VARCHAR(50) = '''''+@NewLineCharSET @DeclareSection +='AS'+@NewLineChar+@NewLineChar+'DECLARE @SAVE_DATA INT = -1,@UPDATE_DATA INT = -1,@LOAD_ALL_DATA INT = -1,@LOAD_SELECTED_DATA INT = -1,@DELETE_DATA INT = -1SET @SAVE_DATA = 1SET @UPDATE_DATA=2SET @LOAD_ALL_DATA=3SET @LOAD_SELECTED_DATA=4SET @DELETE_DATA=5'+@NewLineChar+@NewLineCharPRINT @DeclareSectionPRINT @SaveSectionPRINT @UpdateSectionPRINT @LoadAllSectionPRINT @LoadSelectedSectionPRINT @DeleteSelectedSectionDROP TABLE #tablColumn
GO
/****** Object:  StoredProcedure [dbo].[SP_SET_TBL_BLOG]    Script Date: 3/22/2020 5:19:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_SET_TBL_BLOG]
@QryOption AS INT = -1,
@id INT = -1,
@title VARCHAR(50) = '',
@description VARCHAR(191) = '',
@AddedBy VARCHAR(50) = ''
AS

DECLARE @SAVE_DATA INT = -1,
@UPDATE_DATA INT = -1,
@LOAD_ALL_DATA INT = -1,
@LOAD_SELECTED_DATA INT = -1,
@DELETE_DATA INT = -1

SET @SAVE_DATA = 1
SET @UPDATE_DATA=2
SET @LOAD_ALL_DATA=3
SET @LOAD_SELECTED_DATA=4
SET @DELETE_DATA=5

IF @QryOption = @SAVE_DATA
BEGIN
 INSERT INTO tbl_Blog(title,description,AddedBy,DateAdded) VALUES(@title, @description,@AddedBy,GETDATE())
END
ELSE IF @QryOption = @UPDATE_DATA
BEGIN
 UPDATE tbl_Blog SET title = @title, description = @description, UpdatedBy=@AddedBy, DateUpdated = GETDATE()
 WHERE id = @id
END
ELSE IF @QryOption = @LOAD_ALL_DATA
BEGIN
 SELECT id, title, description, AddedBy, CONVERT(VARCHAR(11), DateAdded, 104) AS DateAdded
 FROM tbl_Blog
END
ELSE IF @QryOption = @LOAD_SELECTED_DATA
BEGIN
 SELECT id, title, description, AddedBy, CONVERT(VARCHAR(11), DateAdded, 104) AS DateAdded
 FROM tbl_Blog
 WHERE id = @id
END
ELSE IF @QryOption = @DELETE_DATA
BEGIN
 DELETE FROM tbl_Blog
 WHERE id = @id
END
GO
USE [master]
GO
ALTER DATABASE [ASPdotNET_CRUD] SET  READ_WRITE 
GO
