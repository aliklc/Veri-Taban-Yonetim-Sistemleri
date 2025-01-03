USE [master]
GO
/****** Object:  Database [Proje]    Script Date: 2.01.2025 20:14:08 ******/
CREATE DATABASE [Proje]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Proje', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Proje.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Proje_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Proje_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Proje] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Proje].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Proje] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Proje] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Proje] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Proje] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Proje] SET ARITHABORT OFF 
GO
ALTER DATABASE [Proje] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Proje] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Proje] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Proje] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Proje] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Proje] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Proje] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Proje] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Proje] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Proje] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Proje] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Proje] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Proje] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Proje] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Proje] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Proje] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Proje] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Proje] SET RECOVERY FULL 
GO
ALTER DATABASE [Proje] SET  MULTI_USER 
GO
ALTER DATABASE [Proje] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Proje] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Proje] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Proje] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Proje] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Proje] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Proje', N'ON'
GO
ALTER DATABASE [Proje] SET QUERY_STORE = ON
GO
ALTER DATABASE [Proje] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Proje]
GO
/****** Object:  User [Baris]    Script Date: 2.01.2025 20:14:08 ******/
CREATE USER [Baris] FOR LOGIN [Baris] WITH DEFAULT_SCHEMA=[dbo]
GO
USE [Proje]
GO
/****** Object:  Sequence [dbo].[ProjectId_Seq]    Script Date: 2.01.2025 20:14:09 ******/
CREATE SEQUENCE [dbo].[ProjectId_Seq] 
 AS [int]
 START WITH 1
 INCREMENT BY 1
 MINVALUE -2147483648
 MAXVALUE 2147483647
 CACHE 
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 2.01.2025 20:14:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[EmployeeId] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeName] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Position] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Projects]    Script Date: 2.01.2025 20:14:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Projects](
	[ProjectId] [int] NOT NULL,
	[ProjectName] [varchar](50) NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[Durum] [varchar](50) NULL,
	[ChangedProjectDate] [datetime] NULL,
	[GecikmeSüresi] [int] NULL,
 CONSTRAINT [PK__Projects__761ABEF0363D860E] PRIMARY KEY CLUSTERED 
(
	[ProjectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tasks]    Script Date: 2.01.2025 20:14:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tasks](
	[TaskId] [int] IDENTITY(1,1) NOT NULL,
	[TaskName] [varchar](50) NULL,
	[TaskStartDate] [datetime] NULL,
	[TaskEndDate] [datetime] NULL,
	[Statuss] [varchar](20) NULL,
	[AssignedId] [int] NULL,
	[ProjectsId] [int] NULL,
	[ManuelTamamlandi] [bit] NULL,
	[ManDays] [int] NULL,
 CONSTRAINT [PK__Tasks__7C6949B1198FE6D9] PRIMARY KEY CLUSTERED 
(
	[TaskId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Projects] ADD  CONSTRAINT [DF_ProjectID]  DEFAULT (NEXT VALUE FOR [ProjectID_Seq]) FOR [ProjectId]
GO
ALTER TABLE [dbo].[Tasks] ADD  CONSTRAINT [DF__Tasks__ManuelTam__7B5B524B]  DEFAULT ((0)) FOR [ManuelTamamlandi]
GO
ALTER TABLE [dbo].[Tasks] ADD  CONSTRAINT [DF__Tasks__ManDays__160F4887]  DEFAULT ((0)) FOR [ManDays]
GO
ALTER TABLE [dbo].[Tasks]  WITH CHECK ADD  CONSTRAINT [FK__Tasks__AssignedI__4F7CD00D] FOREIGN KEY([AssignedId])
REFERENCES [dbo].[Employees] ([EmployeeId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Tasks] CHECK CONSTRAINT [FK__Tasks__AssignedI__4F7CD00D]
GO
ALTER TABLE [dbo].[Tasks]  WITH CHECK ADD  CONSTRAINT [FK__Tasks__ProjectsI__4E88ABD4] FOREIGN KEY([ProjectsId])
REFERENCES [dbo].[Projects] ([ProjectId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Tasks] CHECK CONSTRAINT [FK__Tasks__ProjectsI__4E88ABD4]
GO
/****** Object:  StoredProcedure [dbo].[calisan_detay]    Script Date: 2.01.2025 20:14:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--create database Proje

--use proje

--create table Employees
--(
--EmployeeId int primary key identity,
--EmployeeName varchar(50),
--Email varchar(50),
--Position varchar(50)
--)

--create table Projects
--(
--ProjectId int primary key identity,
--ProjectName varchar(50),
--StartDate datetime,
--EndDate datetime
--)

--create table Tasks
--(
--TaskId int primary key identity,
--TaskName varchar(50),
--TaskStartDate datetime,
--TaskEndDate datetime,
--TaskCompletionDate datetime,
--Statuss varchar(20),
--AssignedId int,
--ProjectsId int,
--foreign key (ProjectsId) references Projects(ProjectId),
--foreign key (AssignedId) references Employees(EmployeeId)
--)

--create proc proje_görev
--as
--select ProjectId,ProjectName,TaskId,TaskName,AssignedId from Projects
--inner join Tasks on Projects.ProjectId=Tasks.ProjectsId	

--exec proje_görev

--exec proje_görev

--CREATE SEQUENCE ProjectId_Seq
--AS INT
--START WITH 1  -- Mevcut projelere ek olarak başlasın
--INCREMENT BY 1;

--ALTER TABLE Projects
--ADD CONSTRAINT DF_ProjectID
--DEFAULT NEXT VALUE FOR ProjectID_Seq FOR ProjectId;


--WITH RankedProjects AS (
--    SELECT ProjectId, ROW_NUMBER() OVER (ORDER BY ProjectName) AS NewProjectID
--    FROM Projects
--)
--UPDATE p
--SET p.ProjectId = rp.NewProjectID
--FROM Projects p
--INNER JOIN RankedProjects rp
--    ON p.ProjectId = rp.ProjectId;

--create proc Listele
--as
--WITH RankedProjects AS (
--    SELECT ProjectId, ROW_NUMBER() OVER (ORDER BY ProjectName) AS NewProjectID
--    FROM Projects
--)
--UPDATE p
--SET p.ProjectId = rp.NewProjectID
--FROM Projects p
--INNER JOIN RankedProjects rp
--    ON p.ProjectId = rp.ProjectId;
--	select * from Projects

--exec Listele

--exec proje_görev
--exec proje_görev

--create proc proje_görev2
--as
--select ProjectId,ProjectName,TaskId,TaskName from Projects
--inner join Tasks on Projects.ProjectId=Tasks.ProjectsId


--create proc proje_detay
--@ProjectId int
--as
--select TaskId,ProjectName as 'Proje Adı',TaskName as 'Görev Adı',TaskStartDate as 'Başlangıç Tarihi',TaskEndDate as 'Bitiş Tarihi',Statuss as 'Görev Durumu',EmployeeName as 'Çalışan Adı' from Tasks
--inner join Projects on Tasks.ProjectsId=Projects.ProjectId
--inner join Employees on Tasks.AssignedId=Employees.EmployeeId
--where Projects.ProjectId = @ProjectId

--exec proje_detay

CREATE proc [dbo].[calisan_detay]
@EmployeeId int
as
select EmployeeName as 'Çalışan Adı',Email,ProjectName as 'Çalıştığı Proje',TaskName as 'Çalıştığı Görev',Statuss as 'Görevin Durumu' from Employees
inner join Tasks on Employees.EmployeeId = Tasks.AssignedId
inner join Projects on Tasks.ProjectsId = Projects.ProjectId
where Employees.EmployeeId = @EmployeeId

--exec calisan_detay



--ALTER TABLE Tasks
--DROP CONSTRAINT FK__Tasks__ProjectsI__4E88ABD4;

--ALTER TABLE Tasks
--ADD CONSTRAINT FK__Tasks__ProjectsI__4E88ABD4
--FOREIGN KEY (ProjectsId) REFERENCES Projects(ProjectId)
--ON DELETE CASCADE;

--SELECT name
--FROM sys.foreign_keys
--WHERE parent_object_id = OBJECT_ID('Tasks');


--CREATE PROCEDURE GörevEkle
--    @ProjeId INT,
--    @GörevAdı NVARCHAR(255),
--    @ÇalışanId INT,
--	@BaslangicTarihi datetime,
--	@BitisTarihi datetime
--AS
--BEGIN
--    INSERT INTO Tasks (TaskName, ProjectsId, TaskStartDate, TaskEndDate, AssignedId)
--    VALUES (@GörevAdı, @ProjeId,@BaslangicTarihi,@BitisTarihi,@ÇalışanId)
--END


--CREATE PROCEDURE GüncelleGörevDurumu
--AS
--BEGIN
--    -- Statuss sütunundaki görevlerin durumunu güncelle
--    UPDATE Tasks
--    SET Statuss = 
--        CASE
--            WHEN GETDATE() < TaskStartDate THEN 'Tamamlanacak'
--            WHEN GETDATE() BETWEEN TaskStartDate AND TaskEndDate THEN 'Devam Ediyor'
--            WHEN GETDATE() > TaskEndDate THEN 'Tamamlandı'
--        END
--    WHERE Statuss IS NULL OR Statuss != 'Tamamlandı'; -- Durumu boş ya da zaten tamamlanmış değilse güncelle
--END;

--CREATE PROCEDURE GüncelleGörevDurumu2
--AS
--BEGIN
--    -- Durumunu manuel olarak değiştirmeyen görevleri güncelle
--    UPDATE Tasks
--    SET Statuss = 
--        CASE
--            WHEN GETDATE() < TaskStartDate THEN 'Tamamlanacak'
--            WHEN GETDATE() BETWEEN TaskStartDate AND TaskEndDate THEN 'Devam Ediyor'
--            WHEN GETDATE() > TaskEndDate THEN 'Tamamlandı'
--        END
--    WHERE (Statuss IS NULL OR Statuss NOT IN ('Tamamlanacak', 'Devam Ediyor', 'Tamamlandı')) 
--      AND TaskEndDate < GETDATE();  -- Sadece bitmiş görevleri güncelle
--END;

--exec GüncelleGörevDurumu2
--exec GüncelleGörevDurumu

--ALTER TABLE Tasks
--ADD ManuelTamamlandi BIT DEFAULT 0;


--CREATE PROCEDURE GüncelleGörevDurumuVeProjeTarihi
--AS
--BEGIN
--    -- Görev durumlarını güncelle
--    UPDATE Tasks
--    SET Statuss = 
--        CASE
--            WHEN GETDATE() < TaskStartDate THEN 'Tamamlanacak'
--            WHEN GETDATE() BETWEEN TaskStartDate AND TaskEndDate THEN 'Devam Ediyor'
--        END
--    WHERE Statuss IS NULL OR Statuss NOT IN ('Tamamlanacak', 'Devam Ediyor', 'Tamamlandı');


--    -- Manuel tamamlanmayan görevler kontrol edilir
--    DECLARE @ProjectId INT;
--    DECLARE @YeniBitisTarihi DATE;

--    DECLARE görev_cursor CURSOR FOR
--    SELECT ProjectsId
--    FROM Tasks
--    WHERE ManuelTamamlandi = 0 AND GETDATE() > TaskEndDate;

--    OPEN görev_cursor;
--    FETCH NEXT FROM görev_cursor INTO @ProjectId;

--    WHILE @@FETCH_STATUS = 0
--    BEGIN
--        -- Proje bitiş tarihini 2 gün ileriye al
--        SET @YeniBitisTarihi = DATEADD(DAY, 2, (SELECT EndDate FROM Projects WHERE ProjectId = @ProjectId));


--        UPDATE Projects
--        SET EndDate = @YeniBitisTarihi
--        WHERE ProjectId = @ProjectId;

--        FETCH NEXT FROM görev_cursor INTO @ProjectId;
--    END;

--    CLOSE görev_cursor;
--    DEALLOCATE görev_cursor;
--END;


--exec GüncelleGörevDurumuVeProjeTarihi


--ALTER TABLE Tasks
--DROP CONSTRAINT FK__Tasks__AssignedI__4F7CD00D;

--ALTER TABLE Tasks
--ADD CONSTRAINT FK__Tasks__AssignedI__4F7CD00D
--FOREIGN KEY (AssignedId) REFERENCES Employees(EmployeeId)
--ON DELETE CASCADE;


--SELECT name
--FROM sys.foreign_keys
--WHERE parent_object_id = OBJECT_ID('Employees');
GO
/****** Object:  StoredProcedure [dbo].[calisangörevdetay]    Script Date: 2.01.2025 20:14:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--create database Proje

--use proje

--create table Employees
--(
--EmployeeId int primary key identity,
--EmployeeName varchar(50),
--Email varchar(50),
--Position varchar(50)
--)

--create table Projects
--(
--ProjectId int primary key identity,
--ProjectName varchar(50),
--StartDate datetime,
--EndDate datetime
--)

--create table Tasks
--(
--TaskId int primary key identity,
--TaskName varchar(50),
--TaskStartDate datetime,
--TaskEndDate datetime,
--TaskCompletionDate datetime,
--Statuss varchar(20),
--AssignedId int,
--ProjectsId int,
--foreign key (ProjectsId) references Projects(ProjectId),
--foreign key (AssignedId) references Employees(EmployeeId)
--)

--create proc proje_görev
--as
--select ProjectId,ProjectName,TaskId,TaskName,AssignedId from Projects
--inner join Tasks on Projects.ProjectId=Tasks.ProjectsId	

--exec proje_görev

--exec proje_görev

--CREATE SEQUENCE ProjectId_Seq
--AS INT
--START WITH 1  -- Mevcut projelere ek olarak başlasın
--INCREMENT BY 1;

--ALTER TABLE Projects
--ADD CONSTRAINT DF_ProjectID
--DEFAULT NEXT VALUE FOR ProjectID_Seq FOR ProjectId;


--WITH RankedProjects AS (
--    SELECT ProjectId, ROW_NUMBER() OVER (ORDER BY ProjectName) AS NewProjectID
--    FROM Projects
--)
--UPDATE p
--SET p.ProjectId = rp.NewProjectID
--FROM Projects p
--INNER JOIN RankedProjects rp
--    ON p.ProjectId = rp.ProjectId;

--create proc Listele
--as
--WITH RankedProjects AS (
--    SELECT ProjectId, ROW_NUMBER() OVER (ORDER BY ProjectName) AS NewProjectID
--    FROM Projects
--)
---- Yeni bir sütun ekleyerek sıralanmış ID'leri atayın
--UPDATE p
--SET p.ProjectId = rp.ProjectId
--FROM Projects p
--INNER JOIN RankedProjects rp
--    ON p.ProjectId = rp.ProjectId;

---- Verileri listele
--SELECT * FROM Projects;

--exec Listele

--CREATE PROCEDURE ListeleTasks
--AS
--BEGIN
--    WITH RankedTasks AS (
--        SELECT TaskId, ROW_NUMBER() OVER (ORDER BY TaskName) AS NewTaskID
--        FROM Tasks
--    )
--    UPDATE t
--    SET t.TaskId = rt.NewTaskID
--    FROM Tasks t
--    INNER JOIN RankedTasks rt
--        ON t.TaskId = rt.TaskId;

--    exec proje_detay;
--END;

--exec ListeleTasks

--exec proje_görev
--exec proje_görev

--create proc proje_görev2
--as
--select ProjectId,ProjectName,TaskId,TaskName from Projects
--inner join Tasks on Projects.ProjectId=Tasks.ProjectsId


--create proc proje_detay
--@ProjectId int
--as
--select TaskId,ProjectName as 'Proje Adı',TaskName as 'Görev Adı',TaskStartDate as 'Başlangıç Tarihi',TaskEndDate as 'Bitiş Tarihi',ManDays as 'Adam Gün Değeri',Statuss as 'Görev Durumu',EmployeeName as 'Çalışan Adı' from Tasks
--inner join Projects on Tasks.ProjectsId=Projects.ProjectId
--inner join Employees on Tasks.AssignedId=Employees.EmployeeId
--where Projects.ProjectId = @ProjectId

--exec proje_detay

--create proc calisan_detay
--@EmployeeId int
--as
--select EmployeeName as 'Çalışan Adı',Email,ProjectName as 'Çalıştığı Proje',TaskName as 'Çalıştığı Görev' from Employees
--inner join Tasks on Employees.EmployeeId = Tasks.AssignedId
--inner join Projects on Tasks.ProjectsId = Projects.ProjectId
--where Employees.EmployeeId = @EmployeeId

--exec calisan_detay



--ALTER TABLE Tasks
--DROP CONSTRAINT FK__Tasks__ProjectsI__4E88ABD4;

--ALTER TABLE Tasks
--ADD CONSTRAINT FK__Tasks__ProjectsI__4E88ABD4
--FOREIGN KEY (ProjectsId) REFERENCES Projects(ProjectId)
--ON DELETE CASCADE;

--SELECT name
--FROM sys.foreign_keys
--WHERE parent_object_id = OBJECT_ID('Tasks');


--CREATE PROCEDURE GörevEkle
--    @ProjeId INT,
--    @GörevAdı NVARCHAR(255),
--    @ÇalışanId INT,
--	@BaslangicTarihi datetime,
--	@BitisTarihi datetime
--AS
--BEGIN
--    INSERT INTO Tasks (TaskName, ProjectsId, TaskStartDate, TaskEndDate, AssignedId)
--    VALUES (@GörevAdı, @ProjeId,@BaslangicTarihi,@BitisTarihi,@ÇalışanId)
--END



--CREATE PROCEDURE GüncelleGörevDurumu
--AS
--BEGIN
--    -- Statuss sütunundaki görevlerin durumunu güncelle
--    UPDATE Tasks
--    SET Statuss = 
--        CASE
--            WHEN GETDATE() < TaskStartDate THEN 'Tamamlanacak'
--            WHEN GETDATE() >= TaskStartDate THEN 'Devam Ediyor'
--            -- Eğer bir görev tamamlandıysa, durumunu 'Tamamlandı' olarak güncelleyebilirsiniz. Burada ek bir koşul ekleyebilirsiniz.
--            ELSE Statuss
--        END
--    WHERE Statuss IS NULL OR Statuss != 'Tamamlandı'; -- Durumu boş ya da zaten tamamlanmış değilse güncelle
--END;


--CREATE PROCEDURE GüncelleGörevDurumu2
--AS
--BEGIN
--    -- Durumunu manuel olarak değiştirmeyen görevleri güncelle
--    UPDATE Tasks
--    SET Statuss = 
--        CASE
--            WHEN GETDATE() < TaskStartDate THEN 'Tamamlanacak'
--            WHEN GETDATE() BETWEEN TaskStartDate AND TaskEndDate THEN 'Devam Ediyor'
--            WHEN GETDATE() > TaskEndDate THEN 'Tamamlandı'
--        END
--    WHERE (Statuss IS NULL OR Statuss NOT IN ('Tamamlanacak', 'Devam Ediyor', 'Tamamlandı')) 
--      AND TaskEndDate < GETDATE();  -- Sadece bitmiş görevleri güncelle
--END;

--exec GüncelleGörevDurumu2
--exec GüncelleGörevDurumu

--ALTER TABLE Tasks
--ADD ManuelTamamlandi BIT DEFAULT 0;


--CREATE PROCEDURE GüncelleManDays
--AS
--BEGIN
--    UPDATE Tasks
--    SET ManDays = DATEDIFF(DAY, TaskStartDate, TaskEndDate) + 1
--    WHERE TaskStartDate IS NOT NULL AND TaskEndDate IS NOT NULL;
--END;




--ALTER TABLE Tasks
--ADD ManDays BIT DEFAULT 0;

--CREATE PROCEDURE GüncelleGörevDurumuVeProjeTarihi
--AS
--BEGIN
--    -- Görev durumlarını güncelle
--    UPDATE Tasks
--    SET Statuss = 
--        CASE
--            WHEN GETDATE() < TaskStartDate THEN 'Tamamlanacak'
--            WHEN GETDATE() BETWEEN TaskStartDate AND TaskEndDate THEN 'Devam Ediyor'
--        END
--    WHERE Statuss IS NULL OR Statuss NOT IN ('Tamamlanacak', 'Devam Ediyor', 'Tamamlandı');


--    -- Manuel tamamlanmayan görevler kontrol edilir
--    DECLARE @ProjectId INT;
--    DECLARE @YeniBitisTarihi DATE;

--    DECLARE görev_cursor CURSOR FOR
--    SELECT ProjectsId
--    FROM Tasks
--    WHERE ManuelTamamlandi = 0 AND GETDATE() > TaskEndDate;

--    OPEN görev_cursor;
--    FETCH NEXT FROM görev_cursor INTO @ProjectId;

--    WHILE @@FETCH_STATUS = 0
--    BEGIN
--        -- Proje bitiş tarihini 2 gün ileriye al
--        SET @YeniBitisTarihi = DATEADD(DAY, 2, (SELECT EndDate FROM Projects WHERE ProjectId = @ProjectId));


--        UPDATE Projects
--        SET EndDate = @YeniBitisTarihi
--        WHERE ProjectId = @ProjectId;

--        FETCH NEXT FROM görev_cursor INTO @ProjectId;
--    END;

--    CLOSE görev_cursor;
--    DEALLOCATE görev_cursor;
--END;


--exec GüncelleGörevDurumuVeProjeTarihi


--ALTER TABLE Tasks
--DROP CONSTRAINT FK__Tasks__AssignedI__4F7CD00D;

--ALTER TABLE Tasks
--ADD CONSTRAINT FK__Tasks__AssignedI__4F7CD00D
--FOREIGN KEY (AssignedId) REFERENCES Employees(EmployeeId)
--ON DELETE CASCADE;


--SELECT name
--FROM sys.foreign_keys
--WHERE parent_object_id = OBJECT_ID('Employees');


--ALTER TABLE Projects
--ADD ChangedProjectDate DATETIME default 0,
--    ExtraTime INT default 0;

--CREATE PROCEDURE GüncelleProjeDurumu
--AS
--BEGIN
--    DECLARE @ProjeId INT;
--    DECLARE @Projeler INT; -- Proje içerisindeki tamamlanmamış görevlerin sayısı
--    DECLARE @SonBitişTarihi DATETIME; -- Proje için en son bitiş tarihi
--    DECLARE @YeniTarih DATETIME; -- Proje bitiş tarihi ertelenmiş yeni tarih
--    DECLARE @EkSüre INT; -- Projeye ek süre (5 gün)

--    -- Projelerdeki görevleri kontrol et
--    DECLARE proje_cursor CURSOR FOR
--    SELECT ProjectId
--    FROM Projects;

--    OPEN proje_cursor;
--    FETCH NEXT FROM proje_cursor INTO @ProjeId;

--    -- Proje id'si ile tüm görevleri kontrol et
--    WHILE @@FETCH_STATUS = 0
--    BEGIN
--        -- Projeye ait tamamlanmamış görevlerin sayısını kontrol et
--        SELECT @Projeler = COUNT(*)
--        FROM Tasks
--        WHERE ProjectsId = @ProjeId
--        AND Statuss != 'Tamamlandı'
--        AND TaskEndDate <= GETDATE();  -- Eğer bitiş tarihi geçmiş ve tamamlanmamışsa

--        -- Proje zamanında tamamlanmadıysa bitiş tarihini 5 gün ertele
--        IF @Projeler > 0 -- Görev tamamlanmadıysa
--        BEGIN
--            -- Proje bitiş tarihi 5 gün ertelenir
--            SELECT @SonBitişTarihi = MAX(TaskEndDate)
--            FROM Tasks
--            WHERE ProjectsId = @ProjeId;

--            -- 5 gün ekleniyor
--            SET @YeniTarih = DATEADD(DAY, 5, @SonBitişTarihi);

--            -- Projeye ek süre olarak 5 gün atanıyor
--            SET @EkSüre = 5;

--            -- Proje durumunu güncelle
--            UPDATE Projects
--            SET Durum = 'Tamamlanmadı', 
--                ChangedProjectDate = @YeniTarih, 
--                ExtraTime = @EkSüre
--            WHERE ProjectId = @ProjeId;
--        END
--        ELSE
--        BEGIN
--            -- Eğer projedeki tüm görevler tamamlandıysa, proje durumu "Tamamlandı" olarak güncellenir
--            UPDATE Projects
--            SET Durum = 'Tamamlandı', 
--                ChangedProjectDate = NULL, 
--                ExtraTime = 0
--            WHERE ProjectId = @ProjeId;
--        END

--        FETCH NEXT FROM proje_cursor INTO @ProjeId;
--    END

--    CLOSE proje_cursor;
--    DEALLOCATE proje_cursor;

--    -- Durum mesajı
--    PRINT 'Proje durumu başarıyla güncellendi';
--END;


--CREATE PROCEDURE GüncelleProjeDurumu
--AS
--BEGIN
--    DECLARE @ProjeId INT;
--    DECLARE @Projeler INT; -- Proje içerisindeki tamamlanmamış görevlerin sayısı
--    DECLARE @SonBitişTarihi DATETIME; -- Proje için en son bitiş tarihi
--    DECLARE @YeniTarih DATETIME; -- Proje bitiş tarihi ertelenmiş yeni tarih
--    DECLARE @GecikmeMiktarı INT; -- Projeye ek süre (5 gün)
--    DECLARE @TaskId INT; -- Görev ID'si
--    DECLARE @TaskStatus NVARCHAR(50); -- Görev durumu

--    -- Projelerdeki görevleri kontrol et
--    DECLARE proje_cursor CURSOR FOR
--    SELECT ProjectId
--    FROM Projects;

--    OPEN proje_cursor;
--    FETCH NEXT FROM proje_cursor INTO @ProjeId;

--    -- Proje id'si ile tüm görevleri kontrol et
--    WHILE @@FETCH_STATUS = 0
--    BEGIN
--        -- Projeye ait tamamlanmamış görevlerin sayısını kontrol et
--        SELECT @Projeler = COUNT(*)
--        FROM Tasks
--        WHERE ProjectsId = @ProjeId
--        AND Statuss != 'Tamamlandı'
--        AND TaskEndDate <= GETDATE();  -- Eğer bitiş tarihi geçmiş ve tamamlanmamışsa

--        -- Proje zamanında tamamlanmadıysa bitiş tarihini 5 gün ertele
--        IF @Projeler > 0 -- Görev tamamlanmadıysa
--        BEGIN
--            -- Proje bitiş tarihi 5 gün ertelenir
--            SELECT @SonBitişTarihi = MAX(TaskEndDate)
--            FROM Tasks
--            WHERE ProjectsId = @ProjeId;

--            -- 5 gün ekleniyor
--            SET @YeniTarih = DATEADD(DAY, 5, @SonBitişTarihi) 

--            -- Proje durumunu güncelle
--            UPDATE Projects
--            SET Durum = 'Tamamlanmadı', 
--                ChangedProjectDate = @YeniTarih, 
--                GecikmeSüresi = @GecikmeMiktarı
--            WHERE ProjectId = @ProjeId;

--            -- Görevlerin durumunu güncelle: "Devam Ediyor"
--            DECLARE görev_cursor CURSOR FOR
--            SELECT TaskId
--            FROM Tasks
--            WHERE ProjectsId = @ProjeId
--            AND Statuss != 'Tamamlandı'
--            AND TaskEndDate <= GETDATE();

--            OPEN görev_cursor;
--            FETCH NEXT FROM görev_cursor INTO @TaskId;

--            WHILE @@FETCH_STATUS = 0
--            BEGIN
--                UPDATE Tasks
--                SET Statuss = 'Devam Ediyor'
--                WHERE TaskId = @TaskId;

--                FETCH NEXT FROM görev_cursor INTO @TaskId;
--            END

--            CLOSE görev_cursor;
--            DEALLOCATE görev_cursor;

--        END
--        ELSE
--        BEGIN
--            -- Eğer projedeki tüm görevler tamamlandıysa, proje durumu "Tamamlandı" olarak güncellenir
--            UPDATE Projects
--            SET Durum = 'Tamamlandı', 
--                GecikmeSüresi = @GecikmeMiktarı
--            WHERE ProjectId = @ProjeId;
--        END

--        FETCH NEXT FROM proje_cursor INTO @ProjeId;
--    END

--    CLOSE proje_cursor;
--    DEALLOCATE proje_cursor;

--    -- Durum mesajı
--END;


CREATE proc [dbo].[calisangörevdetay]
    @EmployeeId INT
AS
BEGIN
    SELECT 
        (SELECT COUNT(*) 
         FROM Tasks 
         WHERE AssignedId = @EmployeeId 
           AND Statuss = 'Tamamlandı') AS TamamlananGorev,
        (SELECT COUNT(*) 
         FROM Tasks 
         WHERE AssignedId = @EmployeeId 
           AND (Statuss != 'Tamamlandı' OR Statuss IS NULL) 
           AND TaskEndDate < GETDATE()) AS TamamlanmayanGorev,
		(SELECT COUNT(*)
		FROM Tasks
		WHERE AssignedId = @EmployeeId
			AND (Statuss = 'Devam Ediyor')
			AND TaskEndDate > GETDATE()) AS DevamEdenGorev,
        (SELECT COUNT(*) 
         FROM Tasks 
         WHERE AssignedId = @EmployeeId 
           AND TaskStartDate > GETDATE()) AS BaslamayanGorev;
END;
GO
/****** Object:  StoredProcedure [dbo].[GörevEkle]    Script Date: 2.01.2025 20:14:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--create database Proje

--use proje

--create table Employees
--(
--EmployeeId int primary key identity,
--EmployeeName varchar(50),
--Email varchar(50),
--Position varchar(50)
--)

--create table Projects
--(
--ProjectId int primary key identity,
--ProjectName varchar(50),
--StartDate datetime,
--EndDate datetime
--)

--create table Tasks
--(
--TaskId int primary key identity,
--TaskName varchar(50),
--TaskStartDate datetime,
--TaskEndDate datetime,
--TaskCompletionDate datetime,
--Statuss varchar(20),
--AssignedId int,
--ProjectsId int,
--foreign key (ProjectsId) references Projects(ProjectId),
--foreign key (AssignedId) references Employees(EmployeeId)
--)

--create proc proje_görev
--as
--select ProjectId,ProjectName,TaskId,TaskName,AssignedId from Projects
--inner join Tasks on Projects.ProjectId=Tasks.ProjectsId	

--exec proje_görev

--exec proje_görev

--CREATE SEQUENCE ProjectId_Seq
--AS INT
--START WITH 1  -- Mevcut projelere ek olarak başlasın
--INCREMENT BY 1;

--ALTER TABLE Projects
--ADD CONSTRAINT DF_ProjectID
--DEFAULT NEXT VALUE FOR ProjectID_Seq FOR ProjectId;


--WITH RankedProjects AS (
--    SELECT ProjectId, ROW_NUMBER() OVER (ORDER BY ProjectName) AS NewProjectID
--    FROM Projects
--)
--UPDATE p
--SET p.ProjectId = rp.NewProjectID
--FROM Projects p
--INNER JOIN RankedProjects rp
--    ON p.ProjectId = rp.ProjectId;

--create proc Listele
--as
--WITH RankedProjects AS (
--    SELECT ProjectId, ROW_NUMBER() OVER (ORDER BY ProjectName) AS NewProjectID
--    FROM Projects
--)
--UPDATE p
--SET p.ProjectId = rp.NewProjectID
--FROM Projects p
--INNER JOIN RankedProjects rp
--    ON p.ProjectId = rp.ProjectId;
--	select * from Projects

--exec Listele

--exec proje_görev
--exec proje_görev

--create proc proje_görev2
--as
--select ProjectId,ProjectName,TaskId,TaskName from Projects
--inner join Tasks on Projects.ProjectId=Tasks.ProjectsId


--create proc proje_detay
--@ProjectId int
--as
--select TaskId,ProjectName as 'Proje Adı',TaskName as 'Görev Adı',TaskStartDate as 'Başlangıç Tarihi',TaskEndDate as 'Bitiş Tarihi',EmployeeName as 'Çalışan Adı' from Tasks
--inner join Projects on Tasks.ProjectsId=Projects.ProjectId
--inner join Employees on Tasks.AssignedId=Employees.EmployeeId
--where Projects.ProjectId = @ProjectId

--exec proje_detay


--ALTER TABLE Tasks
--DROP CONSTRAINT FK__Tasks__ProjectsI__4E88ABD4;

--ALTER TABLE Tasks
--ADD CONSTRAINT FK__Tasks__ProjectsI__4E88ABD4
--FOREIGN KEY (ProjectsId) REFERENCES Projects(ProjectId)
--ON DELETE CASCADE;

--SELECT name
--FROM sys.foreign_keys
--WHERE parent_object_id = OBJECT_ID('Tasks');


CREATE PROCEDURE [dbo].[GörevEkle]
    @ProjeId INT,
    @GörevAdı NVARCHAR(255),
    @ÇalışanId INT,
	@BaslangicTarihi datetime,
	@BitisTarihi datetime,
	@AdamGün FLOAT
AS
BEGIN
    INSERT INTO Tasks (TaskName, ProjectsId, TaskStartDate, TaskEndDate, AssignedId,ManDays)
    VALUES (@GörevAdı, @ProjeId,@BaslangicTarihi,@BitisTarihi,@ÇalışanId,@AdamGün)
END

GO
/****** Object:  StoredProcedure [dbo].[GüncelleGörevDurumu]    Script Date: 2.01.2025 20:14:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--create database Proje

--use proje

--create table Employees
--(
--EmployeeId int primary key identity,
--EmployeeName varchar(50),
--Email varchar(50),
--Position varchar(50)
--)

--create table Projects
--(
--ProjectId int primary key identity,
--ProjectName varchar(50),
--StartDate datetime,
--EndDate datetime
--)

--create table Tasks
--(
--TaskId int primary key identity,
--TaskName varchar(50),
--TaskStartDate datetime,
--TaskEndDate datetime,
--TaskCompletionDate datetime,
--Statuss varchar(20),
--AssignedId int,
--ProjectsId int,
--foreign key (ProjectsId) references Projects(ProjectId),
--foreign key (AssignedId) references Employees(EmployeeId)
--)

--create proc proje_görev
--as
--select ProjectId,ProjectName,TaskId,TaskName,AssignedId from Projects
--inner join Tasks on Projects.ProjectId=Tasks.ProjectsId	

--exec proje_görev

--exec proje_görev

--CREATE SEQUENCE ProjectId_Seq
--AS INT
--START WITH 1  -- Mevcut projelere ek olarak başlasın
--INCREMENT BY 1;

--ALTER TABLE Projects
--ADD CONSTRAINT DF_ProjectID
--DEFAULT NEXT VALUE FOR ProjectID_Seq FOR ProjectId;


--WITH RankedProjects AS (
--    SELECT ProjectId, ROW_NUMBER() OVER (ORDER BY ProjectName) AS NewProjectID
--    FROM Projects
--)
--UPDATE p
--SET p.ProjectId = rp.NewProjectID
--FROM Projects p
--INNER JOIN RankedProjects rp
--    ON p.ProjectId = rp.ProjectId;

--create proc Listele
--as
--WITH RankedProjects AS (
--    SELECT ProjectId, ROW_NUMBER() OVER (ORDER BY ProjectName) AS NewProjectID
--    FROM Projects
--)
--UPDATE p
--SET p.ProjectId = rp.NewProjectID
--FROM Projects p
--INNER JOIN RankedProjects rp
--    ON p.ProjectId = rp.ProjectId;
--	select * from Projects

--exec Listele

--CREATE PROCEDURE ListeleTasks
--AS
--BEGIN
--    WITH RankedTasks AS (
--        SELECT TaskId, ROW_NUMBER() OVER (ORDER BY TaskName) AS NewTaskID
--        FROM Tasks
--    )
--    UPDATE t
--    SET t.TaskId = rt.NewTaskID
--    FROM Tasks t
--    INNER JOIN RankedTasks rt
--        ON t.TaskId = rt.TaskId;

--    exec proje_detay;
--END;

--exec ListeleTasks

--exec proje_görev
--exec proje_görev

--create proc proje_görev2
--as
--select ProjectId,ProjectName,TaskId,TaskName from Projects
--inner join Tasks on Projects.ProjectId=Tasks.ProjectsId


--create proc proje_detay
--@ProjectId int
--as
--select TaskId,ProjectName as 'Proje Adı',TaskName as 'Görev Adı',TaskStartDate as 'Başlangıç Tarihi',TaskEndDate as 'Bitiş Tarihi',ManDays as 'Adam Gün Değeri',Statuss as 'Görev Durumu',EmployeeName as 'Çalışan Adı' from Tasks
--inner join Projects on Tasks.ProjectsId=Projects.ProjectId
--inner join Employees on Tasks.AssignedId=Employees.EmployeeId
--where Projects.ProjectId = @ProjectId

--exec proje_detay

--create proc calisan_detay
--@EmployeeId int
--as
--select EmployeeName as 'Çalışan Adı',Email,ProjectName as 'Çalıştığı Proje',TaskName as 'Çalıştığı Görev' from Employees
--inner join Tasks on Employees.EmployeeId = Tasks.AssignedId
--inner join Projects on Tasks.ProjectsId = Projects.ProjectId
--where Employees.EmployeeId = @EmployeeId

--exec calisan_detay



--ALTER TABLE Tasks
--DROP CONSTRAINT FK__Tasks__ProjectsI__4E88ABD4;

--ALTER TABLE Tasks
--ADD CONSTRAINT FK__Tasks__ProjectsI__4E88ABD4
--FOREIGN KEY (ProjectsId) REFERENCES Projects(ProjectId)
--ON DELETE CASCADE;

--SELECT name
--FROM sys.foreign_keys
--WHERE parent_object_id = OBJECT_ID('Tasks');


--CREATE PROCEDURE GörevEkle
--    @ProjeId INT,
--    @GörevAdı NVARCHAR(255),
--    @ÇalışanId INT,
--	@BaslangicTarihi datetime,
--	@BitisTarihi datetime
--AS
--BEGIN
--    INSERT INTO Tasks (TaskName, ProjectsId, TaskStartDate, TaskEndDate, AssignedId)
--    VALUES (@GörevAdı, @ProjeId,@BaslangicTarihi,@BitisTarihi,@ÇalışanId)
--END



CREATE PROCEDURE [dbo].[GüncelleGörevDurumu]
AS
BEGIN
    -- Statuss sütunundaki görevlerin durumunu güncelle
    UPDATE Tasks
    SET Statuss = 
        CASE
            WHEN GETDATE() < TaskStartDate THEN 'Tamamlanacak'
            WHEN GETDATE() >= TaskStartDate THEN 'Devam Ediyor'
            -- Eğer bir görev tamamlandıysa, durumunu 'Tamamlandı' olarak güncelleyebilirsiniz. Burada ek bir koşul ekleyebilirsiniz.
            ELSE Statuss
        END
    WHERE Statuss IS NULL OR Statuss != 'Tamamlandı'; -- Durumu boş ya da zaten tamamlanmış değilse güncelle
END;


--CREATE PROCEDURE GüncelleGörevDurumu2
--AS
--BEGIN
--    -- Durumunu manuel olarak değiştirmeyen görevleri güncelle
--    UPDATE Tasks
--    SET Statuss = 
--        CASE
--            WHEN GETDATE() < TaskStartDate THEN 'Tamamlanacak'
--            WHEN GETDATE() BETWEEN TaskStartDate AND TaskEndDate THEN 'Devam Ediyor'
--            WHEN GETDATE() > TaskEndDate THEN 'Tamamlandı'
--        END
--    WHERE (Statuss IS NULL OR Statuss NOT IN ('Tamamlanacak', 'Devam Ediyor', 'Tamamlandı')) 
--      AND TaskEndDate < GETDATE();  -- Sadece bitmiş görevleri güncelle
--END;

--exec GüncelleGörevDurumu2
--exec GüncelleGörevDurumu

--ALTER TABLE Tasks
--ADD ManuelTamamlandi BIT DEFAULT 0;


--CREATE PROCEDURE GüncelleManDays
--AS
--BEGIN
--    UPDATE Tasks
--    SET ManDays = DATEDIFF(DAY, TaskStartDate, TaskEndDate) + 1
--    WHERE TaskStartDate IS NOT NULL AND TaskEndDate IS NOT NULL;
--END;




--ALTER TABLE Tasks
--ADD ManDays BIT DEFAULT 0;

--CREATE PROCEDURE GüncelleGörevDurumuVeProjeTarihi
--AS
--BEGIN
--    -- Görev durumlarını güncelle
--    UPDATE Tasks
--    SET Statuss = 
--        CASE
--            WHEN GETDATE() < TaskStartDate THEN 'Tamamlanacak'
--            WHEN GETDATE() BETWEEN TaskStartDate AND TaskEndDate THEN 'Devam Ediyor'
--        END
--    WHERE Statuss IS NULL OR Statuss NOT IN ('Tamamlanacak', 'Devam Ediyor', 'Tamamlandı');


--    -- Manuel tamamlanmayan görevler kontrol edilir
--    DECLARE @ProjectId INT;
--    DECLARE @YeniBitisTarihi DATE;

--    DECLARE görev_cursor CURSOR FOR
--    SELECT ProjectsId
--    FROM Tasks
--    WHERE ManuelTamamlandi = 0 AND GETDATE() > TaskEndDate;

--    OPEN görev_cursor;
--    FETCH NEXT FROM görev_cursor INTO @ProjectId;

--    WHILE @@FETCH_STATUS = 0
--    BEGIN
--        -- Proje bitiş tarihini 2 gün ileriye al
--        SET @YeniBitisTarihi = DATEADD(DAY, 2, (SELECT EndDate FROM Projects WHERE ProjectId = @ProjectId));


--        UPDATE Projects
--        SET EndDate = @YeniBitisTarihi
--        WHERE ProjectId = @ProjectId;

--        FETCH NEXT FROM görev_cursor INTO @ProjectId;
--    END;

--    CLOSE görev_cursor;
--    DEALLOCATE görev_cursor;
--END;


--exec GüncelleGörevDurumuVeProjeTarihi


--ALTER TABLE Tasks
--DROP CONSTRAINT FK__Tasks__AssignedI__4F7CD00D;

--ALTER TABLE Tasks
--ADD CONSTRAINT FK__Tasks__AssignedI__4F7CD00D
--FOREIGN KEY (AssignedId) REFERENCES Employees(EmployeeId)
--ON DELETE CASCADE;


--SELECT name
--FROM sys.foreign_keys
--WHERE parent_object_id = OBJECT_ID('Employees');


--ALTER TABLE Projects
--ADD ChangedProjectDate DATETIME default 0,
--    ExtraTime INT default 0;

--CREATE PROCEDURE GüncelleProjeDurumu
--AS
--BEGIN
--    DECLARE @ProjeId INT;
--    DECLARE @Projeler INT; -- Proje içerisindeki tamamlanmamış görevlerin sayısı
--    DECLARE @SonBitişTarihi DATETIME; -- Proje için en son bitiş tarihi
--    DECLARE @YeniTarih DATETIME; -- Proje bitiş tarihi ertelenmiş yeni tarih
--    DECLARE @EkSüre INT; -- Projeye ek süre (5 gün)

--    -- Projelerdeki görevleri kontrol et
--    DECLARE proje_cursor CURSOR FOR
--    SELECT ProjectId
--    FROM Projects;

--    OPEN proje_cursor;
--    FETCH NEXT FROM proje_cursor INTO @ProjeId;

--    -- Proje id'si ile tüm görevleri kontrol et
--    WHILE @@FETCH_STATUS = 0
--    BEGIN
--        -- Projeye ait tamamlanmamış görevlerin sayısını kontrol et
--        SELECT @Projeler = COUNT(*)
--        FROM Tasks
--        WHERE ProjectsId = @ProjeId
--        AND Statuss != 'Tamamlandı'
--        AND TaskEndDate <= GETDATE();  -- Eğer bitiş tarihi geçmiş ve tamamlanmamışsa

--        -- Proje zamanında tamamlanmadıysa bitiş tarihini 5 gün ertele
--        IF @Projeler > 0 -- Görev tamamlanmadıysa
--        BEGIN
--            -- Proje bitiş tarihi 5 gün ertelenir
--            SELECT @SonBitişTarihi = MAX(TaskEndDate)
--            FROM Tasks
--            WHERE ProjectsId = @ProjeId;

--            -- 5 gün ekleniyor
--            SET @YeniTarih = DATEADD(DAY, 5, @SonBitişTarihi);

--            -- Projeye ek süre olarak 5 gün atanıyor
--            SET @EkSüre = 5;

--            -- Proje durumunu güncelle
--            UPDATE Projects
--            SET Durum = 'Tamamlanmadı', 
--                ChangedProjectDate = @YeniTarih, 
--                ExtraTime = @EkSüre
--            WHERE ProjectId = @ProjeId;
--        END
--        ELSE
--        BEGIN
--            -- Eğer projedeki tüm görevler tamamlandıysa, proje durumu "Tamamlandı" olarak güncellenir
--            UPDATE Projects
--            SET Durum = 'Tamamlandı', 
--                ChangedProjectDate = NULL, 
--                ExtraTime = 0
--            WHERE ProjectId = @ProjeId;
--        END

--        FETCH NEXT FROM proje_cursor INTO @ProjeId;
--    END

--    CLOSE proje_cursor;
--    DEALLOCATE proje_cursor;

--    -- Durum mesajı
--    PRINT 'Proje durumu başarıyla güncellendi';
--END;


--CREATE PROCEDURE GüncelleProjeDurumu
--AS
--BEGIN
--    DECLARE @ProjeId INT;
--    DECLARE @Projeler INT; -- Proje içerisindeki tamamlanmamış görevlerin sayısı
--    DECLARE @SonBitişTarihi DATETIME; -- Proje için en son bitiş tarihi
--    DECLARE @YeniTarih DATETIME; -- Proje bitiş tarihi ertelenmiş yeni tarih
--    DECLARE @EkSüre INT; -- Projeye ek süre (5 gün)
--    DECLARE @TaskId INT; -- Görev ID'si
--    DECLARE @TaskStatus NVARCHAR(50); -- Görev durumu

--    -- Projelerdeki görevleri kontrol et
--    DECLARE proje_cursor CURSOR FOR
--    SELECT ProjectId
--    FROM Projects;

--    OPEN proje_cursor;
--    FETCH NEXT FROM proje_cursor INTO @ProjeId;

--    -- Proje id'si ile tüm görevleri kontrol et
--    WHILE @@FETCH_STATUS = 0
--    BEGIN
--        -- Projeye ait tamamlanmamış görevlerin sayısını kontrol et
--        SELECT @Projeler = COUNT(*)
--        FROM Tasks
--        WHERE ProjectsId = @ProjeId
--        AND Statuss != 'Tamamlandı'
--        AND TaskEndDate <= GETDATE();  -- Eğer bitiş tarihi geçmiş ve tamamlanmamışsa

--        -- Proje zamanında tamamlanmadıysa bitiş tarihini 5 gün ertele
--        IF @Projeler > 0 -- Görev tamamlanmadıysa
--        BEGIN
--            -- Proje bitiş tarihi 5 gün ertelenir
--            SELECT @SonBitişTarihi = MAX(TaskEndDate)
--            FROM Tasks
--            WHERE ProjectsId = @ProjeId;

--            -- 5 gün ekleniyor
--            SET @YeniTarih = DATEADD(DAY, 5, @SonBitişTarihi);

--            -- Projeye ek süre olarak 5 gün atanıyor
--            SET @EkSüre = 5;

--            -- Proje durumunu güncelle
--            UPDATE Projects
--            SET Durum = 'Tamamlanmadı', 
--                ChangedProjectDate = @YeniTarih, 
--                ExtraTime = @EkSüre
--            WHERE ProjectId = @ProjeId;

--            -- Görevlerin durumunu güncelle: "Devam Ediyor"
--            DECLARE görev_cursor CURSOR FOR
--            SELECT TaskId
--            FROM Tasks
--            WHERE ProjectsId = @ProjeId
--            AND Statuss != 'Tamamlandı'
--            AND TaskEndDate <= GETDATE();

--            OPEN görev_cursor;
--            FETCH NEXT FROM görev_cursor INTO @TaskId;

--            WHILE @@FETCH_STATUS = 0
--            BEGIN
--                UPDATE Tasks
--                SET Statuss = 'Devam Ediyor'
--                WHERE TaskId = @TaskId;

--                FETCH NEXT FROM görev_cursor INTO @TaskId;
--            END

--            CLOSE görev_cursor;
--            DEALLOCATE görev_cursor;

--        END
--        ELSE
--        BEGIN
--            -- Eğer projedeki tüm görevler tamamlandıysa, proje durumu "Tamamlandı" olarak güncellenir
--            UPDATE Projects
--            SET Durum = 'Tamamlandı', 
--                ChangedProjectDate = NULL, 
--                ExtraTime = 0
--            WHERE ProjectId = @ProjeId;
--        END

--        FETCH NEXT FROM proje_cursor INTO @ProjeId;
--    END

--    CLOSE proje_cursor;
--    DEALLOCATE proje_cursor;

--    -- Durum mesajı
--    PRINT 'Proje durumu başarıyla güncellendi';
--END;



GO
/****** Object:  StoredProcedure [dbo].[GüncelleProjeDurumu]    Script Date: 2.01.2025 20:14:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--create database Proje

--use proje

--create table Employees
--(
--EmployeeId int primary key identity,
--EmployeeName varchar(50),
--Email varchar(50),
--Position varchar(50)
--)

--create table Projects
--(
--ProjectId int primary key identity,
--ProjectName varchar(50),
--StartDate datetime,
--EndDate datetime
--)

--create table Tasks
--(
--TaskId int primary key identity,
--TaskName varchar(50),
--TaskStartDate datetime,
--TaskEndDate datetime,
--TaskCompletionDate datetime,
--Statuss varchar(20),
--AssignedId int,
--ProjectsId int,
--foreign key (ProjectsId) references Projects(ProjectId),
--foreign key (AssignedId) references Employees(EmployeeId)
--)

--create proc proje_görev
--as
--select ProjectId,ProjectName,TaskId,TaskName,AssignedId from Projects
--inner join Tasks on Projects.ProjectId=Tasks.ProjectsId	

--exec proje_görev

--exec proje_görev

--CREATE SEQUENCE ProjectId_Seq
--AS INT
--START WITH 1  -- Mevcut projelere ek olarak başlasın
--INCREMENT BY 1;

--ALTER TABLE Projects
--ADD CONSTRAINT DF_ProjectID
--DEFAULT NEXT VALUE FOR ProjectID_Seq FOR ProjectId;


--WITH RankedProjects AS (
--    SELECT ProjectId, ROW_NUMBER() OVER (ORDER BY ProjectName) AS NewProjectID
--    FROM Projects
--)
--UPDATE p
--SET p.ProjectId = rp.NewProjectID
--FROM Projects p
--INNER JOIN RankedProjects rp
--    ON p.ProjectId = rp.ProjectId;

--create proc Listele
--as
--WITH RankedProjects AS (
--    SELECT ProjectId, ROW_NUMBER() OVER (ORDER BY ProjectName) AS NewProjectID
--    FROM Projects
--)
---- Yeni bir sütun ekleyerek sıralanmış ID'leri atayın
--UPDATE p
--SET p.ProjectId = rp.ProjectId
--FROM Projects p
--INNER JOIN RankedProjects rp
--    ON p.ProjectId = rp.ProjectId;

---- Verileri listele
--SELECT * FROM Projects;

--exec Listele

--CREATE PROCEDURE ListeleTasks
--AS
--BEGIN
--    WITH RankedTasks AS (
--        SELECT TaskId, ROW_NUMBER() OVER (ORDER BY TaskName) AS NewTaskID
--        FROM Tasks
--    )
--    UPDATE t
--    SET t.TaskId = rt.NewTaskID
--    FROM Tasks t
--    INNER JOIN RankedTasks rt
--        ON t.TaskId = rt.TaskId;

--    exec proje_detay;
--END;

--exec ListeleTasks

--exec proje_görev
--exec proje_görev

--create proc proje_görev2
--as
--select ProjectId,ProjectName,TaskId,TaskName from Projects
--inner join Tasks on Projects.ProjectId=Tasks.ProjectsId


--create proc proje_detay
--@ProjectId int
--as
--select TaskId,ProjectName as 'Proje Adı',TaskName as 'Görev Adı',TaskStartDate as 'Başlangıç Tarihi',TaskEndDate as 'Bitiş Tarihi',ManDays as 'Adam Gün Değeri',Statuss as 'Görev Durumu',EmployeeName as 'Çalışan Adı' from Tasks
--inner join Projects on Tasks.ProjectsId=Projects.ProjectId
--inner join Employees on Tasks.AssignedId=Employees.EmployeeId
--where Projects.ProjectId = @ProjectId

--exec proje_detay

--create proc calisan_detay
--@EmployeeId int
--as
--select EmployeeName as 'Çalışan Adı',Email,ProjectName as 'Çalıştığı Proje',TaskName as 'Çalıştığı Görev' from Employees
--inner join Tasks on Employees.EmployeeId = Tasks.AssignedId
--inner join Projects on Tasks.ProjectsId = Projects.ProjectId
--where Employees.EmployeeId = @EmployeeId

--exec calisan_detay



--ALTER TABLE Tasks
--DROP CONSTRAINT FK__Tasks__ProjectsI__4E88ABD4;

--ALTER TABLE Tasks
--ADD CONSTRAINT FK__Tasks__ProjectsI__4E88ABD4
--FOREIGN KEY (ProjectsId) REFERENCES Projects(ProjectId)
--ON DELETE CASCADE;

--SELECT name
--FROM sys.foreign_keys
--WHERE parent_object_id = OBJECT_ID('Tasks');


--CREATE PROCEDURE GörevEkle
--    @ProjeId INT,
--    @GörevAdı NVARCHAR(255),
--    @ÇalışanId INT,
--	@BaslangicTarihi datetime,
--	@BitisTarihi datetime
--AS
--BEGIN
--    INSERT INTO Tasks (TaskName, ProjectsId, TaskStartDate, TaskEndDate, AssignedId)
--    VALUES (@GörevAdı, @ProjeId,@BaslangicTarihi,@BitisTarihi,@ÇalışanId)
--END



--CREATE PROCEDURE GüncelleGörevDurumu
--AS
--BEGIN
--    -- Statuss sütunundaki görevlerin durumunu güncelle
--    UPDATE Tasks
--    SET Statuss = 
--        CASE
--            WHEN GETDATE() < TaskStartDate THEN 'Tamamlanacak'
--            WHEN GETDATE() >= TaskStartDate THEN 'Devam Ediyor'
--            -- Eğer bir görev tamamlandıysa, durumunu 'Tamamlandı' olarak güncelleyebilirsiniz. Burada ek bir koşul ekleyebilirsiniz.
--            ELSE Statuss
--        END
--    WHERE Statuss IS NULL OR Statuss != 'Tamamlandı'; -- Durumu boş ya da zaten tamamlanmış değilse güncelle
--END;


--CREATE PROCEDURE GüncelleGörevDurumu2
--AS
--BEGIN
--    -- Durumunu manuel olarak değiştirmeyen görevleri güncelle
--    UPDATE Tasks
--    SET Statuss = 
--        CASE
--            WHEN GETDATE() < TaskStartDate THEN 'Tamamlanacak'
--            WHEN GETDATE() BETWEEN TaskStartDate AND TaskEndDate THEN 'Devam Ediyor'
--            WHEN GETDATE() > TaskEndDate THEN 'Tamamlandı'
--        END
--    WHERE (Statuss IS NULL OR Statuss NOT IN ('Tamamlanacak', 'Devam Ediyor', 'Tamamlandı')) 
--      AND TaskEndDate < GETDATE();  -- Sadece bitmiş görevleri güncelle
--END;

--exec GüncelleGörevDurumu2
--exec GüncelleGörevDurumu

--ALTER TABLE Tasks
--ADD ManuelTamamlandi BIT DEFAULT 0;


--CREATE PROCEDURE GüncelleManDays
--AS
--BEGIN
--    UPDATE Tasks
--    SET ManDays = DATEDIFF(DAY, TaskStartDate, TaskEndDate) + 1
--    WHERE TaskStartDate IS NOT NULL AND TaskEndDate IS NOT NULL;
--END;




--ALTER TABLE Tasks
--ADD ManDays BIT DEFAULT 0;

--CREATE PROCEDURE GüncelleGörevDurumuVeProjeTarihi
--AS
--BEGIN
--    -- Görev durumlarını güncelle
--    UPDATE Tasks
--    SET Statuss = 
--        CASE
--            WHEN GETDATE() < TaskStartDate THEN 'Tamamlanacak'
--            WHEN GETDATE() BETWEEN TaskStartDate AND TaskEndDate THEN 'Devam Ediyor'
--        END
--    WHERE Statuss IS NULL OR Statuss NOT IN ('Tamamlanacak', 'Devam Ediyor', 'Tamamlandı');


--    -- Manuel tamamlanmayan görevler kontrol edilir
--    DECLARE @ProjectId INT;
--    DECLARE @YeniBitisTarihi DATE;

--    DECLARE görev_cursor CURSOR FOR
--    SELECT ProjectsId
--    FROM Tasks
--    WHERE ManuelTamamlandi = 0 AND GETDATE() > TaskEndDate;

--    OPEN görev_cursor;
--    FETCH NEXT FROM görev_cursor INTO @ProjectId;

--    WHILE @@FETCH_STATUS = 0
--    BEGIN
--        -- Proje bitiş tarihini 2 gün ileriye al
--        SET @YeniBitisTarihi = DATEADD(DAY, 2, (SELECT EndDate FROM Projects WHERE ProjectId = @ProjectId));


--        UPDATE Projects
--        SET EndDate = @YeniBitisTarihi
--        WHERE ProjectId = @ProjectId;

--        FETCH NEXT FROM görev_cursor INTO @ProjectId;
--    END;

--    CLOSE görev_cursor;
--    DEALLOCATE görev_cursor;
--END;


--exec GüncelleGörevDurumuVeProjeTarihi


--ALTER TABLE Tasks
--DROP CONSTRAINT FK__Tasks__AssignedI__4F7CD00D;

--ALTER TABLE Tasks
--ADD CONSTRAINT FK__Tasks__AssignedI__4F7CD00D
--FOREIGN KEY (AssignedId) REFERENCES Employees(EmployeeId)
--ON DELETE CASCADE;


--SELECT name
--FROM sys.foreign_keys
--WHERE parent_object_id = OBJECT_ID('Employees');


--ALTER TABLE Projects
--ADD ChangedProjectDate DATETIME default 0,
--    ExtraTime INT default 0;

--CREATE PROCEDURE GüncelleProjeDurumu
--AS
--BEGIN
--    DECLARE @ProjeId INT;
--    DECLARE @Projeler INT; -- Proje içerisindeki tamamlanmamış görevlerin sayısı
--    DECLARE @SonBitişTarihi DATETIME; -- Proje için en son bitiş tarihi
--    DECLARE @YeniTarih DATETIME; -- Proje bitiş tarihi ertelenmiş yeni tarih
--    DECLARE @EkSüre INT; -- Projeye ek süre (5 gün)

--    -- Projelerdeki görevleri kontrol et
--    DECLARE proje_cursor CURSOR FOR
--    SELECT ProjectId
--    FROM Projects;

--    OPEN proje_cursor;
--    FETCH NEXT FROM proje_cursor INTO @ProjeId;

--    -- Proje id'si ile tüm görevleri kontrol et
--    WHILE @@FETCH_STATUS = 0
--    BEGIN
--        -- Projeye ait tamamlanmamış görevlerin sayısını kontrol et
--        SELECT @Projeler = COUNT(*)
--        FROM Tasks
--        WHERE ProjectsId = @ProjeId
--        AND Statuss != 'Tamamlandı'
--        AND TaskEndDate <= GETDATE();  -- Eğer bitiş tarihi geçmiş ve tamamlanmamışsa

--        -- Proje zamanında tamamlanmadıysa bitiş tarihini 5 gün ertele
--        IF @Projeler > 0 -- Görev tamamlanmadıysa
--        BEGIN
--            -- Proje bitiş tarihi 5 gün ertelenir
--            SELECT @SonBitişTarihi = MAX(TaskEndDate)
--            FROM Tasks
--            WHERE ProjectsId = @ProjeId;

--            -- 5 gün ekleniyor
--            SET @YeniTarih = DATEADD(DAY, 5, @SonBitişTarihi);

--            -- Projeye ek süre olarak 5 gün atanıyor
--            SET @EkSüre = 5;

--            -- Proje durumunu güncelle
--            UPDATE Projects
--            SET Durum = 'Tamamlanmadı', 
--                ChangedProjectDate = @YeniTarih, 
--                ExtraTime = @EkSüre
--            WHERE ProjectId = @ProjeId;
--        END
--        ELSE
--        BEGIN
--            -- Eğer projedeki tüm görevler tamamlandıysa, proje durumu "Tamamlandı" olarak güncellenir
--            UPDATE Projects
--            SET Durum = 'Tamamlandı', 
--                ChangedProjectDate = NULL, 
--                ExtraTime = 0
--            WHERE ProjectId = @ProjeId;
--        END

--        FETCH NEXT FROM proje_cursor INTO @ProjeId;
--    END

--    CLOSE proje_cursor;
--    DEALLOCATE proje_cursor;

--    -- Durum mesajı
--    PRINT 'Proje durumu başarıyla güncellendi';
--END;


CREATE PROCEDURE [dbo].[GüncelleProjeDurumu]
AS
BEGIN
    -- Gerekli değişkenler tanımlanıyor
    DECLARE @ProjeId INT; -- Proje ID'sini tutacak değişken
    DECLARE @Projeler INT; -- Tamamlanmamış görevlerin sayısını tutacak değişken
	DECLARE @ProjeBitişTarihi DATETIME; -- Proje bitiş tarihini tutacak değişken
	DECLARE @GecikmeSüresi INT; -- Gecikme süresini tutacak değişken
    DECLARE @ErtelenmişTarih DATETIME; -- Ertelenmiş proje bitiş tarihini tutacak değişken
    DECLARE @TaskId INT; -- Görev ID'sini tutacak değişken
    DECLARE @TaskStatus NVARCHAR(50); -- Görev durumunu tutacak değişken

    -- Projects tablosundaki ProjectId'leri almak için bir cursor tanımlanıyor
    DECLARE proje_cursor CURSOR FOR
    SELECT ProjectId
    FROM Projects;

    -- Cursor açılıyor ve ilk proje ID'si alınıyor
    OPEN proje_cursor;
    FETCH NEXT FROM proje_cursor INTO @ProjeId;

    -- Cursor üzerindeki her proje için döngü başlatılıyor
    WHILE @@FETCH_STATUS = 0
    BEGIN
        -- Projeye ait tamamlanmamış görevlerin sayısı alınıyor
        SELECT @Projeler = COUNT(*)
        FROM Tasks
        WHERE ProjectsId = @ProjeId
        AND Statuss != 'Tamamlandı';

		-- Projenin bitiş tarihi ve ertelenmiş tarihi alınıyor
        SELECT @ProjeBitişTarihi = EndDate, 
               @ErtelenmişTarih = EndDate
        FROM Projects
        WHERE ProjectId = @ProjeId;

        -- Gecikme süresi hesaplanıyor
        SELECT @GecikmeSüresi = DATEDIFF(DAY, MIN(EndDate), GETDATE())
        FROM Projects
        WHERE ProjectId = @ProjeId;

		 -- Eğer proje bitiş tarihi geçmişteyse, ileri bir tarihe erteleniyor
        WHILE DATEDIFF(DAY, @ErtelenmişTarih, GETDATE()) > 0
        BEGIN
            SET @ErtelenmişTarih = DATEADD(DAY, 5, @ErtelenmişTarih);
        END

		-- Eğer projede tamamlanmamış görev yok ve gecikme süresi > 0 ise
		IF @Projeler = 0 AND @GecikmeSüresi > 0
        BEGIN
            -- Proje durumunu "Tamamlandı" olarak güncelle
            UPDATE Projects
            SET Durum = 'Tamamlandı', 
                ChangedProjectDate = @ErtelenmişTarih, 
                GecikmeSüresi = @GecikmeSüresi
            WHERE ProjectId = @ProjeId;

            -- Görevlerin durumunu "Devam Ediyor" olarak güncellemek için cursor tanımlanıyor
            DECLARE görev_cursor CURSOR FOR
            SELECT TaskId
            FROM Tasks
            WHERE ProjectsId = @ProjeId
            AND Statuss != 'Tamamlandı'
            AND TaskEndDate <= GETDATE();

            -- Görev cursor'ı açılıyor ve görevler üzerinde döngü başlatılıyor
            OPEN görev_cursor;
            FETCH NEXT FROM görev_cursor INTO @TaskId;

            WHILE @@FETCH_STATUS = 0
            BEGIN
                -- Görev durumunu "Devam Ediyor" olarak güncelle
                UPDATE Tasks
                SET Statuss = 'Devam Ediyor'
                WHERE TaskId = @TaskId;

                FETCH NEXT FROM görev_cursor INTO @TaskId;
            END

            -- Görev cursor'ı kapatılıyor ve bellekteki tanımı kaldırılıyor
            CLOSE görev_cursor;
            DEALLOCATE görev_cursor;
        END

		-- Eğer projede tamamlanmamış görev varsa ve gecikme süresi > 0 ise
        IF @Projeler > 0 AND @GecikmeSüresi > 0
        BEGIN
            -- Proje durumunu "Tamamlanmadı" olarak güncelle
            UPDATE Projects
            SET Durum = 'Tamamlanmadı', 
                ChangedProjectDate = @ErtelenmişTarih, 
                GecikmeSüresi = @GecikmeSüresi
            WHERE ProjectId = @ProjeId;

            -- Görevlerin durumunu "Devam Ediyor" olarak güncellemek için cursor tanımlanıyor
            DECLARE görev_cursor CURSOR FOR
            SELECT TaskId
            FROM Tasks
            WHERE ProjectsId = @ProjeId
            AND Statuss != 'Tamamlandı'
            AND TaskEndDate <= GETDATE();

            -- Görev cursor'ı açılıyor ve görevler üzerinde döngü başlatılıyor
            OPEN görev_cursor;
            FETCH NEXT FROM görev_cursor INTO @TaskId;

            WHILE @@FETCH_STATUS = 0
            BEGIN
                -- Görev durumunu "Devam Ediyor" olarak güncelle
                UPDATE Tasks
                SET Statuss = 'Devam Ediyor'
                WHERE TaskId = @TaskId;

                FETCH NEXT FROM görev_cursor INTO @TaskId;
            END

            -- Görev cursor'ı kapatılıyor ve bellekteki tanımı kaldırılıyor
            CLOSE görev_cursor;
            DEALLOCATE görev_cursor;
        END

		-- Eğer projede tamamlanmamış görev varsa ve gecikme süresi <= 0 ise
        IF @Projeler > 0 AND @GecikmeSüresi <= 0
        BEGIN
            -- Proje durumunu "Tamamlanmadı" olarak güncelle
            UPDATE Projects
            SET Durum = 'Tamamlanmadı', 
                ChangedProjectDate = NULL,
				GecikmeSüresi = NULL
            WHERE ProjectId = @ProjeId;
        END

		-- Eğer projede tamamlanmamış görev yoksa ve gecikme süresi <= 0 ise
        IF @Projeler = 0 AND @GecikmeSüresi <= 0
        BEGIN
            -- Proje durumunu "Tamamlandı" olarak güncelle
            UPDATE Projects
            SET Durum = 'Tamamlandı', 
                ChangedProjectDate = NULL,
				GecikmeSüresi = NULL
            WHERE ProjectId = @ProjeId;
        END

        -- Bir sonraki projeye geçiliyor
        FETCH NEXT FROM proje_cursor INTO @ProjeId;
    END

    -- Proje cursor'ı kapatılıyor ve bellekteki tanımı kaldırılıyor
    CLOSE proje_cursor;
    DEALLOCATE proje_cursor;

    -- Durum mesajı dönebilir (eklenmemiş durumda)
END;
GO
/****** Object:  StoredProcedure [dbo].[Listele]    Script Date: 2.01.2025 20:14:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--create database Proje

--use proje

--create table Employees
--(
--EmployeeId int primary key identity,
--EmployeeName varchar(50),
--Email varchar(50),
--Position varchar(50)
--)

--create table Projects
--(
--ProjectId int primary key identity,
--ProjectName varchar(50),
--StartDate datetime,
--EndDate datetime
--)

--create table Tasks
--(
--TaskId int primary key identity,
--TaskName varchar(50),
--TaskStartDate datetime,
--TaskEndDate datetime,
--TaskCompletionDate datetime,
--Statuss varchar(20),
--AssignedId int,
--ProjectsId int,
--foreign key (ProjectsId) references Projects(ProjectId),
--foreign key (AssignedId) references Employees(EmployeeId)
--)

--create proc proje_görev
--as
--select ProjectId,ProjectName,TaskId,TaskName,AssignedId from Projects
--inner join Tasks on Projects.ProjectId=Tasks.ProjectsId	

--exec proje_görev

--exec proje_görev

--CREATE SEQUENCE ProjectId_Seq
--AS INT
--START WITH 1  -- Mevcut projelere ek olarak başlasın
--INCREMENT BY 1;

--ALTER TABLE Projects
--ADD CONSTRAINT DF_ProjectID
--DEFAULT NEXT VALUE FOR ProjectID_Seq FOR ProjectId;


--WITH RankedProjects AS (
--    SELECT ProjectId, ROW_NUMBER() OVER (ORDER BY ProjectName) AS NewProjectID
--    FROM Projects
--)
--UPDATE p
--SET p.ProjectId = rp.NewProjectID
--FROM Projects p
--INNER JOIN RankedProjects rp
--    ON p.ProjectId = rp.ProjectId;

CREATE proc [dbo].[Listele]
as
WITH RankedProjects AS (
    SELECT ProjectId, ROW_NUMBER() OVER (ORDER BY ProjectName) AS NewProjectID
    FROM Projects
)
-- Yeni bir sütun ekleyerek sıralanmış ID'leri atayın
UPDATE p
SET p.ProjectId = rp.ProjectId
FROM Projects p
INNER JOIN RankedProjects rp
    ON p.ProjectId = rp.ProjectId;

-- Verileri listele
SELECT ProjectId as 'Proje ID', ProjectName as 'Proje Adı', StartDate as 'Proje Başlangıç Tarihi',EndDate as 'Proje Bitiş Tarihi',Durum AS 'Proje Durumu',
ChangedProjectDate as 'Ertelenen Proje Tarihi',GecikmeSüresi as 'Gecikme Süresi' FROM Projects;

--exec Listele

--CREATE PROCEDURE ListeleTasks
--AS
--BEGIN
--    WITH RankedTasks AS (
--        SELECT TaskId, ROW_NUMBER() OVER (ORDER BY TaskName) AS NewTaskID
--        FROM Tasks
--    )
--    UPDATE t
--    SET t.TaskId = rt.NewTaskID
--    FROM Tasks t
--    INNER JOIN RankedTasks rt
--        ON t.TaskId = rt.TaskId;

--    exec proje_detay;
--END;

--exec ListeleTasks

--exec proje_görev
--exec proje_görev

--create proc proje_görev2
--as
--select ProjectId,ProjectName,TaskId,TaskName from Projects
--inner join Tasks on Projects.ProjectId=Tasks.ProjectsId


--create proc proje_detay
--@ProjectId int
--as
--select TaskId,ProjectName as 'Proje Adı',TaskName as 'Görev Adı',TaskStartDate as 'Başlangıç Tarihi',TaskEndDate as 'Bitiş Tarihi',ManDays as 'Adam Gün Değeri',Statuss as 'Görev Durumu',EmployeeName as 'Çalışan Adı' from Tasks
--inner join Projects on Tasks.ProjectsId=Projects.ProjectId
--inner join Employees on Tasks.AssignedId=Employees.EmployeeId
--where Projects.ProjectId = @ProjectId

--exec proje_detay

--create proc calisan_detay
--@EmployeeId int
--as
--select EmployeeName as 'Çalışan Adı',Email,ProjectName as 'Çalıştığı Proje',TaskName as 'Çalıştığı Görev' from Employees
--inner join Tasks on Employees.EmployeeId = Tasks.AssignedId
--inner join Projects on Tasks.ProjectsId = Projects.ProjectId
--where Employees.EmployeeId = @EmployeeId

--exec calisan_detay



--ALTER TABLE Tasks
--DROP CONSTRAINT FK__Tasks__ProjectsI__4E88ABD4;

--ALTER TABLE Tasks
--ADD CONSTRAINT FK__Tasks__ProjectsI__4E88ABD4
--FOREIGN KEY (ProjectsId) REFERENCES Projects(ProjectId)
--ON DELETE CASCADE;

--SELECT name
--FROM sys.foreign_keys
--WHERE parent_object_id = OBJECT_ID('Tasks');


--CREATE PROCEDURE GörevEkle
--    @ProjeId INT,
--    @GörevAdı NVARCHAR(255),
--    @ÇalışanId INT,
--	@BaslangicTarihi datetime,
--	@BitisTarihi datetime
--AS
--BEGIN
--    INSERT INTO Tasks (TaskName, ProjectsId, TaskStartDate, TaskEndDate, AssignedId)
--    VALUES (@GörevAdı, @ProjeId,@BaslangicTarihi,@BitisTarihi,@ÇalışanId)
--END



--CREATE PROCEDURE GüncelleGörevDurumu
--AS
--BEGIN
--    -- Statuss sütunundaki görevlerin durumunu güncelle
--    UPDATE Tasks
--    SET Statuss = 
--        CASE
--            WHEN GETDATE() < TaskStartDate THEN 'Tamamlanacak'
--            WHEN GETDATE() >= TaskStartDate THEN 'Devam Ediyor'
--            -- Eğer bir görev tamamlandıysa, durumunu 'Tamamlandı' olarak güncelleyebilirsiniz. Burada ek bir koşul ekleyebilirsiniz.
--            ELSE Statuss
--        END
--    WHERE Statuss IS NULL OR Statuss != 'Tamamlandı'; -- Durumu boş ya da zaten tamamlanmış değilse güncelle
--END;


--CREATE PROCEDURE GüncelleGörevDurumu2
--AS
--BEGIN
--    -- Durumunu manuel olarak değiştirmeyen görevleri güncelle
--    UPDATE Tasks
--    SET Statuss = 
--        CASE
--            WHEN GETDATE() < TaskStartDate THEN 'Tamamlanacak'
--            WHEN GETDATE() BETWEEN TaskStartDate AND TaskEndDate THEN 'Devam Ediyor'
--            WHEN GETDATE() > TaskEndDate THEN 'Tamamlandı'
--        END
--    WHERE (Statuss IS NULL OR Statuss NOT IN ('Tamamlanacak', 'Devam Ediyor', 'Tamamlandı')) 
--      AND TaskEndDate < GETDATE();  -- Sadece bitmiş görevleri güncelle
--END;

--exec GüncelleGörevDurumu2
--exec GüncelleGörevDurumu

--ALTER TABLE Tasks
--ADD ManuelTamamlandi BIT DEFAULT 0;


--CREATE PROCEDURE GüncelleManDays
--AS
--BEGIN
--    UPDATE Tasks
--    SET ManDays = DATEDIFF(DAY, TaskStartDate, TaskEndDate) + 1
--    WHERE TaskStartDate IS NOT NULL AND TaskEndDate IS NOT NULL;
--END;




--ALTER TABLE Tasks
--ADD ManDays BIT DEFAULT 0;

--CREATE PROCEDURE GüncelleGörevDurumuVeProjeTarihi
--AS
--BEGIN
--    -- Görev durumlarını güncelle
--    UPDATE Tasks
--    SET Statuss = 
--        CASE
--            WHEN GETDATE() < TaskStartDate THEN 'Tamamlanacak'
--            WHEN GETDATE() BETWEEN TaskStartDate AND TaskEndDate THEN 'Devam Ediyor'
--        END
--    WHERE Statuss IS NULL OR Statuss NOT IN ('Tamamlanacak', 'Devam Ediyor', 'Tamamlandı');


--    -- Manuel tamamlanmayan görevler kontrol edilir
--    DECLARE @ProjectId INT;
--    DECLARE @YeniBitisTarihi DATE;

--    DECLARE görev_cursor CURSOR FOR
--    SELECT ProjectsId
--    FROM Tasks
--    WHERE ManuelTamamlandi = 0 AND GETDATE() > TaskEndDate;

--    OPEN görev_cursor;
--    FETCH NEXT FROM görev_cursor INTO @ProjectId;

--    WHILE @@FETCH_STATUS = 0
--    BEGIN
--        -- Proje bitiş tarihini 2 gün ileriye al
--        SET @YeniBitisTarihi = DATEADD(DAY, 2, (SELECT EndDate FROM Projects WHERE ProjectId = @ProjectId));


--        UPDATE Projects
--        SET EndDate = @YeniBitisTarihi
--        WHERE ProjectId = @ProjectId;

--        FETCH NEXT FROM görev_cursor INTO @ProjectId;
--    END;

--    CLOSE görev_cursor;
--    DEALLOCATE görev_cursor;
--END;


--exec GüncelleGörevDurumuVeProjeTarihi


--ALTER TABLE Tasks
--DROP CONSTRAINT FK__Tasks__AssignedI__4F7CD00D;

--ALTER TABLE Tasks
--ADD CONSTRAINT FK__Tasks__AssignedI__4F7CD00D
--FOREIGN KEY (AssignedId) REFERENCES Employees(EmployeeId)
--ON DELETE CASCADE;


--SELECT name
--FROM sys.foreign_keys
--WHERE parent_object_id = OBJECT_ID('Employees');


--ALTER TABLE Projects
--ADD ChangedProjectDate DATETIME default 0,
--    ExtraTime INT default 0;

--CREATE PROCEDURE GüncelleProjeDurumu
--AS
--BEGIN
--    DECLARE @ProjeId INT;
--    DECLARE @Projeler INT; -- Proje içerisindeki tamamlanmamış görevlerin sayısı
--    DECLARE @SonBitişTarihi DATETIME; -- Proje için en son bitiş tarihi
--    DECLARE @YeniTarih DATETIME; -- Proje bitiş tarihi ertelenmiş yeni tarih
--    DECLARE @EkSüre INT; -- Projeye ek süre (5 gün)

--    -- Projelerdeki görevleri kontrol et
--    DECLARE proje_cursor CURSOR FOR
--    SELECT ProjectId
--    FROM Projects;

--    OPEN proje_cursor;
--    FETCH NEXT FROM proje_cursor INTO @ProjeId;

--    -- Proje id'si ile tüm görevleri kontrol et
--    WHILE @@FETCH_STATUS = 0
--    BEGIN
--        -- Projeye ait tamamlanmamış görevlerin sayısını kontrol et
--        SELECT @Projeler = COUNT(*)
--        FROM Tasks
--        WHERE ProjectsId = @ProjeId
--        AND Statuss != 'Tamamlandı'
--        AND TaskEndDate <= GETDATE();  -- Eğer bitiş tarihi geçmiş ve tamamlanmamışsa

--        -- Proje zamanında tamamlanmadıysa bitiş tarihini 5 gün ertele
--        IF @Projeler > 0 -- Görev tamamlanmadıysa
--        BEGIN
--            -- Proje bitiş tarihi 5 gün ertelenir
--            SELECT @SonBitişTarihi = MAX(TaskEndDate)
--            FROM Tasks
--            WHERE ProjectsId = @ProjeId;

--            -- 5 gün ekleniyor
--            SET @YeniTarih = DATEADD(DAY, 5, @SonBitişTarihi);

--            -- Projeye ek süre olarak 5 gün atanıyor
--            SET @EkSüre = 5;

--            -- Proje durumunu güncelle
--            UPDATE Projects
--            SET Durum = 'Tamamlanmadı', 
--                ChangedProjectDate = @YeniTarih, 
--                ExtraTime = @EkSüre
--            WHERE ProjectId = @ProjeId;
--        END
--        ELSE
--        BEGIN
--            -- Eğer projedeki tüm görevler tamamlandıysa, proje durumu "Tamamlandı" olarak güncellenir
--            UPDATE Projects
--            SET Durum = 'Tamamlandı', 
--                ChangedProjectDate = NULL, 
--                ExtraTime = 0
--            WHERE ProjectId = @ProjeId;
--        END

--        FETCH NEXT FROM proje_cursor INTO @ProjeId;
--    END

--    CLOSE proje_cursor;
--    DEALLOCATE proje_cursor;

--    -- Durum mesajı
--    PRINT 'Proje durumu başarıyla güncellendi';
--END;


--CREATE PROCEDURE GüncelleProjeDurumu
--AS
--BEGIN
--    DECLARE @ProjeId INT;
--    DECLARE @Projeler INT; -- Proje içerisindeki tamamlanmamış görevlerin sayısı
--    DECLARE @SonBitişTarihi DATETIME; -- Proje için en son bitiş tarihi
--    DECLARE @YeniTarih DATETIME; -- Proje bitiş tarihi ertelenmiş yeni tarih
--    DECLARE @GecikmeMiktarı INT; -- Projeye ek süre (5 gün)
--    DECLARE @TaskId INT; -- Görev ID'si
--    DECLARE @TaskStatus NVARCHAR(50); -- Görev durumu

--    -- Projelerdeki görevleri kontrol et
--    DECLARE proje_cursor CURSOR FOR
--    SELECT ProjectId
--    FROM Projects;

--    OPEN proje_cursor;
--    FETCH NEXT FROM proje_cursor INTO @ProjeId;

--    -- Proje id'si ile tüm görevleri kontrol et
--    WHILE @@FETCH_STATUS = 0
--    BEGIN
--        -- Projeye ait tamamlanmamış görevlerin sayısını kontrol et
--        SELECT @Projeler = COUNT(*)
--        FROM Tasks
--        WHERE ProjectsId = @ProjeId
--        AND Statuss != 'Tamamlandı'
--        AND TaskEndDate <= GETDATE();  -- Eğer bitiş tarihi geçmiş ve tamamlanmamışsa

--        -- Proje zamanında tamamlanmadıysa bitiş tarihini 5 gün ertele
--        IF @Projeler > 0 -- Görev tamamlanmadıysa
--        BEGIN
--            -- Proje bitiş tarihi 5 gün ertelenir
--            SELECT @SonBitişTarihi = MAX(TaskEndDate)
--            FROM Tasks
--            WHERE ProjectsId = @ProjeId;

--            -- 5 gün ekleniyor
--            SET @YeniTarih = DATEADD(DAY, 5, @SonBitişTarihi) 

--            -- Proje durumunu güncelle
--            UPDATE Projects
--            SET Durum = 'Tamamlanmadı', 
--                ChangedProjectDate = @YeniTarih, 
--                GecikmeSüresi = @GecikmeMiktarı
--            WHERE ProjectId = @ProjeId;

--            -- Görevlerin durumunu güncelle: "Devam Ediyor"
--            DECLARE görev_cursor CURSOR FOR
--            SELECT TaskId
--            FROM Tasks
--            WHERE ProjectsId = @ProjeId
--            AND Statuss != 'Tamamlandı'
--            AND TaskEndDate <= GETDATE();

--            OPEN görev_cursor;
--            FETCH NEXT FROM görev_cursor INTO @TaskId;

--            WHILE @@FETCH_STATUS = 0
--            BEGIN
--                UPDATE Tasks
--                SET Statuss = 'Devam Ediyor'
--                WHERE TaskId = @TaskId;

--                FETCH NEXT FROM görev_cursor INTO @TaskId;
--            END

--            CLOSE görev_cursor;
--            DEALLOCATE görev_cursor;

--        END
--        ELSE
--        BEGIN
--            -- Eğer projedeki tüm görevler tamamlandıysa, proje durumu "Tamamlandı" olarak güncellenir
--            UPDATE Projects
--            SET Durum = 'Tamamlandı', 
--                GecikmeSüresi = @GecikmeMiktarı
--            WHERE ProjectId = @ProjeId;
--        END

--        FETCH NEXT FROM proje_cursor INTO @ProjeId;
--    END

--    CLOSE proje_cursor;
--    DEALLOCATE proje_cursor;

--    -- Durum mesajı
--END;

GO
/****** Object:  StoredProcedure [dbo].[proje_detay]    Script Date: 2.01.2025 20:14:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--create database Proje

--use proje

--create table Employees
--(
--EmployeeId int primary key identity,
--EmployeeName varchar(50),
--Email varchar(50),
--Position varchar(50)
--)

--create table Projects
--(
--ProjectId int primary key identity,
--ProjectName varchar(50),
--StartDate datetime,
--EndDate datetime
--)

--create table Tasks
--(
--TaskId int primary key identity,
--TaskName varchar(50),
--TaskStartDate datetime,
--TaskEndDate datetime,
--TaskCompletionDate datetime,
--Statuss varchar(20),
--AssignedId int,
--ProjectsId int,
--foreign key (ProjectsId) references Projects(ProjectId),
--foreign key (AssignedId) references Employees(EmployeeId)
--)

--create proc proje_görev
--as
--select ProjectId,ProjectName,TaskId,TaskName,AssignedId from Projects
--inner join Tasks on Projects.ProjectId=Tasks.ProjectsId	

--exec proje_görev

--exec proje_görev

--CREATE SEQUENCE ProjectId_Seq
--AS INT
--START WITH 1  -- Mevcut projelere ek olarak başlasın
--INCREMENT BY 1;

--ALTER TABLE Projects
--ADD CONSTRAINT DF_ProjectID
--DEFAULT NEXT VALUE FOR ProjectID_Seq FOR ProjectId;


--WITH RankedProjects AS (
--    SELECT ProjectId, ROW_NUMBER() OVER (ORDER BY ProjectName) AS NewProjectID
--    FROM Projects
--)
--UPDATE p
--SET p.ProjectId = rp.NewProjectID
--FROM Projects p
--INNER JOIN RankedProjects rp
--    ON p.ProjectId = rp.ProjectId;

--create proc Listele
--as
--WITH RankedProjects AS (
--    SELECT ProjectId, ROW_NUMBER() OVER (ORDER BY ProjectName) AS NewProjectID
--    FROM Projects
--)
--UPDATE p
--SET p.ProjectId = rp.NewProjectID
--FROM Projects p
--INNER JOIN RankedProjects rp
--    ON p.ProjectId = rp.ProjectId;
--	select * from Projects

--exec Listele

--CREATE PROCEDURE ListeleTasks
--AS
--BEGIN
--    WITH RankedTasks AS (
--        SELECT TaskId, ROW_NUMBER() OVER (ORDER BY TaskName) AS NewTaskID
--        FROM Tasks
--    )
--    UPDATE t
--    SET t.TaskId = rt.NewTaskID
--    FROM Tasks t
--    INNER JOIN RankedTasks rt
--        ON t.TaskId = rt.TaskId;

--    exec proje_detay;
--END;

--exec ListeleTasks

--exec proje_görev
--exec proje_görev

--create proc proje_görev2
--as
--select ProjectId,ProjectName,TaskId,TaskName from Projects
--inner join Tasks on Projects.ProjectId=Tasks.ProjectsId


create proc [dbo].[proje_detay]
@ProjectId int
as
select TaskId,ProjectName as 'Proje Adı',TaskName as 'Görev Adı',TaskStartDate as 'Başlangıç Tarihi',TaskEndDate as 'Bitiş Tarihi',ManDays as 'Adam Gün Değeri',Statuss as 'Görev Durumu',EmployeeName as 'Çalışan Adı' from Tasks
inner join Projects on Tasks.ProjectsId=Projects.ProjectId
inner join Employees on Tasks.AssignedId=Employees.EmployeeId
where Projects.ProjectId = @ProjectId

--exec proje_detay

--create proc calisan_detay
--@EmployeeId int
--as
--select EmployeeName as 'Çalışan Adı',Email,ProjectName as 'Çalıştığı Proje',TaskName as 'Çalıştığı Görev' from Employees
--inner join Tasks on Employees.EmployeeId = Tasks.AssignedId
--inner join Projects on Tasks.ProjectsId = Projects.ProjectId
--where Employees.EmployeeId = @EmployeeId

--exec calisan_detay



--ALTER TABLE Tasks
--DROP CONSTRAINT FK__Tasks__ProjectsI__4E88ABD4;

--ALTER TABLE Tasks
--ADD CONSTRAINT FK__Tasks__ProjectsI__4E88ABD4
--FOREIGN KEY (ProjectsId) REFERENCES Projects(ProjectId)
--ON DELETE CASCADE;

--SELECT name
--FROM sys.foreign_keys
--WHERE parent_object_id = OBJECT_ID('Tasks');


--CREATE PROCEDURE GörevEkle
--    @ProjeId INT,
--    @GörevAdı NVARCHAR(255),
--    @ÇalışanId INT,
--	@BaslangicTarihi datetime,
--	@BitisTarihi datetime
--AS
--BEGIN
--    INSERT INTO Tasks (TaskName, ProjectsId, TaskStartDate, TaskEndDate, AssignedId)
--    VALUES (@GörevAdı, @ProjeId,@BaslangicTarihi,@BitisTarihi,@ÇalışanId)
--END


--CREATE PROCEDURE GüncelleGörevDurumu
--AS
--BEGIN
--    -- Statuss sütunundaki görevlerin durumunu güncelle
--    UPDATE Tasks
--    SET Statuss = 
--        CASE
--            WHEN GETDATE() < TaskStartDate THEN 'Tamamlanacak'
--            WHEN GETDATE() BETWEEN TaskStartDate AND TaskEndDate THEN 'Devam Ediyor'
            
--        END
--    WHERE Statuss IS NULL OR Statuss != 'Tamamlandı'; -- Durumu boş ya da zaten tamamlanmış değilse güncelle
--END;

--CREATE PROCEDURE GüncelleGörevDurumu2
--AS
--BEGIN
--    -- Durumunu manuel olarak değiştirmeyen görevleri güncelle
--    UPDATE Tasks
--    SET Statuss = 
--        CASE
--            WHEN GETDATE() < TaskStartDate THEN 'Tamamlanacak'
--            WHEN GETDATE() BETWEEN TaskStartDate AND TaskEndDate THEN 'Devam Ediyor'
--            WHEN GETDATE() > TaskEndDate THEN 'Tamamlandı'
--        END
--    WHERE (Statuss IS NULL OR Statuss NOT IN ('Tamamlanacak', 'Devam Ediyor', 'Tamamlandı')) 
--      AND TaskEndDate < GETDATE();  -- Sadece bitmiş görevleri güncelle
--END;

--exec GüncelleGörevDurumu2
--exec GüncelleGörevDurumu

--ALTER TABLE Tasks
--ADD ManuelTamamlandi BIT DEFAULT 0;


--CREATE PROCEDURE GüncelleManDays
--AS
--BEGIN
--    UPDATE Tasks
--    SET ManDays = DATEDIFF(DAY, TaskStartDate, TaskEndDate) + 1
--    WHERE TaskStartDate IS NOT NULL AND TaskEndDate IS NOT NULL;
--END;




--ALTER TABLE Tasks
--ADD ManDays BIT DEFAULT 0;

--CREATE PROCEDURE GüncelleGörevDurumuVeProjeTarihi
--AS
--BEGIN
--    -- Görev durumlarını güncelle
--    UPDATE Tasks
--    SET Statuss = 
--        CASE
--            WHEN GETDATE() < TaskStartDate THEN 'Tamamlanacak'
--            WHEN GETDATE() BETWEEN TaskStartDate AND TaskEndDate THEN 'Devam Ediyor'
--        END
--    WHERE Statuss IS NULL OR Statuss NOT IN ('Tamamlanacak', 'Devam Ediyor', 'Tamamlandı');


--    -- Manuel tamamlanmayan görevler kontrol edilir
--    DECLARE @ProjectId INT;
--    DECLARE @YeniBitisTarihi DATE;

--    DECLARE görev_cursor CURSOR FOR
--    SELECT ProjectsId
--    FROM Tasks
--    WHERE ManuelTamamlandi = 0 AND GETDATE() > TaskEndDate;

--    OPEN görev_cursor;
--    FETCH NEXT FROM görev_cursor INTO @ProjectId;

--    WHILE @@FETCH_STATUS = 0
--    BEGIN
--        -- Proje bitiş tarihini 2 gün ileriye al
--        SET @YeniBitisTarihi = DATEADD(DAY, 2, (SELECT EndDate FROM Projects WHERE ProjectId = @ProjectId));


--        UPDATE Projects
--        SET EndDate = @YeniBitisTarihi
--        WHERE ProjectId = @ProjectId;

--        FETCH NEXT FROM görev_cursor INTO @ProjectId;
--    END;

--    CLOSE görev_cursor;
--    DEALLOCATE görev_cursor;
--END;


--exec GüncelleGörevDurumuVeProjeTarihi


--ALTER TABLE Tasks
--DROP CONSTRAINT FK__Tasks__AssignedI__4F7CD00D;

--ALTER TABLE Tasks
--ADD CONSTRAINT FK__Tasks__AssignedI__4F7CD00D
--FOREIGN KEY (AssignedId) REFERENCES Employees(EmployeeId)
--ON DELETE CASCADE;


--SELECT name
--FROM sys.foreign_keys
--WHERE parent_object_id = OBJECT_ID('Employees');

GO
USE [master]
GO
ALTER DATABASE [Proje] SET  READ_WRITE 
GO
