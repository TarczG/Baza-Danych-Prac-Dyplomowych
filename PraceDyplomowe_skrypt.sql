USE [master]
GO
/****** Object:  Database [PraceDyplomowe]    Script Date: 21.01.2019 22:54:30 ******/
CREATE DATABASE [PraceDyplomowe]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PraceDyplomowe', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\PraceDyplomowe.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PraceDyplomowe_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\PraceDyplomowe_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [PraceDyplomowe] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PraceDyplomowe].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PraceDyplomowe] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PraceDyplomowe] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PraceDyplomowe] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PraceDyplomowe] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PraceDyplomowe] SET ARITHABORT OFF 
GO
ALTER DATABASE [PraceDyplomowe] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PraceDyplomowe] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PraceDyplomowe] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PraceDyplomowe] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PraceDyplomowe] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PraceDyplomowe] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PraceDyplomowe] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PraceDyplomowe] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PraceDyplomowe] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PraceDyplomowe] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PraceDyplomowe] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PraceDyplomowe] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PraceDyplomowe] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PraceDyplomowe] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PraceDyplomowe] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PraceDyplomowe] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PraceDyplomowe] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PraceDyplomowe] SET RECOVERY FULL 
GO
ALTER DATABASE [PraceDyplomowe] SET  MULTI_USER 
GO
ALTER DATABASE [PraceDyplomowe] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PraceDyplomowe] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PraceDyplomowe] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PraceDyplomowe] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PraceDyplomowe] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'PraceDyplomowe', N'ON'
GO
ALTER DATABASE [PraceDyplomowe] SET QUERY_STORE = OFF
GO
USE [PraceDyplomowe]
GO
/****** Object:  User [R1]    Script Date: 21.01.2019 22:54:30 ******/
CREATE USER [R1] FOR LOGIN [R1] WITH DEFAULT_SCHEMA=[R1]
GO
/****** Object:  User [PA1]    Script Date: 21.01.2019 22:54:30 ******/
CREATE USER [PA1] FOR LOGIN [PA1] WITH DEFAULT_SCHEMA=[PA1]
GO
/****** Object:  User [D1]    Script Date: 21.01.2019 22:54:30 ******/
CREATE USER [D1] FOR LOGIN [D1] WITH DEFAULT_SCHEMA=[D1]
GO
/****** Object:  DatabaseRole [Recenzent]    Script Date: 21.01.2019 22:54:30 ******/
CREATE ROLE [Recenzent]
GO
/****** Object:  DatabaseRole [PracownikAdministracyjny]    Script Date: 21.01.2019 22:54:30 ******/
CREATE ROLE [PracownikAdministracyjny]
GO
/****** Object:  DatabaseRole [Dyplomant]    Script Date: 21.01.2019 22:54:30 ******/
CREATE ROLE [Dyplomant]
GO
ALTER ROLE [Recenzent] ADD MEMBER [R1]
GO
ALTER ROLE [PracownikAdministracyjny] ADD MEMBER [PA1]
GO
ALTER ROLE [Dyplomant] ADD MEMBER [D1]
GO
/****** Object:  Schema [D1]    Script Date: 21.01.2019 22:54:30 ******/
CREATE SCHEMA [D1]
GO
/****** Object:  Schema [PA1]    Script Date: 21.01.2019 22:54:30 ******/
CREATE SCHEMA [PA1]
GO
/****** Object:  Schema [R1]    Script Date: 21.01.2019 22:54:30 ******/
CREATE SCHEMA [R1]
GO
/****** Object:  Table [dbo].[Autorzy]    Script Date: 21.01.2019 22:54:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Autorzy](
	[ID_Student] [smallint] NOT NULL,
	[ID_Praca] [smallint] NOT NULL,
 CONSTRAINT [PK_Autorzy] PRIMARY KEY CLUSTERED 
(
	[ID_Student] ASC,
	[ID_Praca] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dyplomant]    Script Date: 21.01.2019 22:54:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dyplomant](
	[ID_Student] [smallint] NOT NULL,
	[Nazwisko] [varchar](50) NOT NULL,
	[Imie] [varchar](20) NOT NULL,
	[NumerIndeksu] [varchar](10) NOT NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[ID_Student] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PracaDyplomowa]    Script Date: 21.01.2019 22:54:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PracaDyplomowa](
	[ID_Praca] [smallint] NOT NULL,
	[ID_Promotor] [smallint] NULL,
	[Temat] [varchar](max) NOT NULL,
	[DataObrony] [datetime] NULL,
	[Ocena] [smallint] NULL,
	[ID_TypStudiow] [smallint] NOT NULL,
	[ID_Wydzial] [smallint] NOT NULL,
 CONSTRAINT [PK_PracaDyplomowa] PRIMARY KEY CLUSTERED 
(
	[ID_Praca] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Recenzenci]    Script Date: 21.01.2019 22:54:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Recenzenci](
	[ID_Wykladowca] [smallint] NOT NULL,
	[Imie] [varchar](20) NOT NULL,
	[Nazwisko] [varchar](20) NOT NULL,
	[ID_StopienNaukowy] [smallint] NOT NULL,
 CONSTRAINT [PK_Wykladowca] PRIMARY KEY CLUSTERED 
(
	[ID_Wykladowca] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Recenzja]    Script Date: 21.01.2019 22:54:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Recenzja](
	[ID_Praca] [smallint] NOT NULL,
	[ID_Wykladowca] [smallint] NOT NULL,
	[Ocena] [smallint] NULL,
 CONSTRAINT [PK_Recenzja] PRIMARY KEY CLUSTERED 
(
	[ID_Praca] ASC,
	[ID_Wykladowca] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slownik]    Script Date: 21.01.2019 22:54:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slownik](
	[ID_Praca] [smallint] NOT NULL,
	[ID_SlowoKlucz] [smallint] NOT NULL,
 CONSTRAINT [PK_Slownik] PRIMARY KEY CLUSTERED 
(
	[ID_Praca] ASC,
	[ID_SlowoKlucz] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SlowoKlucz]    Script Date: 21.01.2019 22:54:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SlowoKlucz](
	[ID_SlowoKlucz] [smallint] NOT NULL,
	[SlowoKlucz] [varchar](50) NOT NULL,
 CONSTRAINT [PK_SlowoKlucz] PRIMARY KEY CLUSTERED 
(
	[ID_SlowoKlucz] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StopienNaukowy]    Script Date: 21.01.2019 22:54:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StopienNaukowy](
	[ID_StopienNaukowy] [smallint] NOT NULL,
	[NazwaStopnia] [varchar](50) NOT NULL,
 CONSTRAINT [PK_StopienNaukowy] PRIMARY KEY CLUSTERED 
(
	[ID_StopienNaukowy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypStudiow]    Script Date: 21.01.2019 22:54:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypStudiow](
	[ID_TypStudiow] [smallint] NOT NULL,
	[NazwaTypu] [nchar](15) NOT NULL,
 CONSTRAINT [PK_TypStudiow] PRIMARY KEY CLUSTERED 
(
	[ID_TypStudiow] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Uczelnia]    Script Date: 21.01.2019 22:54:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Uczelnia](
	[ID_Uczelni] [smallint] NOT NULL,
	[NazwaUczelni] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Uczelnia] PRIMARY KEY CLUSTERED 
(
	[ID_Uczelni] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Wydzial]    Script Date: 21.01.2019 22:54:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Wydzial](
	[ID_Wydzialu] [smallint] NOT NULL,
	[NazwaWydzialu] [varchar](50) NOT NULL,
	[ID_Uczelni] [smallint] NOT NULL,
 CONSTRAINT [PK_Wydzial] PRIMARY KEY CLUSTERED 
(
	[ID_Wydzialu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Autorzy]  WITH CHECK ADD  CONSTRAINT [FK_Autorzy_PracaDyplomowa] FOREIGN KEY([ID_Praca])
REFERENCES [dbo].[PracaDyplomowa] ([ID_Praca])
GO
ALTER TABLE [dbo].[Autorzy] CHECK CONSTRAINT [FK_Autorzy_PracaDyplomowa]
GO
ALTER TABLE [dbo].[Autorzy]  WITH CHECK ADD  CONSTRAINT [FK_Autorzy_Student] FOREIGN KEY([ID_Student])
REFERENCES [dbo].[Dyplomant] ([ID_Student])
GO
ALTER TABLE [dbo].[Autorzy] CHECK CONSTRAINT [FK_Autorzy_Student]
GO
ALTER TABLE [dbo].[PracaDyplomowa]  WITH CHECK ADD  CONSTRAINT [FK_PracaDyplomowa_TypStudiow] FOREIGN KEY([ID_TypStudiow])
REFERENCES [dbo].[TypStudiow] ([ID_TypStudiow])
GO
ALTER TABLE [dbo].[PracaDyplomowa] CHECK CONSTRAINT [FK_PracaDyplomowa_TypStudiow]
GO
ALTER TABLE [dbo].[PracaDyplomowa]  WITH CHECK ADD  CONSTRAINT [FK_PracaDyplomowa_Wydzial] FOREIGN KEY([ID_Wydzial])
REFERENCES [dbo].[Wydzial] ([ID_Wydzialu])
GO
ALTER TABLE [dbo].[PracaDyplomowa] CHECK CONSTRAINT [FK_PracaDyplomowa_Wydzial]
GO
ALTER TABLE [dbo].[PracaDyplomowa]  WITH CHECK ADD  CONSTRAINT [FK_PracaDyplomowa_Wykladowca] FOREIGN KEY([ID_Promotor])
REFERENCES [dbo].[Recenzenci] ([ID_Wykladowca])
GO
ALTER TABLE [dbo].[PracaDyplomowa] CHECK CONSTRAINT [FK_PracaDyplomowa_Wykladowca]
GO
ALTER TABLE [dbo].[Recenzenci]  WITH CHECK ADD  CONSTRAINT [FK_Wykladowca_StopienNaukowy] FOREIGN KEY([ID_StopienNaukowy])
REFERENCES [dbo].[StopienNaukowy] ([ID_StopienNaukowy])
GO
ALTER TABLE [dbo].[Recenzenci] CHECK CONSTRAINT [FK_Wykladowca_StopienNaukowy]
GO
ALTER TABLE [dbo].[Recenzja]  WITH CHECK ADD  CONSTRAINT [FK_Recenzja_PracaDyplomowa] FOREIGN KEY([ID_Praca])
REFERENCES [dbo].[PracaDyplomowa] ([ID_Praca])
GO
ALTER TABLE [dbo].[Recenzja] CHECK CONSTRAINT [FK_Recenzja_PracaDyplomowa]
GO
ALTER TABLE [dbo].[Recenzja]  WITH CHECK ADD  CONSTRAINT [FK_Recenzja_Wykladowca] FOREIGN KEY([ID_Wykladowca])
REFERENCES [dbo].[Recenzenci] ([ID_Wykladowca])
GO
ALTER TABLE [dbo].[Recenzja] CHECK CONSTRAINT [FK_Recenzja_Wykladowca]
GO
ALTER TABLE [dbo].[Slownik]  WITH CHECK ADD  CONSTRAINT [FK_Slownik_PracaDyplomowa] FOREIGN KEY([ID_Praca])
REFERENCES [dbo].[PracaDyplomowa] ([ID_Praca])
GO
ALTER TABLE [dbo].[Slownik] CHECK CONSTRAINT [FK_Slownik_PracaDyplomowa]
GO
ALTER TABLE [dbo].[Slownik]  WITH CHECK ADD  CONSTRAINT [FK_Slownik_SlowoKlucz] FOREIGN KEY([ID_SlowoKlucz])
REFERENCES [dbo].[SlowoKlucz] ([ID_SlowoKlucz])
GO
ALTER TABLE [dbo].[Slownik] CHECK CONSTRAINT [FK_Slownik_SlowoKlucz]
GO
ALTER TABLE [dbo].[Wydzial]  WITH CHECK ADD  CONSTRAINT [FK_Wydzial_Uczelnia] FOREIGN KEY([ID_Uczelni])
REFERENCES [dbo].[Uczelnia] ([ID_Uczelni])
GO
ALTER TABLE [dbo].[Wydzial] CHECK CONSTRAINT [FK_Wydzial_Uczelnia]
GO
/****** Object:  StoredProcedure [dbo].[PraceObronionewPrzedziale]    Script Date: 21.01.2019 22:54:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[PraceObronionewPrzedziale]
	-- Add the parameters for the stored procedure here
	@Od varchar(10),
	@Do varchar(10)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    SELECT        PracaDyplomowa.DataObrony, PracaDyplomowa.Temat, Dyplomant.Imie, Dyplomant.Nazwisko, PracaDyplomowa.Ocena
FROM            PracaDyplomowa INNER JOIN
                         Recenzenci ON PracaDyplomowa.ID_Promotor = Recenzenci.ID_Wykladowca AND PracaDyplomowa.ID_Promotor = Recenzenci.ID_Wykladowca AND PracaDyplomowa.ID_Promotor = Recenzenci.ID_Wykladowca INNER JOIN
                         Autorzy ON PracaDyplomowa.ID_Praca = Autorzy.ID_Praca INNER JOIN
                         Dyplomant ON Autorzy.ID_Student = Dyplomant.ID_Student
WHERE        (PracaDyplomowa.DataObrony BETWEEN CONVERT(DATETIME, @Od) AND CONVERT(DATETIME, @Do))
ORDER BY PracaDyplomowa.DataObrony DESC

END
GO
/****** Object:  StoredProcedure [dbo].[PraceRecenzowanePrzezRecenzenta]    Script Date: 21.01.2019 22:54:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[PraceRecenzowanePrzezRecenzenta]
	-- Add the parameters for the stored procedure here
	
	@RecenzentNazwisko varchar (50),
	@RecenzentImie varchar (20)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT        Recenzenci.Imie, Recenzenci.Nazwisko AS [Nazwisko Recenzenta], PracaDyplomowa.Temat, PracaDyplomowa.DataObrony, PracaDyplomowa.Ocena AS [Ocena recenzencka]
FROM            PracaDyplomowa INNER JOIN
                         Recenzja ON PracaDyplomowa.ID_Praca = Recenzja.ID_Praca INNER JOIN
                         Recenzenci ON PracaDyplomowa.ID_Promotor = Recenzenci.ID_Wykladowca AND Recenzja.ID_Wykladowca = Recenzenci.ID_Wykladowca
WHERE        (Recenzenci.Nazwisko LIKE @RecenzentNazwisko+'%') AND (Recenzenci.Imie LIKE @RecenzentImie+'%')
ORDER BY PracaDyplomowa.DataObrony DESC



END
GO
/****** Object:  StoredProcedure [dbo].[PraceWzgledemTypuStudiow]    Script Date: 21.01.2019 22:54:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[PraceWzgledemTypuStudiow]
	-- Add the parameters for the stored procedure here
	@typ smallint 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

SELECT        Dyplomant.Imie, Dyplomant.Nazwisko, PracaDyplomowa.Temat, TypStudiow.NazwaTypu
FROM            PracaDyplomowa INNER JOIN
                         TypStudiow ON PracaDyplomowa.ID_TypStudiow = TypStudiow.ID_TypStudiow INNER JOIN
                         Autorzy ON PracaDyplomowa.ID_Praca = Autorzy.ID_Praca INNER JOIN
                         Dyplomant ON Autorzy.ID_Student = Dyplomant.ID_Student
WHERE        (TypStudiow.ID_TypStudiow = @typ)
ORDER BY Dyplomant.Nazwisko, Dyplomant.Imie


END
GO
/****** Object:  StoredProcedure [dbo].[PraceWzgledemWydzialu]    Script Date: 21.01.2019 22:54:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[PraceWzgledemWydzialu]
	-- Add the parameters for the stored procedure here
	@Wydzial varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

SELECT        Dyplomant.Imie, Dyplomant.Nazwisko, PracaDyplomowa.Temat, TypStudiow.NazwaTypu, Wydzial.NazwaWydzialu
FROM            PracaDyplomowa INNER JOIN
                         TypStudiow ON PracaDyplomowa.ID_TypStudiow = TypStudiow.ID_TypStudiow INNER JOIN
                         Autorzy ON PracaDyplomowa.ID_Praca = Autorzy.ID_Praca INNER JOIN
                         Dyplomant ON Autorzy.ID_Student = Dyplomant.ID_Student INNER JOIN
                         Wydzial ON PracaDyplomowa.ID_Wydzial = Wydzial.ID_Wydzialu
WHERE        (Wydzial.NazwaWydzialu LIKE @Wydzial+'%')
ORDER BY Dyplomant.Nazwisko, Dyplomant.Imie
END
GO
/****** Object:  StoredProcedure [dbo].[SzukajPoPromotorze]    Script Date: 21.01.2019 22:54:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SzukajPoPromotorze]
	-- Add the parameters for the stored procedure here
	@Nazwisko varchar (50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;


SELECT        StopienNaukowy.NazwaStopnia AS Tytul, Recenzenci.Imie, Recenzenci.Nazwisko AS [Nazwisko Promotora], PracaDyplomowa.Temat
FROM            PracaDyplomowa INNER JOIN
                         Recenzenci ON PracaDyplomowa.ID_Promotor = Recenzenci.ID_Wykladowca INNER JOIN
                         StopienNaukowy ON Recenzenci.ID_StopienNaukowy = StopienNaukowy.ID_StopienNaukowy
WHERE        (Recenzenci.Nazwisko LIKE @Nazwisko+'%')


END
GO
/****** Object:  StoredProcedure [dbo].[SzukajPoTematyce]    Script Date: 21.01.2019 22:54:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SzukajPoTematyce]
	-- Add the parameters for the stored procedure here
	@Slowo varchar (50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT        PracaDyplomowa.Temat, SlowoKlucz.SlowoKlucz
FROM            PracaDyplomowa INNER JOIN
                         Slownik ON PracaDyplomowa.ID_Praca = Slownik.ID_Praca INNER JOIN
                         SlowoKlucz ON Slownik.ID_SlowoKlucz = SlowoKlucz.ID_SlowoKlucz
WHERE        (SlowoKlucz.SlowoKlucz LIKE '%'+@Slowo+'%')
END
GO
USE [master]
GO
ALTER DATABASE [PraceDyplomowe] SET  READ_WRITE 
GO
