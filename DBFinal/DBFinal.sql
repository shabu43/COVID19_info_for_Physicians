USE [master]
GO
/****** Object:  Database [ASPdotNET_CRUD]    Script Date: 7/28/2020 2:48:24 AM ******/
CREATE DATABASE [ASPdotNET_CRUD]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ASPdotNET_CRUD', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ASPdotNET_CRUD.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ASPdotNET_CRUD_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ASPdotNET_CRUD_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
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
/****** Object:  Table [dbo].[tbl_Blog]    Script Date: 7/28/2020 2:48:29 AM ******/
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
/****** Object:  Table [dbo].[tbl_Dealpatient]    Script Date: 7/28/2020 2:48:30 AM ******/
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
/****** Object:  Table [dbo].[tbl_Findings]    Script Date: 7/28/2020 2:48:30 AM ******/
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
/****** Object:  Table [dbo].[tbl_Forum]    Script Date: 7/28/2020 2:48:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Forum](
	[postid] [int] IDENTITY(1,1) NOT NULL,
	[query] [nvarchar](max) NOT NULL,
	[userid] [int] NOT NULL,
	[DateAdded] [datetime] NOT NULL,
 CONSTRAINT [PK_tbl_Forum] PRIMARY KEY CLUSTERED 
(
	[postid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_ForumReply]    Script Date: 7/28/2020 2:48:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_ForumReply](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[reply] [nvarchar](max) NOT NULL,
	[userid] [int] NOT NULL,
	[postid] [int] NOT NULL,
	[DateAdded] [datetime] NOT NULL,
 CONSTRAINT [PK_tbl_ForumReply] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Instructions]    Script Date: 7/28/2020 2:48:30 AM ******/
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
/****** Object:  Table [dbo].[tbl_Reference]    Script Date: 7/28/2020 2:48:30 AM ******/
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
/****** Object:  Table [dbo].[tbl_user]    Script Date: 7/28/2020 2:48:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_user](
	[userid] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NOT NULL,
	[email] [nvarchar](max) NOT NULL,
	[password] [nvarchar](max) NOT NULL,
	[usertype] [int] NULL,
 CONSTRAINT [PK_tbl_user] PRIMARY KEY CLUSTERED 
(
	[userid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_Blog] ON 

INSERT [dbo].[tbl_Blog] ([id], [title], [description], [AddedBy], [DateAdded], [UpdatedBy], [DateUpdated]) VALUES (3, N'Most common symptoms:', N'⚪ fever (37.8C or greater) <br>
⚪ dry cough <br>
⚪ tiredness <br>
', N'Admin', CAST(N'2020-03-19T19:15:49.597' AS DateTime), N'', CAST(N'2020-06-26T20:15:11.177' AS DateTime))
INSERT [dbo].[tbl_Blog] ([id], [title], [description], [AddedBy], [DateAdded], [UpdatedBy], [DateUpdated]) VALUES (10, N'Less Common Symptomps', N'⚪ aches and pains<br>
⚪ sore throat<br>
⚪ diarrhoea<br>
⚪ conjunctivitis<br>
⚪ headache<br>
⚪ loss of taste or smell<br>
⚪ a rash on skin, or discolouration of fingers or toes<br>
', N'Admin', CAST(N'2020-03-22T12:11:28.447' AS DateTime), N'', CAST(N'2020-07-09T23:33:00.830' AS DateTime))
INSERT [dbo].[tbl_Blog] ([id], [title], [description], [AddedBy], [DateAdded], [UpdatedBy], [DateUpdated]) VALUES (13, N'The Critical Guide To Recognizing The First Symptoms Of Coronavirus!', N'<iframe width="853" height="480" src="https://www.youtube.com/embed/Jria6qxIuRs" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>', N'Admin', CAST(N'2020-06-22T03:03:55.963' AS DateTime), N'', CAST(N'2020-07-09T23:35:11.083' AS DateTime))
INSERT [dbo].[tbl_Blog] ([id], [title], [description], [AddedBy], [DateAdded], [UpdatedBy], [DateUpdated]) VALUES (15, N'Presentation', N'The signs and symptoms of COVID-19 present at illness onset vary, but over the course of the disease, most persons with COVID-19 will experience the following1,4-9:<br>

Fever (83–99%)<br>
Cough (59–82%)<br>
Fatigue (44–70%)<br>
Anorexia (40–84%)<br>
Shortness of breath (31–40%)<br>
Sputum production (28–33%)<br>
Myalgia (11–35%)<br>
Atypical presentations have been described, and older adults and persons with medical comorbidities may have delayed presentation of fever and respiratory symptoms.10,11 In one study of 1,099 hospitalized patients, fever was present in only 44% at hospital admission but later developed in 89% during hospitalization.1 Headache, confusion, rhinorrhea, sore throat, hemoptysis, vomiting, and diarrhea have been reported but are less common (<10%).1,4-6 Some persons with COVID-19 have experienced gastrointestinal symptoms such as diarrhea and nausea prior to developing fever and lower respiratory tract signs and symptoms.9 Anosmia or ageusia preceding the onset of respiratory symptoms has been anecdotally reported12, but more information is needed to understand its role in identifying COVID-19.

Several studies have reported that the signs and symptoms of COVID-19 in children are similar to adults and are usually milder compared to adults.13-17 <br>For more information on the clinical presentation and course among children, see Information for Pediatric Healthcare Providers.', N'Admin', CAST(N'2020-06-22T03:04:18.410' AS DateTime), N'', CAST(N'2020-07-09T23:51:42.893' AS DateTime))
INSERT [dbo].[tbl_Blog] ([id], [title], [description], [AddedBy], [DateAdded], [UpdatedBy], [DateUpdated]) VALUES (19, N'What are the early symptoms of coronavirus?	', N'Early symptoms reported by some people include fatigue, headache, sore throat or fever. Some people experience a loss of smell or taste. Symptoms can be mild at first, and in some people, become more intense over five to seven days, with cough and shortness of breath worsening if pneumonia develops. But it is important to know that the type and severity of the first symptoms can vary widely from person to person.	', N'Admin', CAST(N'2020-06-26T14:02:57.467' AS DateTime), N'', CAST(N'2020-06-26T20:15:16.590' AS DateTime))
INSERT [dbo].[tbl_Blog] ([id], [title], [description], [AddedBy], [DateAdded], [UpdatedBy], [DateUpdated]) VALUES (1019, N'Incubation period', N'he incubation period for COVID-19 is thought to extend to 14 days, with a median time of 4-5 days from exposure to symptoms onset.1-3 One study reported that 97.5% of persons with COVID-19 who develop symptoms will do so within 11.5 days of SARS-CoV-2 infection.3', N'Admin', CAST(N'2020-07-09T23:34:35.850' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[tbl_Blog] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Dealpatient] ON 

INSERT [dbo].[tbl_Dealpatient] ([id], [title], [description], [AddedBy], [DateAdded], [UpdatedBy], [DateUpdated]) VALUES (2, N'COVID-19: Practical Advice and Support from Internists on the Front Lines', N'Eileen Barrett, MD, MPH, SFHM, FACP, and Elisabeth Poorman, MD, MPH, share lessons learned and best practices from both the inpatient and outpatient front lines of the COVID-19 global pandemic. They explore the need to both acknowledge and address physician anxiety and fear of exposure to the coronavirus, as well as provide tips for how physicians can support one another while protecting their own wellbeing.<br><a href= "https://www.acponline.org/system/files/documents/meetings/leadership_academy/covid-webinar-supplement.pdf"target="_blank"> Download Supplement <br><video width="320" height="240" controls>
      <source src=”https://www.acponline.org/covid-19-practical-advice-recording” type=video/ogg>
      <source src="https://www.acponline.org/covid-19-practical-advice-recording" type=video/mp4>
    </video>', N'Admin', CAST(N'2020-03-18T16:40:42.860' AS DateTime), N'', CAST(N'2020-07-10T13:05:10.290' AS DateTime))
INSERT [dbo].[tbl_Dealpatient] ([id], [title], [description], [AddedBy], [DateAdded], [UpdatedBy], [DateUpdated]) VALUES (4, N'<a href="https://www.acpjournals.org/doi/10.7326/M20-3234?_ga=2.29996543.1997802898.1594296617-294905102.1592221410" target="_blank">Use of N95, Surgical, and Cloth Masks to Prevent COVID-19 in Health Care and Community Settings (Click here)</a>', N'Author:<br>
Amir Qaseem, MD, PhD, MHA, Itziar Etxeandia-Ikobaltzeta, PharmD, PhD, Jennifer Yost, RN, PhD, Matthew C. Miller, MD, George M. Abraham, MD, MPH, Adam J. Obley, MD, Mary Ann Forciea, MD, Janet A. Jokela, MD, MPH, Linda L. Humphrey, MD, MPH, <br>for the Scientific Medical Policy Committee of the American College of Physicians*<br><br>
<img src="https://www.uniglobalunion.org/sites/default/files/images/news/corona.jpg" alt="Masks"><br><p><small>img source: uniglobalunion.org</small></p>', N'Admin', CAST(N'2020-03-19T19:19:01.127' AS DateTime), N'', CAST(N'2020-07-10T04:11:53.430' AS DateTime))
INSERT [dbo].[tbl_Dealpatient] ([id], [title], [description], [AddedBy], [DateAdded], [UpdatedBy], [DateUpdated]) VALUES (10, N'<a href="https://www.medicaleconomics.com/view/coronavirus-8-ways-doctors-can-protect-themselves"target="_blank">Coronavirus: 8 ways doctors can protect themselves (Click here)</a>', N'Highest Death Toll In Italy 976 Dead In The Last 24 HoursCDC guidelines to keep your practice safe.<br>
Keith A. Reynolds<br>
Logan Lutton<br>', N'Admin', CAST(N'2020-03-22T12:11:28.447' AS DateTime), N'', CAST(N'2020-07-10T12:39:32.020' AS DateTime))
SET IDENTITY_INSERT [dbo].[tbl_Dealpatient] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Findings] ON 

INSERT [dbo].[tbl_Findings] ([id], [title], [description], [AddedBy], [DateAdded], [UpdatedBy], [DateUpdated]) VALUES (2, N'Blog Title', N'Blog Details', N'Admin', CAST(N'2020-03-18T16:40:42.860' AS DateTime), N'', CAST(N'2020-03-22T16:46:58.633' AS DateTime))
INSERT [dbo].[tbl_Findings] ([id], [title], [description], [AddedBy], [DateAdded], [UpdatedBy], [DateUpdated]) VALUES (3, N'What''s New in LaraMasculine Norms and Infectious Disease: The Case of COVID-19vel 7 ??', N'Laravel AirLoAbstract:<br> During the novel coronavirus pandemic of 2019-2020 carly data suggested that men were slightly more likely to contract COVID-19 than women, less likely to seek medical attention for the disease, and far more likely to die as result of COVID- 19. While several studies have explored this gender gap, none have attempted to isolate the psychological processes underpinning this phenomenon. In this research note, I suggest that belief in maseuline norms partly explains these differences. Using data from a large (n-100,689) survev of American adults conducted between Alarch and June by the Democracy Funil + UCLA (Nationscape), I find that sexist beliefs, a component of masculine norms, are consistently the strongest predictor of coronavirus- related emotions, behaviors, polícy attitudes, and ultimately contracting COVID-19. This study highlights how gender ideology can impact health and impede government publie benlth efforts.
<br><a href="https://www.cambridge.org/core/services/aop-cambridge-core/content/view/730D3884492AEF9F9CCD2AD8B5E429E8/S1743923X20000380a.pdf/masculine_norms_and_infectious_disease_the_case_of_covid19.pdf"target="_blank">Download pdf</a>', N'Admin', CAST(N'2020-03-19T19:15:49.597' AS DateTime), N'', CAST(N'2020-07-10T13:51:08.037' AS DateTime))
INSERT [dbo].[tbl_Findings] ([id], [title], [description], [AddedBy], [DateAdded], [UpdatedBy], [DateUpdated]) VALUES (4, N'Bootstrap 5', N'Once again pure JS is back ! with Vannila JS implemented in bootstrap 5 rather than Jquery.', N'Admin', CAST(N'2020-03-19T19:19:01.127' AS DateTime), N'', CAST(N'2020-03-22T12:59:34.633' AS DateTime))
INSERT [dbo].[tbl_Findings] ([id], [title], [description], [AddedBy], [DateAdded], [UpdatedBy], [DateUpdated]) VALUES (10, N'Coronavirus', N'Coronavirus disease 2019 (COVID-19) is an infectious disease caused by severe acute respiratory syndrome coronavirus 2 (SARS-CoV-2).[9] It was first identified in December 2019 in Wuhan, Hubei, China, and has resulted in an ongoing pandemic.[10][11] The first confirmed case has been traced back to 17 November 2019 in Hubei.[12] As of 9 July 2020, more than 12.1 million cases have been reported across 188 countries and territories, resulting in more than 552,000 deaths. More than 6.69 million people have recovered.[8]

<br><br>History:<br>The virus is thought to be natural and has an animal origin,[84] through spillover infection.[231] The first known human infections were in China. A study of the first 41 cases of confirmed COVID‑19, published in January 2020 in The Lancet, reported the earliest date of onset of symptoms as 1 December 2019.[232][233][234] Official publications from the WHO reported the earliest onset of symptoms as 8 December 2019.[235] Human-to-human transmission was confirmed by the WHO and Chinese authorities by 20 January 2020.[236][237] According to official Chinese sources, these were mostly linked to the Huanan Seafood Wholesale Market, which also sold live animals.[238] In May 2020, George Gao, the director of the Chinese Center for Disease Control and Prevention, said animal samples collected from the seafood market had tested negative for the virus, indicating that the market was the site of an early superspreading event, but it was not the site of the initial outbreak.[239] Traces of the virus have been found in wastewater that was collected from Milan and Turin, Italy, on 18 December 2019.[240]', N'Admin', CAST(N'2020-03-22T12:11:28.447' AS DateTime), N'', CAST(N'2020-07-10T15:40:27.147' AS DateTime))
INSERT [dbo].[tbl_Findings] ([id], [title], [description], [AddedBy], [DateAdded], [UpdatedBy], [DateUpdated]) VALUES (1001, N'new', N'item', N'Admin', CAST(N'2020-07-07T02:58:53.443' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[tbl_Findings] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Forum] ON 

INSERT [dbo].[tbl_Forum] ([postid], [query], [userid], [DateAdded]) VALUES (2, N'What you should know about COVID-19 to protect yourself ... The virus that causes COVID-19 is a new coronavirus ', 2, CAST(N'2020-07-10T15:24:37.903' AS DateTime))
INSERT [dbo].[tbl_Forum] ([postid], [query], [userid], [DateAdded]) VALUES (3, N'what do we get from aja', 3, CAST(N'2020-07-10T15:38:03.007' AS DateTime))
INSERT [dbo].[tbl_Forum] ([postid], [query], [userid], [DateAdded]) VALUES (4, N'hjhh', 2, CAST(N'2020-07-10T16:03:54.277' AS DateTime))
SET IDENTITY_INSERT [dbo].[tbl_Forum] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_ForumReply] ON 

INSERT [dbo].[tbl_ForumReply] ([id], [reply], [userid], [postid], [DateAdded]) VALUES (3, N'this reply', 3, 2, CAST(N'2020-07-10T15:38:18.433' AS DateTime))
SET IDENTITY_INSERT [dbo].[tbl_ForumReply] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Instructions] ON 

INSERT [dbo].[tbl_Instructions] ([id], [title], [description], [AddedBy], [DateAdded], [UpdatedBy], [DateUpdated]) VALUES (2, N'Coronavirus Disease/ Covid-19: Instructions for Patients and Caregivers', N'<iframe width="864" height="441" src="https://www.youtube.com/embed/Z12i4nSZ4Cg" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>', N'Admin', CAST(N'2020-03-18T16:40:42.860' AS DateTime), N'', CAST(N'2020-07-10T13:01:03.753' AS DateTime))
INSERT [dbo].[tbl_Instructions] ([id], [title], [description], [AddedBy], [DateAdded], [UpdatedBy], [DateUpdated]) VALUES (3, N'What''s New in Laravel 7 ??', N'Laravel AirLock & Laravel Custom Blade Component', N'Admin', CAST(N'2020-03-19T19:15:49.597' AS DateTime), N'', CAST(N'2020-03-22T12:59:49.510' AS DateTime))
INSERT [dbo].[tbl_Instructions] ([id], [title], [description], [AddedBy], [DateAdded], [UpdatedBy], [DateUpdated]) VALUES (4, N'Bootstrap 5', N'Once again pure JS is back ! with Vannila JS implemented in bootstrap 5 rather than Jquery.Once again pure JS is back ! with Vannila JS implemented in bootstrap 5 rather than Jquery.Once again pure JS is back ! with Vannila JS implemented in bootstrap 5 rather than Jquery.Once again pure JS is back ! with Vannila JS implemented in bootstrap 5 rather than Jquery.Once again pure JS is back ! with Vannila JS implemented in bootstrap 5 rather than Jquery.Once again pure JS is back ! with Vannila JS implemented in bootstrap 5 rather than Jquery.', N'Admin', CAST(N'2020-03-19T19:19:01.127' AS DateTime), N'', CAST(N'2020-06-23T00:36:09.627' AS DateTime))
INSERT [dbo].[tbl_Instructions] ([id], [title], [description], [AddedBy], [DateAdded], [UpdatedBy], [DateUpdated]) VALUES (10, N'Corona Virus Research & Report', N'Highest Death Toll In Italy 976 Dead In The Last 24 Hours', N'Admin', CAST(N'2020-03-22T12:11:28.447' AS DateTime), NULL, NULL)
INSERT [dbo].[tbl_Instructions] ([id], [title], [description], [AddedBy], [DateAdded], [UpdatedBy], [DateUpdated]) VALUES (11, N'aa', N'aa', N'Admin', CAST(N'2020-06-23T00:52:19.467' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[tbl_Instructions] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Reference] ON 

INSERT [dbo].[tbl_Reference] ([id], [title], [description], [AddedBy], [DateAdded], [UpdatedBy], [DateUpdated]) VALUES (1, N'1', N'Guan WJ, Ni ZY, Hu Y, et al. Clinical Characteristics of Coronavirus Disease 2019 in China. N Engl J Med 2020;382:1708-20.', N'Arif', CAST(N'2011-11-11T00:00:00.000' AS DateTime), N'', CAST(N'2020-07-07T02:58:28.270' AS DateTime))
INSERT [dbo].[tbl_Reference] ([id], [title], [description], [AddedBy], [DateAdded], [UpdatedBy], [DateUpdated]) VALUES (2, N'2', N'Li Q, Guan X, Wu P, et al. Early Transmission Dynamics in Wuhan, China, of Novel Coronavirus-Infected Pneumonia. N Engl J Med 2020;382:1199-207.', N'Admin', CAST(N'2020-03-18T16:40:42.860' AS DateTime), N'', CAST(N'2020-06-26T14:46:48.217' AS DateTime))
INSERT [dbo].[tbl_Reference] ([id], [title], [description], [AddedBy], [DateAdded], [UpdatedBy], [DateUpdated]) VALUES (3, N'3', N'Chen N, Zhou M, Dong X, et al. Epidemiological and clinical characteristics of 99 cases of 2019 novel coronavirus pneumonia in Wuhan, China: a descriptive study. Lancet 2020;395:507-13.', N'Admin', CAST(N'2020-03-19T19:15:49.597' AS DateTime), N'', CAST(N'2020-07-10T13:52:31.877' AS DateTime))
INSERT [dbo].[tbl_Reference] ([id], [title], [description], [AddedBy], [DateAdded], [UpdatedBy], [DateUpdated]) VALUES (4, N'4', N'Huang C, Wang Y, Li X, et al. Clinical features of patients infected with 2019 novel coronavirus in Wuhan, China. Lancet 2020;395:497-506.', N'Admin', CAST(N'2020-03-19T19:19:01.127' AS DateTime), N'', CAST(N'2020-07-07T02:42:07.110' AS DateTime))
INSERT [dbo].[tbl_Reference] ([id], [title], [description], [AddedBy], [DateAdded], [UpdatedBy], [DateUpdated]) VALUES (10, N'5', N'Huang C, Wang Y, Li X, et al. Clinical features of patients infected with 2019 novel coronavirus in Wuhan, China. Lancet 2020;395:497-506.', N'Admin', CAST(N'2020-03-22T12:11:28.447' AS DateTime), N'', CAST(N'2020-06-26T14:48:07.903' AS DateTime))
INSERT [dbo].[tbl_Reference] ([id], [title], [description], [AddedBy], [DateAdded], [UpdatedBy], [DateUpdated]) VALUES (1001, N'6', N' Nussbaumer-Streit B, Mayr V, Dobrescu AI, Chapman A, Persad E, Klerings I, et al. (April 2020). "Quarantine alone or in combination with other public health measures to control COVID-19: a rapid review". The Cochrane Database of Systematic Reviews. 4: CD013574. doi:10.1002/14651858.CD013574. PMC 7141753. PMID 32267544', N'Admin', CAST(N'2020-07-10T13:53:37.787' AS DateTime), NULL, NULL)
INSERT [dbo].[tbl_Reference] ([id], [title], [description], [AddedBy], [DateAdded], [UpdatedBy], [DateUpdated]) VALUES (1002, N'8', N'Coronavirus disease 2019 (COVID-19)—Symptoms and causes". Mayo Clinic. Retrieved 14 April 2020.', N'Admin', CAST(N'2020-07-10T13:53:55.317' AS DateTime), N'', CAST(N'2020-07-10T13:56:01.473' AS DateTime))
INSERT [dbo].[tbl_Reference] ([id], [title], [description], [AddedBy], [DateAdded], [UpdatedBy], [DateUpdated]) VALUES (1003, N'9', N'Hanley B, Lucas SB, Youd E, Swift B, Osborn M (May 2020). "Autopsy in suspected COVID-19 cases". Journal of Clinical Pathology. 73 (5): 239–242. doi:10.1136/jclinpath-2020-206522. PMID 32198191.', N'Admin', CAST(N'2020-07-10T13:56:09.537' AS DateTime), NULL, NULL)
INSERT [dbo].[tbl_Reference] ([id], [title], [description], [AddedBy], [DateAdded], [UpdatedBy], [DateUpdated]) VALUES (1004, N'10', N'Li Q, Guan X, Wu P, et al. Early Transmission Dynamics in Wuhan, China, of Novel Coronavirus-Infected Pneumonia. N Engl J Med 2020;382:1199-207.', N'Admin', CAST(N'2020-07-10T13:56:22.233' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[tbl_Reference] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_user] ON 

INSERT [dbo].[tbl_user] ([userid], [name], [email], [password], [usertype]) VALUES (2, N'Rahman Shabu', N'habibur.shabu@gmail.com', N'fgcf2bAj7Y8YRYpzYToINPYiC9XMUDV7o0k8YECp6ow=', 1)
INSERT [dbo].[tbl_user] ([userid], [name], [email], [password], [usertype]) VALUES (3, N'Saifullah', N'saif@gmail.com', N'7nmXbJOA1eM3/BwJXs6MjyL5HzBs7rFh+lH+zt4sS6E=', 0)
INSERT [dbo].[tbl_user] ([userid], [name], [email], [password], [usertype]) VALUES (4, N'Brian', N'brian@yahoo.com', N'73l8gRjwLftklgfdXT+MdiMEjJwGPVMsyVxe16iYpk8=', 0)
INSERT [dbo].[tbl_user] ([userid], [name], [email], [password], [usertype]) VALUES (5, N'Bond James', N'james@bat.com', N'73l8gRjwLftklgfdXT+MdiMEjJwGPVMsyVxe16iYpk8=', 0)
INSERT [dbo].[tbl_user] ([userid], [name], [email], [password], [usertype]) VALUES (6, N'gh', N'new@g.com', N'vqhLXBeewJFWs5WFvgY+JmbEcHaA6u/+dlgM6wbhWso=', 0)
SET IDENTITY_INSERT [dbo].[tbl_user] OFF
GO
ALTER TABLE [dbo].[tbl_user] ADD  DEFAULT ((0)) FOR [usertype]
GO
ALTER TABLE [dbo].[tbl_Forum]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Forum_tbl_user] FOREIGN KEY([userid])
REFERENCES [dbo].[tbl_user] ([userid])
GO
ALTER TABLE [dbo].[tbl_Forum] CHECK CONSTRAINT [FK_tbl_Forum_tbl_user]
GO
ALTER TABLE [dbo].[tbl_ForumReply]  WITH CHECK ADD  CONSTRAINT [FK_tbl_ForumReply_tbl_Forum] FOREIGN KEY([postid])
REFERENCES [dbo].[tbl_Forum] ([postid])
GO
ALTER TABLE [dbo].[tbl_ForumReply] CHECK CONSTRAINT [FK_tbl_ForumReply_tbl_Forum]
GO
ALTER TABLE [dbo].[tbl_ForumReply]  WITH CHECK ADD  CONSTRAINT [FK_tbl_ForumReply_tbl_user] FOREIGN KEY([userid])
REFERENCES [dbo].[tbl_user] ([userid])
GO
ALTER TABLE [dbo].[tbl_ForumReply] CHECK CONSTRAINT [FK_tbl_ForumReply_tbl_user]
GO
/****** Object:  StoredProcedure [dbo].[CREATE_SP]    Script Date: 7/28/2020 2:48:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--EXEC CREATE_SP 'Inv_FabricRollMaster','RollMasterID'CREATE PROCEDURE [dbo].[CREATE_SP]--DECLARE @TableName VARCHAR(50)='Product',@PrimaryColumnName VARCHAR(150)='ProductID'@TableName VARCHAR(200)='',@PrimaryColumnName VARCHAR(150)=''ASCREATE TABLE #tablColumn(ID INT IDENTITY, ColName VARCHAR(50),ColType VARCHAR(50),ColLen VARCHAR(50))INSERT INTO #tablColumnSELECT COLUMN_NAME,DATA_TYPE,CASE WHEN UPPER(DATA_TYPE) IN('NUMERIC','DECIMAL') THEN CAST(NUMERIC_PRECISION AS VARCHAR(50))+','+ CAST(NUMERIC_SCALE AS VARCHAR(50))ELSE CAST(CHARACTER_MAXIMUM_LENGTH AS VARCHAR(50)) END CHARACTER_MAXIMUM_LENGTHFROM INFORMATION_SCHEMA.COLUMNSWHERE TABLE_NAME = @TableNameSET NOCOUNT ONDECLARE @NewLineChar AS CHAR(2) = CHAR(13) + CHAR(10)DECLARE @ID INT = 1, @COUNT INT,@ColName VARCHAR(50)='',@ColType VARCHAR(50)='',@ColLen VARCHAR(50) = 0,@DeclareSection VARCHAR(MAX)='',@SaveSection VARCHAR(MAX)='',@UpdateSection VARCHAR(MAX)='',@LoadAllSection VARCHAR(MAX)='',@LoadSelectedSection VARCHAR(MAX)='',@DeleteSelectedSection VARCHAR(MAX)='',@ColumnNames VARCHAR(MAX),@SaveColumnNames VARCHAR(MAX),@UpdateColumnNames VARCHAR(MAX),@VariableNames VARCHAR(MAX),@SaveVariableNames  VARCHAR(MAX)SELECT @ColumnNames = COALESCE(@ColumnNames + ', ', '') + ColName,@VariableNames = COALESCE(@VariableNames + ', ', '') +'@'+ColNameFROM #tablColumnWHERE ColName NOT IN ('AddedBy','DateAdded','UpdatedBy','DateUpdated')SELECT @SaveColumnNames = COALESCE(@SaveColumnNames + ',', '') + ColName,@SaveVariableNames = COALESCE(@SaveVariableNames + ', ', '') +'@'+ColNameFROM #tablColumnWHERE ColName NOT IN ('AddedBy','DateAdded','UpdatedBy','DateUpdated')AND ColName <> @PrimaryColumnNameSET @COUNT = (SELECT COUNT(*) FROM #tablColumn)SET @DeclareSection += 'CREATE PROCEDURE SP_SET_'+UPPER(@TableName)+@NewLineChar+'@QryOption AS INT = -1,'+@NewLineCharSET @SaveSection = 'IF @QryOption = @SAVE_DATA'+@NewLineChar+'BEGIN'+@NewLineChar+' INSERT INTO '+@TableName+'('+@SaveColumnNames+',AddedBy,DateAdded) VALUES('+@SaveVariableNames+',@AddedBy,GETDATE())'+@NewLineChar+'END'+@NewLineCharSELECT @UpdateColumnNames = COALESCE(@UpdateColumnNames + ', ', '') + ColName+' = @'+ColNameFROM #tablColumnWHERE ColName NOT IN ('AddedBy','DateAdded','UpdatedBy','DateUpdated') AND ColName <> @PrimaryColumnNameSET @UpdateSection = 'ELSE IF @QryOption = @UPDATE_DATA'+@NewLineChar+'BEGIN'+@NewLineChar+' UPDATE '+@TableName + ' SET '+ @UpdateColumnNames+', UpdatedBy=@AddedBy, DateUpdated = GETDATE()'+@NewLineChar+' WHERE '+@PrimaryColumnName +' = @'+@PrimaryColumnName+@NewLineChar+'END'+@NewLineCharSET @LoadAllSection = 'ELSE IF @QryOption = @LOAD_ALL_DATA'+@NewLineChar+'BEGIN'+@NewLineChar+' SELECT '+@ColumnNames+@NewLineChar+' FROM '+@TableName+@NewLineChar+'END'+@NewLineCharSET @LoadSelectedSection = 'ELSE IF @QryOption = @LOAD_SELECTED_DATA'+@NewLineChar+'BEGIN'+@NewLineChar+' SELECT '+@ColumnNames+@NewLineChar+' FROM '+@TableName+@NewLineChar+' WHERE '+@PrimaryColumnName +' = @'+@PrimaryColumnName+@NewLineChar+'END'+@NewLineCharSET @DeleteSelectedSection = 'ELSE IF @QryOption = @DELETE_DATA'+@NewLineChar+'BEGIN'+@NewLineChar+' DELETE FROM '+@TableName+@NewLineChar+' WHERE '+@PrimaryColumnName +' = @'+@PrimaryColumnName+@NewLineChar+'END'+@NewLineCharWHILE @ID <= @COUNTBEGINSELECT @ColName = ColName,@ColType = ColType,@ColLen = ColLen FROM #tablColumn WHERE ID = @IDIF UPPER(@ColType) = 'INT' AND @ColName NOT IN ('AddedBy','DateAdded','UpdatedBy','DateUpdated')BEGINSET @DeclareSection += '@'+@ColName +' INT = -1,'+@NewLineCharENDELSE IF UPPER(@ColType) = 'VARCHAR' AND @ColName NOT IN ('AddedBy','DateAdded','UpdatedBy','DateUpdated')BEGINSET @DeclareSection += '@'+@ColName +' VARCHAR('+@ColLen+') = '''','+@NewLineCharENDELSE IF UPPER(@ColType) = 'BIT' AND @ColName NOT IN ('AddedBy','DateAdded','UpdatedBy','DateUpdated')BEGINSET @DeclareSection += '@'+@ColName +' BIT = 0,'+@NewLineCharENDELSE IF UPPER(@ColType) = 'DECIMAL' AND @ColName NOT IN ('AddedBy','DateAdded','UpdatedBy','DateUpdated')BEGINSET @DeclareSection += '@'+@ColName +' DECIMAL('+@ColLen+') = 0.00,'+@NewLineCharENDELSE IF UPPER(@ColType) = 'NUMERIC' AND @ColName NOT IN ('AddedBy','DateAdded','UpdatedBy','DateUpdated')BEGINSET @DeclareSection += '@'+@ColName +' NUMERIC('+@ColLen+') = 0.00,'+@NewLineCharENDELSE IF UPPER(@ColType) = 'NVARCHAR' AND @ColName NOT IN ('AddedBy','DateAdded','UpdatedBy','DateUpdated')BEGINSET @DeclareSection += '@'+@ColName +' NVARCHAR('+@ColLen+') = '''','+@NewLineCharENDELSE IF UPPER(@ColType) ='DATE' AND @ColName NOT IN ('AddedBy','DateAdded','UpdatedBy','DateUpdated')BEGINSET @DeclareSection += '@'+@ColName +' DATE = ''1/1/1900'','+@NewLineCharENDELSE IF UPPER(@ColType) = 'DATETIME' AND @ColName NOT IN ('AddedBy','DateAdded','UpdatedBy','DateUpdated')BEGINSET @DeclareSection += '@'+@ColName +' DATETIME = ''1/1/1900'','+@NewLineCharENDELSE IF UPPER(@ColType) = 'BIGINT' AND @ColName NOT IN ('AddedBy','DateAdded','UpdatedBy','DateUpdated')BEGINSET @DeclareSection += '@'+@ColName +' BIGINT = -1,'+@NewLineCharENDSET @ID += 1ENDSET @DeclareSection += '@AddedBy VARCHAR(50) = '''''+@NewLineCharSET @DeclareSection +='AS'+@NewLineChar+@NewLineChar+'DECLARE @SAVE_DATA INT = -1,@UPDATE_DATA INT = -1,@LOAD_ALL_DATA INT = -1,@LOAD_SELECTED_DATA INT = -1,@DELETE_DATA INT = -1SET @SAVE_DATA = 1SET @UPDATE_DATA=2SET @LOAD_ALL_DATA=3SET @LOAD_SELECTED_DATA=4SET @DELETE_DATA=5'+@NewLineChar+@NewLineCharPRINT @DeclareSectionPRINT @SaveSectionPRINT @UpdateSectionPRINT @LoadAllSectionPRINT @LoadSelectedSectionPRINT @DeleteSelectedSectionDROP TABLE #tablColumn
GO
/****** Object:  StoredProcedure [dbo].[SP_SET_Search]    Script Date: 7/28/2020 2:48:31 AM ******/
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
/****** Object:  StoredProcedure [dbo].[SP_SET_TBL_BLOG]    Script Date: 7/28/2020 2:48:31 AM ******/
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
/****** Object:  StoredProcedure [dbo].[SP_SET_TBL_Dealpatient]    Script Date: 7/28/2020 2:48:31 AM ******/
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
/****** Object:  StoredProcedure [dbo].[SP_SET_TBL_Findings]    Script Date: 7/28/2020 2:48:31 AM ******/
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
 FROM tbl_Findings ORDER BY DateAdded DESC
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
/****** Object:  StoredProcedure [dbo].[SP_SET_TBL_Forum]    Script Date: 7/28/2020 2:48:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_SET_TBL_Forum]
@QryOption AS INT = -1,
@id INT = -1,
@reply NVARCHAR(MAX) = '',
@query NVARCHAR(MAX) = '',
@userid INT = -1,
@postid INT = -1
AS

DECLARE @SAVE_DATA INT = -1,
@REPLY_DATA INT = -1,
@LOAD_ALL_DATA INT = -1,
@LOAD_SELECTED_DATA INT = -1,
@DELETE_DATA INT = -1

SET @SAVE_DATA = 1
SET @REPLY_DATA=3
SET @LOAD_ALL_DATA=2
SET @LOAD_SELECTED_DATA=4
SET @DELETE_DATA=5

IF @QryOption = @SAVE_DATA
BEGIN
 INSERT INTO tbl_Forum(query,userid,DateAdded) VALUES(@query, @userid,GETDATE())
END
ELSE IF @QryOption = @LOAD_ALL_DATA
BEGIN
 SELECT tbl_Forum.postid,name, query, tbl_Forum.userid, CONVERT(VARCHAR(11), DateAdded, 104) AS DateAdded
 FROM tbl_Forum,tbl_user WHERE tbl_user.userid=tbl_Forum.userid ORDER BY DateAdded DESC;
END
ELSE IF @QryOption = @REPLY_DATA
BEGIN
  INSERT INTO tbl_ForumReply(reply,userid,postid,DateAdded) VALUES(@reply, @userid, @postid,GETDATE())
END
ELSE IF @QryOption = @LOAD_SELECTED_DATA
BEGIN
  SELECT tbl_ForumReply.id,name, reply, tbl_ForumReply.userid, CONVERT(VARCHAR(11), tbl_ForumReply.DateAdded, 104) AS DateAdded
 FROM tbl_user,tbl_ForumReply WHERE tbl_user.userid=tbl_ForumReply.userid and tbl_ForumReply.postid=@postid;
END
GO
/****** Object:  StoredProcedure [dbo].[SP_SET_TBL_Instrcuctions]    Script Date: 7/28/2020 2:48:31 AM ******/
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
/****** Object:  StoredProcedure [dbo].[SP_SET_TBL_Reference]    Script Date: 7/28/2020 2:48:31 AM ******/
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
/****** Object:  StoredProcedure [dbo].[SP_SET_TBL_user]    Script Date: 7/28/2020 2:48:31 AM ******/
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
@Verify_DATA INT = -1,
@LOAD_ALL_DATA INT = -1

SET @SAVE_DATA = 1
SET @Verify_DATA=3
SET @LOAD_ALL_DATA=2


IF @QryOption = @SAVE_DATA
BEGIN
 INSERT INTO tbl_user(name,email,password) VALUES(@name, @email,@password)
END
ELSE IF @QryOption = @LOAD_ALL_DATA
BEGIN
 SELECT userid,usertype,name,email,password From tbl_user WHERE email=@email AND password=@password
END
ELSE IF @QryOption = @Verify_DATA
BEGIN
 SELECT userid,name,email,password From tbl_user WHERE email=@email
END

GO
USE [master]
GO
ALTER DATABASE [ASPdotNET_CRUD] SET  READ_WRITE 
GO
