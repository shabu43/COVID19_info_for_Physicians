USE [ASPdotNET_CRUD]
GO
/****** Object:  Table [dbo].[tbl_Blog]    Script Date: 7/6/2020 8:39:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Blog](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
	[AddedBy] [varchar](90) NULL,
	[DateAdded] [datetime] NULL,
	[UpdatedBy] [varchar](90) NULL,
	[DateUpdated] [datetime] NULL,
 CONSTRAINT [PK_tbl_Blog] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Dealpatient]    Script Date: 7/6/2020 8:39:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Dealpatient](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
	[AddedBy] [varchar](90) NULL,
	[DateAdded] [datetime] NULL,
	[UpdatedBy] [varchar](90) NULL,
	[DateUpdated] [datetime] NULL,
 CONSTRAINT [PK_tbl_Dealpatient] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Findings]    Script Date: 7/6/2020 8:39:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Findings](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
	[AddedBy] [varchar](90) NULL,
	[DateAdded] [datetime] NULL,
	[UpdatedBy] [varchar](90) NULL,
	[DateUpdated] [datetime] NULL,
 CONSTRAINT [PK_tbl_Findings] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Instructions]    Script Date: 7/6/2020 8:39:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Instructions](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
	[AddedBy] [varchar](90) NULL,
	[DateAdded] [datetime] NULL,
	[UpdatedBy] [varchar](90) NULL,
	[DateUpdated] [datetime] NULL,
 CONSTRAINT [PK_tbl_Instructions] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Reference]    Script Date: 7/6/2020 8:39:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Reference](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
	[AddedBy] [varchar](90) NULL,
	[DateAdded] [datetime] NULL,
	[UpdatedBy] [varchar](90) NULL,
	[DateUpdated] [datetime] NULL,
 CONSTRAINT [PK_tbl_Reference] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_user]    Script Date: 7/6/2020 8:39:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_user](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NOT NULL,
	[email] [nvarchar](max) NOT NULL,
	[password] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_tbl_user] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[CREATE_SP]    Script Date: 7/6/2020 8:39:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--EXEC CREATE_SP 'Inv_FabricRollMaster','RollMasterID'CREATE PROCEDURE [dbo].[CREATE_SP]--DECLARE @TableName VARCHAR(50)='Product',@PrimaryColumnName VARCHAR(150)='ProductID'@TableName VARCHAR(200)='',@PrimaryColumnName VARCHAR(150)=''ASCREATE TABLE #tablColumn(ID INT IDENTITY, ColName VARCHAR(50),ColType VARCHAR(50),ColLen VARCHAR(50))INSERT INTO #tablColumnSELECT COLUMN_NAME,DATA_TYPE,CASE WHEN UPPER(DATA_TYPE) IN('NUMERIC','DECIMAL') THEN CAST(NUMERIC_PRECISION AS VARCHAR(50))+','+ CAST(NUMERIC_SCALE AS VARCHAR(50))ELSE CAST(CHARACTER_MAXIMUM_LENGTH AS VARCHAR(50)) END CHARACTER_MAXIMUM_LENGTHFROM INFORMATION_SCHEMA.COLUMNSWHERE TABLE_NAME = @TableNameSET NOCOUNT ONDECLARE @NewLineChar AS CHAR(2) = CHAR(13) + CHAR(10)DECLARE @ID INT = 1, @COUNT INT,@ColName VARCHAR(50)='',@ColType VARCHAR(50)='',@ColLen VARCHAR(50) = 0,@DeclareSection VARCHAR(MAX)='',@SaveSection VARCHAR(MAX)='',@UpdateSection VARCHAR(MAX)='',@LoadAllSection VARCHAR(MAX)='',@LoadSelectedSection VARCHAR(MAX)='',@DeleteSelectedSection VARCHAR(MAX)='',@ColumnNames VARCHAR(MAX),@SaveColumnNames VARCHAR(MAX),@UpdateColumnNames VARCHAR(MAX),@VariableNames VARCHAR(MAX),@SaveVariableNames  VARCHAR(MAX)SELECT @ColumnNames = COALESCE(@ColumnNames + ', ', '') + ColName,@VariableNames = COALESCE(@VariableNames + ', ', '') +'@'+ColNameFROM #tablColumnWHERE ColName NOT IN ('AddedBy','DateAdded','UpdatedBy','DateUpdated')SELECT @SaveColumnNames = COALESCE(@SaveColumnNames + ',', '') + ColName,@SaveVariableNames = COALESCE(@SaveVariableNames + ', ', '') +'@'+ColNameFROM #tablColumnWHERE ColName NOT IN ('AddedBy','DateAdded','UpdatedBy','DateUpdated')AND ColName <> @PrimaryColumnNameSET @COUNT = (SELECT COUNT(*) FROM #tablColumn)SET @DeclareSection += 'CREATE PROCEDURE SP_SET_'+UPPER(@TableName)+@NewLineChar+'@QryOption AS INT = -1,'+@NewLineCharSET @SaveSection = 'IF @QryOption = @SAVE_DATA'+@NewLineChar+'BEGIN'+@NewLineChar+' INSERT INTO '+@TableName+'('+@SaveColumnNames+',AddedBy,DateAdded) VALUES('+@SaveVariableNames+',@AddedBy,GETDATE())'+@NewLineChar+'END'+@NewLineCharSELECT @UpdateColumnNames = COALESCE(@UpdateColumnNames + ', ', '') + ColName+' = @'+ColNameFROM #tablColumnWHERE ColName NOT IN ('AddedBy','DateAdded','UpdatedBy','DateUpdated') AND ColName <> @PrimaryColumnNameSET @UpdateSection = 'ELSE IF @QryOption = @UPDATE_DATA'+@NewLineChar+'BEGIN'+@NewLineChar+' UPDATE '+@TableName + ' SET '+ @UpdateColumnNames+', UpdatedBy=@AddedBy, DateUpdated = GETDATE()'+@NewLineChar+' WHERE '+@PrimaryColumnName +' = @'+@PrimaryColumnName+@NewLineChar+'END'+@NewLineCharSET @LoadAllSection = 'ELSE IF @QryOption = @LOAD_ALL_DATA'+@NewLineChar+'BEGIN'+@NewLineChar+' SELECT '+@ColumnNames+@NewLineChar+' FROM '+@TableName+@NewLineChar+'END'+@NewLineCharSET @LoadSelectedSection = 'ELSE IF @QryOption = @LOAD_SELECTED_DATA'+@NewLineChar+'BEGIN'+@NewLineChar+' SELECT '+@ColumnNames+@NewLineChar+' FROM '+@TableName+@NewLineChar+' WHERE '+@PrimaryColumnName +' = @'+@PrimaryColumnName+@NewLineChar+'END'+@NewLineCharSET @DeleteSelectedSection = 'ELSE IF @QryOption = @DELETE_DATA'+@NewLineChar+'BEGIN'+@NewLineChar+' DELETE FROM '+@TableName+@NewLineChar+' WHERE '+@PrimaryColumnName +' = @'+@PrimaryColumnName+@NewLineChar+'END'+@NewLineCharWHILE @ID <= @COUNTBEGINSELECT @ColName = ColName,@ColType = ColType,@ColLen = ColLen FROM #tablColumn WHERE ID = @IDIF UPPER(@ColType) = 'INT' AND @ColName NOT IN ('AddedBy','DateAdded','UpdatedBy','DateUpdated')BEGINSET @DeclareSection += '@'+@ColName +' INT = -1,'+@NewLineCharENDELSE IF UPPER(@ColType) = 'VARCHAR' AND @ColName NOT IN ('AddedBy','DateAdded','UpdatedBy','DateUpdated')BEGINSET @DeclareSection += '@'+@ColName +' VARCHAR('+@ColLen+') = '''','+@NewLineCharENDELSE IF UPPER(@ColType) = 'BIT' AND @ColName NOT IN ('AddedBy','DateAdded','UpdatedBy','DateUpdated')BEGINSET @DeclareSection += '@'+@ColName +' BIT = 0,'+@NewLineCharENDELSE IF UPPER(@ColType) = 'DECIMAL' AND @ColName NOT IN ('AddedBy','DateAdded','UpdatedBy','DateUpdated')BEGINSET @DeclareSection += '@'+@ColName +' DECIMAL('+@ColLen+') = 0.00,'+@NewLineCharENDELSE IF UPPER(@ColType) = 'NUMERIC' AND @ColName NOT IN ('AddedBy','DateAdded','UpdatedBy','DateUpdated')BEGINSET @DeclareSection += '@'+@ColName +' NUMERIC('+@ColLen+') = 0.00,'+@NewLineCharENDELSE IF UPPER(@ColType) = 'NVARCHAR' AND @ColName NOT IN ('AddedBy','DateAdded','UpdatedBy','DateUpdated')BEGINSET @DeclareSection += '@'+@ColName +' NVARCHAR('+@ColLen+') = '''','+@NewLineCharENDELSE IF UPPER(@ColType) ='DATE' AND @ColName NOT IN ('AddedBy','DateAdded','UpdatedBy','DateUpdated')BEGINSET @DeclareSection += '@'+@ColName +' DATE = ''1/1/1900'','+@NewLineCharENDELSE IF UPPER(@ColType) = 'DATETIME' AND @ColName NOT IN ('AddedBy','DateAdded','UpdatedBy','DateUpdated')BEGINSET @DeclareSection += '@'+@ColName +' DATETIME = ''1/1/1900'','+@NewLineCharENDELSE IF UPPER(@ColType) = 'BIGINT' AND @ColName NOT IN ('AddedBy','DateAdded','UpdatedBy','DateUpdated')BEGINSET @DeclareSection += '@'+@ColName +' BIGINT = -1,'+@NewLineCharENDSET @ID += 1ENDSET @DeclareSection += '@AddedBy VARCHAR(50) = '''''+@NewLineCharSET @DeclareSection +='AS'+@NewLineChar+@NewLineChar+'DECLARE @SAVE_DATA INT = -1,@UPDATE_DATA INT = -1,@LOAD_ALL_DATA INT = -1,@LOAD_SELECTED_DATA INT = -1,@DELETE_DATA INT = -1SET @SAVE_DATA = 1SET @UPDATE_DATA=2SET @LOAD_ALL_DATA=3SET @LOAD_SELECTED_DATA=4SET @DELETE_DATA=5'+@NewLineChar+@NewLineCharPRINT @DeclareSectionPRINT @SaveSectionPRINT @UpdateSectionPRINT @LoadAllSectionPRINT @LoadSelectedSectionPRINT @DeleteSelectedSectionDROP TABLE #tablColumn
GO
/****** Object:  StoredProcedure [dbo].[SP_SET_Search]    Script Date: 7/6/2020 8:39:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_SET_Search]
	@QryOption VARCHAR(Max) = ''
AS

BEGIN
 (SELECT distinct id, title, description, AddedBy, CONVERT(VARCHAR(11), DateAdded, 104) AS DateAdded
 FROM tbl_Blog where title like @QryOption or description like @QryOption)
 UNION
 (SELECT distinct id, title, description, AddedBy, CONVERT(VARCHAR(11), DateAdded, 104) AS DateAdded
 FROM tbl_Findings where title like @QryOption or description like @QryOption)
 UNION
 (SELECT distinct id, title, description, AddedBy, CONVERT(VARCHAR(11), DateAdded, 104) AS DateAdded
 FROM tbl_Instructions where title like @QryOption or description like @QryOption)
END
GO
/****** Object:  StoredProcedure [dbo].[SP_SET_TBL_BLOG]    Script Date: 7/6/2020 8:39:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_SET_TBL_BLOG]
@QryOption AS INT = -1,
@id INT = -1,
@title NVARCHAR(MAX) = '',
@description NVARCHAR(MAX) = '',
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
 SELECT id, title, description, AddedBy, CONVERT(VARCHAR(11), DateUpdated, 104) AS DateAdded
 FROM tbl_Blog
END
ELSE IF @QryOption = @LOAD_SELECTED_DATA
BEGIN
 SELECT id, title, description, AddedBy, CONVERT(VARCHAR(11), DateUpdated, 104) AS DateAdded
 FROM tbl_Blog
 WHERE id = @id
END
ELSE IF @QryOption = @DELETE_DATA
BEGIN
 DELETE FROM tbl_Blog
 WHERE id = @id
END
GO
/****** Object:  StoredProcedure [dbo].[SP_SET_TBL_Dealpatient]    Script Date: 7/6/2020 8:39:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_SET_TBL_Dealpatient]
@QryOption AS INT = -1,
@id INT = -1,
@title NVARCHAR(MAX) = '',
@description NVARCHAR(MAX) = '',
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
 INSERT INTO tbl_Dealpatient(title,description,AddedBy,DateAdded) VALUES(@title, @description,@AddedBy,GETDATE())
END
ELSE IF @QryOption = @UPDATE_DATA
BEGIN
 UPDATE tbl_Dealpatient SET title = @title, description = @description, UpdatedBy=@AddedBy, DateUpdated = GETDATE()
 WHERE id = @id
END
ELSE IF @QryOption = @LOAD_ALL_DATA
BEGIN
 SELECT id, title, description, AddedBy, CONVERT(VARCHAR(11), DateAdded, 104) AS DateAdded
 FROM tbl_Dealpatient
END
ELSE IF @QryOption = @LOAD_SELECTED_DATA
BEGIN
 SELECT id, title, description, AddedBy, CONVERT(VARCHAR(11), DateAdded, 104) AS DateAdded
 FROM tbl_Dealpatient
 WHERE id = @id
END
ELSE IF @QryOption = @DELETE_DATA
BEGIN
 DELETE FROM tbl_Dealpatient
 WHERE id = @id
END
GO
/****** Object:  StoredProcedure [dbo].[SP_SET_TBL_Findings]    Script Date: 7/6/2020 8:39:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_SET_TBL_Findings]
@QryOption AS INT = -1,
@id INT = -1,
@title NVARCHAR(MAX) = '',
@description NVARCHAR(MAX) = '',
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
 INSERT INTO tbl_Findings(title,description,AddedBy,DateAdded) VALUES(@title, @description,@AddedBy,GETDATE())
END
ELSE IF @QryOption = @UPDATE_DATA
BEGIN
 UPDATE tbl_Findings SET title = @title, description = @description, UpdatedBy=@AddedBy, DateUpdated = GETDATE()
 WHERE id = @id
END
ELSE IF @QryOption = @LOAD_ALL_DATA
BEGIN
 SELECT id, title, description, AddedBy, CONVERT(VARCHAR(11), DateAdded, 104) AS DateAdded
 FROM tbl_Findings
END
ELSE IF @QryOption = @LOAD_SELECTED_DATA
BEGIN
 SELECT id, title, description, AddedBy, CONVERT(VARCHAR(11), DateAdded, 104) AS DateAdded
 FROM tbl_Findings
 WHERE id = @id
END
ELSE IF @QryOption = @DELETE_DATA
BEGIN
 DELETE FROM tbl_Findings
 WHERE id = @id
END
GO
/****** Object:  StoredProcedure [dbo].[SP_SET_TBL_Instrcuctions]    Script Date: 7/6/2020 8:39:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_SET_TBL_Instrcuctions]
@QryOption AS INT = -1,
@id INT = -1,
@title NVARCHAR(MAX) = '',
@description NVARCHAR(MAX) = '',
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
 INSERT INTO tbl_Instructions(title,description,AddedBy,DateAdded) VALUES(@title, @description,@AddedBy,GETDATE())
END
ELSE IF @QryOption = @UPDATE_DATA
BEGIN
 UPDATE tbl_Instructions SET title = @title, description = @description, UpdatedBy=@AddedBy, DateUpdated = GETDATE()
 WHERE id = @id
END
ELSE IF @QryOption = @LOAD_ALL_DATA
BEGIN
 SELECT id, title, description, AddedBy, CONVERT(VARCHAR(11), DateAdded, 104) AS DateAdded
 FROM tbl_Instructions
END
ELSE IF @QryOption = @LOAD_SELECTED_DATA
BEGIN
 SELECT id, title, description, AddedBy, CONVERT(VARCHAR(11), DateAdded, 104) AS DateAdded
 FROM tbl_Instructions
 WHERE id = @id
END
ELSE IF @QryOption = @DELETE_DATA
BEGIN
 DELETE FROM tbl_Instructions
 WHERE id = @id
END
GO
/****** Object:  StoredProcedure [dbo].[SP_SET_TBL_Reference]    Script Date: 7/6/2020 8:39:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_SET_TBL_Reference]
@QryOption AS INT = -1,
@id INT = -1,
@title NVARCHAR(MAX) = '',
@description NVARCHAR(MAX) = '',
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
 INSERT INTO tbl_Reference(title,description,AddedBy,DateAdded) VALUES(@title, @description,@AddedBy,GETDATE())
END
ELSE IF @QryOption = @UPDATE_DATA
BEGIN
 UPDATE tbl_Reference SET title = @title, description = @description, UpdatedBy=@AddedBy, DateUpdated = GETDATE()
 WHERE id = @id
END
ELSE IF @QryOption = @LOAD_ALL_DATA
BEGIN
 SELECT id, title, description, AddedBy, CONVERT(VARCHAR(11), DateAdded, 104) AS DateAdded
 FROM tbl_Reference
END
ELSE IF @QryOption = @LOAD_SELECTED_DATA
BEGIN
 SELECT id, title, description, AddedBy, CONVERT(VARCHAR(11), DateAdded, 104) AS DateAdded
 FROM tbl_Reference
 WHERE id = @id
END
ELSE IF @QryOption = @DELETE_DATA
BEGIN
 DELETE FROM tbl_Reference
 WHERE id = @id
END
GO
/****** Object:  StoredProcedure [dbo].[SP_SET_TBL_user]    Script Date: 7/6/2020 8:39:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_SET_TBL_user]
@QryOption AS INT = -1,
	@id AS INT = -1,
	@name AS VARCHAR(Max) = '',
	@email AS VARCHAR(Max) = '',
	@password AS VARCHAR(Max) = ''
AS

DECLARE @SAVE_DATA INT = -1,
@LOAD_ALL_DATA INT = -1

SET @SAVE_DATA = 1
SET @LOAD_ALL_DATA=2


IF @QryOption = @SAVE_DATA
BEGIN
 INSERT INTO tbl_user(name,email,password) VALUES(@name, @email,@password)
END
ELSE IF @QryOption = @LOAD_ALL_DATA
BEGIN
 SELECT id,name,email,password From tbl_user WHERE email=@email AND password=@password
END

GO
