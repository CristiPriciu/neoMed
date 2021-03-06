USE [neoMed]
GO
/****** Object:  Table [dbo].[tblAppointments]    Script Date: 8/6/2018 4:58:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblAppointments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[client_id] [int] NOT NULL,
	[date] [date] NOT NULL,
	[mail_sent] [bit] NOT NULL,
	[honored] [bit] NOT NULL,
	[paid] [bit] NOT NULL,
	[total_paid] [float] NOT NULL,
 CONSTRAINT [PK_Appointments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblClients]    Script Date: 8/6/2018 4:58:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblClients](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[age] [int] NOT NULL,
	[ssn] [bigint] NOT NULL,
	[email] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Clients] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProcedures]    Script Date: 8/6/2018 4:58:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProcedures](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[cost] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Procedures] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblAppointments] ON 
GO
INSERT [dbo].[tblAppointments] ([Id], [client_id], [date], [mail_sent], [honored], [paid], [total_paid]) VALUES (2, 2, CAST(N'1893-12-12' AS Date), 1, 0, 1, 601)
GO
INSERT [dbo].[tblAppointments] ([Id], [client_id], [date], [mail_sent], [honored], [paid], [total_paid]) VALUES (3, 4, CAST(N'2018-03-12' AS Date), 0, 0, 0, 0)
GO
INSERT [dbo].[tblAppointments] ([Id], [client_id], [date], [mail_sent], [honored], [paid], [total_paid]) VALUES (5, 3, CAST(N'2017-05-01' AS Date), 0, 1, 1, 500)
GO
INSERT [dbo].[tblAppointments] ([Id], [client_id], [date], [mail_sent], [honored], [paid], [total_paid]) VALUES (6, 5, CAST(N'2018-08-06' AS Date), 0, 1, 1, 200)
GO
INSERT [dbo].[tblAppointments] ([Id], [client_id], [date], [mail_sent], [honored], [paid], [total_paid]) VALUES (9, 1, CAST(N'2018-08-06' AS Date), 1, 1, 0, 1000)
GO
SET IDENTITY_INSERT [dbo].[tblAppointments] OFF
GO
SET IDENTITY_INSERT [dbo].[tblClients] ON 
GO
INSERT [dbo].[tblClients] ([Id], [name], [age], [ssn], [email]) VALUES (11, N'Alex Queryescu 15', 25, 1334, N'AQ@yahoo.com')
GO
INSERT [dbo].[tblClients] ([Id], [name], [age], [ssn], [email]) VALUES (12, N'Jules Verne', 98, 1231231231231, N'julesv@gmail.fr')
GO
INSERT [dbo].[tblClients] ([Id], [name], [age], [ssn], [email]) VALUES (13, N'Victor Hugo', 132, 13344331, N'vc@deruchette.fr')
GO
INSERT [dbo].[tblClients] ([Id], [name], [age], [ssn], [email]) VALUES (14, N'James T. Kirk', 39, 764843745473, N'JamesTK@enterprise.sp')
GO
INSERT [dbo].[tblClients] ([Id], [name], [age], [ssn], [email]) VALUES (15, N'Jed I. Knight', 25, 654585316668, N'JedIKnight@coruscant.cs')
GO
INSERT [dbo].[tblClients] ([Id], [name], [age], [ssn], [email]) VALUES (16, N'Dan Druff 231231231', 31, 3263245966311, N'whiterain@yahoo.com')
GO
INSERT [dbo].[tblClients] ([Id], [name], [age], [ssn], [email]) VALUES (17, N'Mark Twain', 10, 3465465, N'markymark@aol.com')
GO
INSERT [dbo].[tblClients] ([Id], [name], [age], [ssn], [email]) VALUES (18, N'George Orwell', 121, 316546465467, N'geowell@oldmail.gb')
GO
INSERT [dbo].[tblClients] ([Id], [name], [age], [ssn], [email]) VALUES (19, N'Carmen Espinoza', 31, 21654545, N'ce@yahoo.sp')
GO
INSERT [dbo].[tblClients] ([Id], [name], [age], [ssn], [email]) VALUES (20, N'Carmen Santiago', 15, 21654545, N'ce@yahoo.sp')
GO
INSERT [dbo].[tblClients] ([Id], [name], [age], [ssn], [email]) VALUES (22, N'Malfurion Stormrage', 579, 56465465432, N'malstorm@teldrassil.ne')
GO
INSERT [dbo].[tblClients] ([Id], [name], [age], [ssn], [email]) VALUES (24, N'Tychus Findlay', 40, 34654684854, N'tychus@confederacy.org')
GO
INSERT [dbo].[tblClients] ([Id], [name], [age], [ssn], [email]) VALUES (25, N'Philip K. Dick', 70, 133413341334, N'pkd@gmail.com')
GO
INSERT [dbo].[tblClients] ([Id], [name], [age], [ssn], [email]) VALUES (26, N'Joe Chip', 65, 433143314331, N'joetech@runciter.net')
GO
SET IDENTITY_INSERT [dbo].[tblClients] OFF
GO
SET IDENTITY_INSERT [dbo].[tblProcedures] ON 
GO
INSERT [dbo].[tblProcedures] ([Id], [name], [cost]) VALUES (1, N'Lightheadedness Healing', N'10')
GO
INSERT [dbo].[tblProcedures] ([Id], [name], [cost]) VALUES (6, N'Burn Dressing', N'200')
GO
INSERT [dbo].[tblProcedures] ([Id], [name], [cost]) VALUES (7, N'Frost Bolt Thawing', N'150')
GO
INSERT [dbo].[tblProcedures] ([Id], [name], [cost]) VALUES (8, N'Chrono Shift Time Reversal', N'900')
GO
INSERT [dbo].[tblProcedures] ([Id], [name], [cost]) VALUES (9, N'Kleptomania Therapy', N'-1000')
GO
INSERT [dbo].[tblProcedures] ([Id], [name], [cost]) VALUES (10, N'Polymorphed: Sheep Recombobulation', N'50')
GO
SET IDENTITY_INSERT [dbo].[tblProcedures] OFF
GO
/****** Object:  StoredProcedure [dbo].[spAppointments]    Script Date: 8/6/2018 4:58:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spAppointments]
@act nvarchar(50),
@client_id int =0,
@date date ='1893-12-12',
@mail_sent bit =0,
@honored bit =0,
@paid bit =0,
@total_paid float =0

AS
BEGIN
	IF(LOWER(@act) = 'get')
		BEGIN
			select * from tblAppointments
		END
	ELSE IF(LOWER(@act) = 'delete')
		BEGIN
			delete from tblAppointments
		END
else if lower(@act)='insert'
	BEGIN
		INSERT INTO tblAppointments(client_id, [date], mail_sent, paid, total_paid )
		Values (@client_id, @date, @mail_sent, @paid, @total_paid)
	END
END
GO
/****** Object:  StoredProcedure [dbo].[spClients]    Script Date: 8/6/2018 4:58:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spClients]
@act nvarchar(50),
@id	int = null,
@name nvarchar(50)='ND',
@age int=0,
@ssn bigint=0,
@email nvarchar(50)='ND'
AS
BEGIN
	IF(LOWER(@act) = 'get')
		BEGIN
			select * from tblClients
		END
	ELSE IF(LOWER(@act) = 'delete')
		BEGIN
			delete from tblClients
		END
else if lower(@act)='insert'
	BEGIN
		INSERT INTO tblClients(name, age, ssn, email)
		Values (@name, @age, @ssn, @email)
		END

		else if lower(@act)='update'
		BEGIN
			UPDATE tblClients
			SET [name] = @name, age = @age, ssn = @ssn, email = @email
			Where Id = @id
		END
END
GO
/****** Object:  StoredProcedure [dbo].[spProcedures]    Script Date: 8/6/2018 4:58:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spProcedures]
@act nvarchar(50),
@name nvarchar(50),
@cost int=0


AS
BEGIN
	IF(LOWER(@act) = 'get')
		BEGIN
			select * from tblProcedures
		END
	ELSE IF(LOWER(@act) = 'delete')
		BEGIN
			delete from tblProcedures
		END
else if lower(@act)='insert'
	BEGIN
		INSERT INTO tblProcedures([name], cost)
		Values (@name, @cost)
	END
END
GO
