USE [ASPdotNET_CRUD]
GO
/****** Object:  Table [dbo].[tbl_Instructions]    Script Date: 3/22/2020 5:19:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Instructions](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](MAX) NULL,
	[description] [nvarchar](MAX) NULL,
	[AddedBy] [varchar](90) NULL,
	[DateAdded] [datetime] NULL,
	[UpdatedBy] [varchar](90) NULL,
	[DateUpdated] [datetime] NULL,
 CONSTRAINT [PK_tbl_Instructions] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_Instructions] ON 

INSERT [dbo].[tbl_Instructions] ([id], [title], [description], [AddedBy], [DateAdded], [UpdatedBy], [DateUpdated]) VALUES (1, N'Introduction to C#', N'Test Description here, okay !', N'Arif', CAST(N'2011-11-11T00:00:00.000' AS DateTime), N'Arif', CAST(N'2011-12-11T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_Instructions] ([id], [title], [description], [AddedBy], [DateAdded], [UpdatedBy], [DateUpdated]) VALUES (2, N'Blog Title', N'Blog Details', N'Admin', CAST(N'2020-03-18T16:40:42.860' AS DateTime), N'', CAST(N'2020-03-22T16:46:58.633' AS DateTime))
INSERT [dbo].[tbl_Instructions] ([id], [title], [description], [AddedBy], [DateAdded], [UpdatedBy], [DateUpdated]) VALUES (3, N'What''s New in Laravel 7 ??', N'Laravel AirLock & Laravel Custom Blade Component', N'Admin', CAST(N'2020-03-19T19:15:49.597' AS DateTime), N'', CAST(N'2020-03-22T12:59:49.510' AS DateTime))
INSERT [dbo].[tbl_Instructions] ([id], [title], [description], [AddedBy], [DateAdded], [UpdatedBy], [DateUpdated]) VALUES (4, N'Bootstrap 5', N'Once again pure JS is back ! with Vannila JS implemented in bootstrap 5 rather than Jquery.', N'Admin', CAST(N'2020-03-19T19:19:01.127' AS DateTime), N'', CAST(N'2020-03-22T12:59:34.633' AS DateTime))
INSERT [dbo].[tbl_Instructions] ([id], [title], [description], [AddedBy], [DateAdded], [UpdatedBy], [DateUpdated]) VALUES (10, N'Corona Virus Research & Report', N'Highest Death Toll In Italy 976 Dead In The Last 24 Hours', N'Admin', CAST(N'2020-03-22T12:11:28.447' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[tbl_Instructions] OFF
/****** Object:  StoredProcedure [dbo].[CREATE_SP]    Script Date: 3/22/2020 5:19:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/****** Object:  StoredProcedure [dbo].[SP_SET_tbl_Instructions]    Script Date: 3/22/2020 5:19:07 PM ******/
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
USE [master]
GO
ALTER DATABASE [ASPdotNET_CRUD] SET  READ_WRITE 
GO
