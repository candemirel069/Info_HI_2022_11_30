USE [OkulHI]
GO
/****** Object:  StoredProcedure [dbo].[usp_UpdateProjects]    Script Date: 30.11.2022 15:02:44 ******/
DROP PROCEDURE [dbo].[usp_UpdateProjects]
GO
/****** Object:  StoredProcedure [dbo].[usp_KitapArama]    Script Date: 30.11.2022 15:02:44 ******/
DROP PROCEDURE [dbo].[usp_KitapArama]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetLocation]    Script Date: 30.11.2022 15:02:44 ******/
DROP PROCEDURE [dbo].[usp_GetLocation]
GO
/****** Object:  StoredProcedure [dbo].[usp_dersler]    Script Date: 30.11.2022 15:02:44 ******/
DROP PROCEDURE [dbo].[usp_dersler]
GO
ALTER TABLE [dbo].[ProjeOgrenci] DROP CONSTRAINT [FK_ProjeOgrenci_Proje]
GO
ALTER TABLE [dbo].[ProjeOgrenci] DROP CONSTRAINT [FK_ProjeOgrenci_Ogrenci]
GO
ALTER TABLE [dbo].[Proje] DROP CONSTRAINT [FK_Proje_Ogretmen]
GO
ALTER TABLE [dbo].[Ogretmen] DROP CONSTRAINT [FK_Ogretmen_Ders]
GO
ALTER TABLE [dbo].[Konu] DROP CONSTRAINT [FK_Konu_Kategori]
GO
ALTER TABLE [dbo].[Kitap] DROP CONSTRAINT [FK_Kitap_Seviye]
GO
ALTER TABLE [dbo].[Kitap] DROP CONSTRAINT [FK_Kitap_Kategori]
GO
ALTER TABLE [dbo].[Kitap] DROP CONSTRAINT [FK_Kitap_Dil]
GO
ALTER TABLE [dbo].[DersOgrenci] DROP CONSTRAINT [FK_DersOgrenci_Ogrenci]
GO
ALTER TABLE [dbo].[DersOgrenci] DROP CONSTRAINT [FK_DersOgrenci_Ders]
GO
ALTER TABLE [dbo].[Proje] DROP CONSTRAINT [DF_Proje_BaslamaTarihi]
GO
/****** Object:  Index [IX_Proje]    Script Date: 30.11.2022 15:02:44 ******/
DROP INDEX [IX_Proje] ON [dbo].[Proje]
GO
/****** Object:  Index [IX_Ogretmen]    Script Date: 30.11.2022 15:02:44 ******/
DROP INDEX [IX_Ogretmen] ON [dbo].[Ogretmen]
GO
/****** Object:  View [dbo].[vw_ProjeEkibi]    Script Date: 30.11.2022 15:02:44 ******/
DROP VIEW [dbo].[vw_ProjeEkibi]
GO
/****** Object:  View [dbo].[vw_Ogretmen]    Script Date: 30.11.2022 15:02:44 ******/
DROP VIEW [dbo].[vw_Ogretmen]
GO
/****** Object:  View [dbo].[vw_OgrenciDersListesi]    Script Date: 30.11.2022 15:02:44 ******/
DROP VIEW [dbo].[vw_OgrenciDersListesi]
GO
/****** Object:  View [dbo].[vw_ogrenci]    Script Date: 30.11.2022 15:02:44 ******/
DROP VIEW [dbo].[vw_ogrenci]
GO
/****** Object:  View [dbo].[vw_KitapKategoriFiyatlari]    Script Date: 30.11.2022 15:02:44 ******/
DROP VIEW [dbo].[vw_KitapKategoriFiyatlari]
GO
/****** Object:  Index [IX_Table_1]    Script Date: 30.11.2022 15:02:44 ******/
DROP INDEX [IX_Table_1] ON [dbo].[Table_1] WITH ( ONLINE = OFF )
GO
/****** Object:  Table [dbo].[Table_1]    Script Date: 30.11.2022 15:02:44 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Table_1]') AND type in (N'U'))
DROP TABLE [dbo].[Table_1]
GO
/****** Object:  Table [dbo].[Seviye]    Script Date: 30.11.2022 15:02:44 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Seviye]') AND type in (N'U'))
DROP TABLE [dbo].[Seviye]
GO
/****** Object:  Table [dbo].[Sehir]    Script Date: 30.11.2022 15:02:44 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Sehir]') AND type in (N'U'))
DROP TABLE [dbo].[Sehir]
GO
/****** Object:  Table [dbo].[ProjeOgrenci]    Script Date: 30.11.2022 15:02:44 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProjeOgrenci]') AND type in (N'U'))
DROP TABLE [dbo].[ProjeOgrenci]
GO
/****** Object:  Table [dbo].[Proje]    Script Date: 30.11.2022 15:02:44 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Proje]') AND type in (N'U'))
DROP TABLE [dbo].[Proje]
GO
/****** Object:  Table [dbo].[Ogretmen]    Script Date: 30.11.2022 15:02:44 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Ogretmen]') AND type in (N'U'))
DROP TABLE [dbo].[Ogretmen]
GO
/****** Object:  Table [dbo].[Ogrenci]    Script Date: 30.11.2022 15:02:44 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Ogrenci]') AND type in (N'U'))
DROP TABLE [dbo].[Ogrenci]
GO
/****** Object:  Table [dbo].[Konu]    Script Date: 30.11.2022 15:02:44 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Konu]') AND type in (N'U'))
DROP TABLE [dbo].[Konu]
GO
/****** Object:  Table [dbo].[Kitap]    Script Date: 30.11.2022 15:02:44 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Kitap]') AND type in (N'U'))
DROP TABLE [dbo].[Kitap]
GO
/****** Object:  Table [dbo].[Kisi]    Script Date: 30.11.2022 15:02:44 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Kisi]') AND type in (N'U'))
DROP TABLE [dbo].[Kisi]
GO
/****** Object:  Table [dbo].[Kategori]    Script Date: 30.11.2022 15:02:44 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Kategori]') AND type in (N'U'))
DROP TABLE [dbo].[Kategori]
GO
/****** Object:  Table [dbo].[Ilce]    Script Date: 30.11.2022 15:02:44 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Ilce]') AND type in (N'U'))
DROP TABLE [dbo].[Ilce]
GO
/****** Object:  Table [dbo].[Dil]    Script Date: 30.11.2022 15:02:44 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Dil]') AND type in (N'U'))
DROP TABLE [dbo].[Dil]
GO
/****** Object:  Table [dbo].[DersOgrenci]    Script Date: 30.11.2022 15:02:44 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DersOgrenci]') AND type in (N'U'))
DROP TABLE [dbo].[DersOgrenci]
GO
/****** Object:  Table [dbo].[Ders]    Script Date: 30.11.2022 15:02:44 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Ders]') AND type in (N'U'))
DROP TABLE [dbo].[Ders]
GO
/****** Object:  UserDefinedFunction [dbo].[udf_ProjeOgrencileri]    Script Date: 30.11.2022 15:02:44 ******/
DROP FUNCTION [dbo].[udf_ProjeOgrencileri]
GO
/****** Object:  UserDefinedFunction [dbo].[udf_OgrenciDersleri]    Script Date: 30.11.2022 15:02:44 ******/
DROP FUNCTION [dbo].[udf_OgrenciDersleri]
GO
/****** Object:  UserDefinedFunction [dbo].[udf_KisiAdi]    Script Date: 30.11.2022 15:02:44 ******/
DROP FUNCTION [dbo].[udf_KisiAdi]
GO
/****** Object:  UserDefinedFunction [dbo].[udf_KisiAdi]    Script Date: 30.11.2022 15:02:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE function [dbo].[udf_KisiAdi]
(
	@adi varchar(max),
	@soyadi varchar(max)
)
returns varchar(max)
as
Begin
	declare @sonuc varchar(max)=''

	set @sonuc = @adi+' '+UPPER( @soyadi)

	return @sonuc
End
GO
/****** Object:  UserDefinedFunction [dbo].[udf_OgrenciDersleri]    Script Date: 30.11.2022 15:02:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Function [dbo].[udf_OgrenciDersleri]
(
	@OgrenciId int 
)
returns varchar(max)
as
Begin
	declare @sonuc varchar(max)=''

	select @sonuc += DersAdi+' ' from vw_ogrenci where Id=@OgrenciId

	return @sonuc
end
GO
/****** Object:  UserDefinedFunction [dbo].[udf_ProjeOgrencileri]    Script Date: 30.11.2022 15:02:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[udf_ProjeOgrencileri]
(
@ProjeId int = -30000
)
Returns varchar(max)
as
begin
	declare @sonuc varchar(max)=''
	select 
		@sonuc += dbo.udf_KisiAdi(ogr.Adi,ogr.Soyadi) +', '
	from Proje  as prj
	join ProjeOgrenci    as po   on prj.Id = po.ProjeId
	join Ogrenci	     as ogr  on ogr.Id = po.OgrenciId
	where prj.Id= @ProjeId

	if (@sonuc<>'') begin
		select @sonuc = LEFT(@sonuc, LEN(@sonuc)-1)
	end

	return @sonuc
end
GO
/****** Object:  Table [dbo].[Ders]    Script Date: 30.11.2022 15:02:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DersOgrenci]    Script Date: 30.11.2022 15:02:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DersOgrenci](
	[DersId] [int] NOT NULL,
	[OgrenciId] [int] NOT NULL,
 CONSTRAINT [PK_DersOgrenci] PRIMARY KEY CLUSTERED 
(
	[DersId] ASC,
	[OgrenciId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dil]    Script Date: 30.11.2022 15:02:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dil](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [varchar](50) NULL,
 CONSTRAINT [PK_Dil] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ilce]    Script Date: 30.11.2022 15:02:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ilce](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SehirId] [int] NULL,
	[Adi] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kategori]    Script Date: 30.11.2022 15:02:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kategori](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [varchar](50) NULL,
 CONSTRAINT [PK_Kategori] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kisi]    Script Date: 30.11.2022 15:02:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kisi](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [varchar](50) NULL,
	[Soyadi] [varchar](50) NULL,
	[Adres] [varchar](500) NULL,
	[IlceId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kitap]    Script Date: 30.11.2022 15:02:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kitap](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[KategoriId] [int] NULL,
	[Adi] [varchar](101) NULL,
	[Seviye] [int] NULL,
	[DilId] [int] NOT NULL,
	[Fiyat] [decimal](6, 2) NULL,
 CONSTRAINT [PK_Kitap] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Konu]    Script Date: 30.11.2022 15:02:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Konu](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[KategoriId] [int] NULL,
	[Adi] [varchar](50) NULL,
 CONSTRAINT [PK_Konu] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ogrenci]    Script Date: 30.11.2022 15:02:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ogrenci](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [varchar](50) NULL,
	[Soyadi] [varchar](50) NULL,
 CONSTRAINT [PK_Ogrenci] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ogretmen]    Script Date: 30.11.2022 15:02:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ogretmen](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [varchar](50) NOT NULL,
	[Soyadi] [varchar](50) NOT NULL,
	[EPosta] [varchar](50) NOT NULL,
	[DersId] [int] NOT NULL,
 CONSTRAINT [PK__Ogretmen__3214EC070A751557] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Proje]    Script Date: 30.11.2022 15:02:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proje](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [varchar](50) NOT NULL,
	[OgretmenId] [int] NOT NULL,
	[BaslamaTarihi] [datetime] NOT NULL,
 CONSTRAINT [PK_Proje] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProjeOgrenci]    Script Date: 30.11.2022 15:02:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProjeOgrenci](
	[ProjeId] [int] NOT NULL,
	[OgrenciId] [int] NOT NULL,
 CONSTRAINT [PK_ProjeOgrenci] PRIMARY KEY CLUSTERED 
(
	[ProjeId] ASC,
	[OgrenciId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sehir]    Script Date: 30.11.2022 15:02:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sehir](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Seviye]    Script Date: 30.11.2022 15:02:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Seviye](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Deger] [int] NULL,
	[Adi] [varchar](50) NULL,
 CONSTRAINT [PK_Seviye] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Table_1]    Script Date: 30.11.2022 15:02:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_1](
	[id] [int] NOT NULL,
	[Adi] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Table_1]    Script Date: 30.11.2022 15:02:44 ******/
CREATE CLUSTERED INDEX [IX_Table_1] ON [dbo].[Table_1]
(
	[Adi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_KitapKategoriFiyatlari]    Script Date: 30.11.2022 15:02:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view [dbo].[vw_KitapKategoriFiyatlari]
as
	select 
		ka.Id,
		ka.Adi,
		Avg(ki.Fiyat) as Ortalama, 
		SUM(ki.Fiyat) as Toplam
	from Kitap as ki
	join Kategori as ka on ka.Id = ki.KategoriId
	group by ka.Id, ka.Adi
GO
/****** Object:  View [dbo].[vw_ogrenci]    Script Date: 30.11.2022 15:02:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[vw_ogrenci]
as
select 
	og.Id,
	og.Adi+' '+UPPER(og.Soyadi) Tamadi,
	d.Adi as DersAdi

from Ogrenci     as og
join DersOgrenci as do on do.OgrenciId = og.Id
join Ders        as d  on d.Id         = do.DersId

GO
/****** Object:  View [dbo].[vw_OgrenciDersListesi]    Script Date: 30.11.2022 15:02:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view [dbo].[vw_OgrenciDersListesi]
as
	select 
		Id,
		Adi,
		Soyadi,
		dbo.udf_OgrenciDersleri(Id) as Dersleri 
	from ogrenci
GO
/****** Object:  View [dbo].[vw_Ogretmen]    Script Date: 30.11.2022 15:02:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view [dbo].[vw_Ogretmen]
as
	select 
		og.Id,
		og.Adi+' '+upper(og.Soyadi) as TamAdi,
		d.Adi as DersAdi
	from Ogretmen as og
	join Ders as d on og.DersId= d.Id
GO
/****** Object:  View [dbo].[vw_ProjeEkibi]    Script Date: 30.11.2022 15:02:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE view [dbo].[vw_ProjeEkibi]
as
	select 
		prj.Id,
		prj.Adi							     as ProjeAdi,
		ogt.Id								 as OgretmenId,
		dbo.udf_KisiAdi(ogt.adi, ogt.Soyadi) as Ogretmen,
		ogr.Id								 as OgrenciId,
		dbo.udf_KisiAdi(ogr.adi, ogr.Soyadi) as Ogrenci

	from Proje        as prj
	join ProjeOgrenci as po   on prj.Id = po.ProjeId
	join Ogrenci      as ogr  on ogr.Id = po.OgrenciId
	join Ogretmen     as ogt  on prj.OgretmenId = ogt.Id
GO
SET IDENTITY_INSERT [dbo].[Ders] ON 
GO
INSERT [dbo].[Ders] ([Id], [Adi]) VALUES (1, N'.Net')
GO
INSERT [dbo].[Ders] ([Id], [Adi]) VALUES (2, N'Java')
GO
INSERT [dbo].[Ders] ([Id], [Adi]) VALUES (3, N'JS')
GO
INSERT [dbo].[Ders] ([Id], [Adi]) VALUES (4, N'TS')
GO
INSERT [dbo].[Ders] ([Id], [Adi]) VALUES (5, N'Python')
GO
INSERT [dbo].[Ders] ([Id], [Adi]) VALUES (6, N'Sql')
GO
INSERT [dbo].[Ders] ([Id], [Adi]) VALUES (7, N'HTML')
GO
INSERT [dbo].[Ders] ([Id], [Adi]) VALUES (8, N'Blazor')
GO
INSERT [dbo].[Ders] ([Id], [Adi]) VALUES (9, N'WebAsebmly')
GO
INSERT [dbo].[Ders] ([Id], [Adi]) VALUES (10, N'Rust')
GO
SET IDENTITY_INSERT [dbo].[Ders] OFF
GO
INSERT [dbo].[DersOgrenci] ([DersId], [OgrenciId]) VALUES (1, 1)
GO
INSERT [dbo].[DersOgrenci] ([DersId], [OgrenciId]) VALUES (1, 2)
GO
INSERT [dbo].[DersOgrenci] ([DersId], [OgrenciId]) VALUES (1, 4)
GO
INSERT [dbo].[DersOgrenci] ([DersId], [OgrenciId]) VALUES (1, 5)
GO
INSERT [dbo].[DersOgrenci] ([DersId], [OgrenciId]) VALUES (1, 6)
GO
INSERT [dbo].[DersOgrenci] ([DersId], [OgrenciId]) VALUES (2, 5)
GO
INSERT [dbo].[DersOgrenci] ([DersId], [OgrenciId]) VALUES (3, 5)
GO
INSERT [dbo].[DersOgrenci] ([DersId], [OgrenciId]) VALUES (4, 6)
GO
SET IDENTITY_INSERT [dbo].[Dil] ON 
GO
INSERT [dbo].[Dil] ([Id], [Adi]) VALUES (1, N'TR')
GO
INSERT [dbo].[Dil] ([Id], [Adi]) VALUES (2, N'EN')
GO
INSERT [dbo].[Dil] ([Id], [Adi]) VALUES (3, N'DE')
GO
INSERT [dbo].[Dil] ([Id], [Adi]) VALUES (4, N'RU')
GO
INSERT [dbo].[Dil] ([Id], [Adi]) VALUES (5, N'FR')
GO
INSERT [dbo].[Dil] ([Id], [Adi]) VALUES (6, N'IT')
GO
INSERT [dbo].[Dil] ([Id], [Adi]) VALUES (7, N'SE')
GO
SET IDENTITY_INSERT [dbo].[Dil] OFF
GO
SET IDENTITY_INSERT [dbo].[Ilce] ON 
GO
INSERT [dbo].[Ilce] ([Id], [SehirId], [Adi]) VALUES (1, 1, N'Beþiktaþ')
GO
INSERT [dbo].[Ilce] ([Id], [SehirId], [Adi]) VALUES (2, 1, N'Kadýköy')
GO
INSERT [dbo].[Ilce] ([Id], [SehirId], [Adi]) VALUES (3, 1, N'Þiþli')
GO
INSERT [dbo].[Ilce] ([Id], [SehirId], [Adi]) VALUES (4, 2, N'Maltepe')
GO
INSERT [dbo].[Ilce] ([Id], [SehirId], [Adi]) VALUES (5, 2, N'Çankaya')
GO
INSERT [dbo].[Ilce] ([Id], [SehirId], [Adi]) VALUES (6, 3, N'Çekirge')
GO
SET IDENTITY_INSERT [dbo].[Ilce] OFF
GO
SET IDENTITY_INSERT [dbo].[Kategori] ON 
GO
INSERT [dbo].[Kategori] ([Id], [Adi]) VALUES (1, N'OS')
GO
INSERT [dbo].[Kategori] ([Id], [Adi]) VALUES (2, N'Web dev')
GO
INSERT [dbo].[Kategori] ([Id], [Adi]) VALUES (3, N'DB')
GO
INSERT [dbo].[Kategori] ([Id], [Adi]) VALUES (4, N'Game Dev')
GO
INSERT [dbo].[Kategori] ([Id], [Adi]) VALUES (5, N'Coding')
GO
SET IDENTITY_INSERT [dbo].[Kategori] OFF
GO
SET IDENTITY_INSERT [dbo].[Kisi] ON 
GO
INSERT [dbo].[Kisi] ([Id], [Adi], [Soyadi], [Adres], [IlceId]) VALUES (1, N'aaa', N'ggg', N'abc sok. no:10/5', 1)
GO
INSERT [dbo].[Kisi] ([Id], [Adi], [Soyadi], [Adres], [IlceId]) VALUES (2, N'bbb', N'hhh', N'abc sok. no:10/5', 2)
GO
INSERT [dbo].[Kisi] ([Id], [Adi], [Soyadi], [Adres], [IlceId]) VALUES (3, N'ccc', N'jjj', N'abc sok. no:10/5', 3)
GO
INSERT [dbo].[Kisi] ([Id], [Adi], [Soyadi], [Adres], [IlceId]) VALUES (4, N'ddd', N'kkk', N'abc sok. no:10/5', 4)
GO
SET IDENTITY_INSERT [dbo].[Kisi] OFF
GO
SET IDENTITY_INSERT [dbo].[Kitap] ON 
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (1, 1, N'Herkes için Windows', 1, 1, CAST(101.25 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (2, 1, N'Herkes için Anrdoid', 1, 1, CAST(102.50 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (3, 1, N'Herkes için Ubuntu', 1, 1, CAST(103.75 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (4, 1, N'Herkes için Debian', 1, 1, CAST(105.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (5, 2, N'Herkes için Asp.net', 1, 1, CAST(106.25 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (6, 2, N'Herkes için php', 1, 1, CAST(107.50 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (7, 2, N'Herkes için JSP', 1, 1, CAST(108.75 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (8, 2, N'Herkes için Flask', 1, 1, CAST(110.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (9, 3, N'Herkes için Oracle', 1, 1, CAST(111.25 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (10, 3, N'Herkes için Postgrsql', 1, 1, CAST(112.50 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (11, 3, N'Herkes için Sql Server', 1, 1, CAST(113.75 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (12, 5, N'Herkes için Fortran', 1, 1, CAST(115.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (13, 5, N'Herkes için Carbon', 1, 1, CAST(116.25 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (14, 5, N'Herkes için Java', 1, 1, CAST(117.50 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (15, 5, N'Herkes için Rust', 1, 1, CAST(118.75 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (16, 5, N'Herkes için Go', 1, 1, CAST(120.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (17, 5, N'Herkes için Ruby', 1, 1, CAST(121.25 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (18, 1, N'Merhaba Windows', 2, 1, CAST(122.50 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (19, 1, N'Merhaba Anrdoid', 2, 1, CAST(123.75 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (20, 1, N'Merhaba Ubuntu', 2, 1, CAST(125.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (21, 1, N'Merhaba Debian', 2, 1, CAST(126.25 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (22, 2, N'Merhaba Asp.net', 2, 1, CAST(127.50 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (23, 2, N'Merhaba php', 2, 1, CAST(128.75 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (24, 2, N'Merhaba JSP', 2, 1, CAST(130.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (25, 2, N'Merhaba Flask', 2, 1, CAST(131.25 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (26, 3, N'Merhaba Oracle', 2, 1, CAST(132.50 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (27, 3, N'Merhaba Postgrsql', 2, 1, CAST(133.75 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (28, 3, N'Merhaba Sql Server', 2, 1, CAST(135.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (29, 5, N'Merhaba Fortran', 2, 1, CAST(136.25 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (30, 5, N'Merhaba Carbon', 2, 1, CAST(137.50 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (31, 5, N'Merhaba Java', 2, 1, CAST(138.75 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (32, 5, N'Merhaba Rust', 2, 1, CAST(140.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (33, 5, N'Merhaba Go', 2, 1, CAST(141.25 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (34, 5, N'Merhaba Ruby', 2, 1, CAST(142.50 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (35, 1, N'Örneklerle Windows', 3, 1, CAST(143.75 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (36, 1, N'Örneklerle Anrdoid', 3, 1, CAST(145.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (37, 1, N'Örneklerle Ubuntu', 3, 1, CAST(146.25 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (38, 1, N'Örneklerle Debian', 3, 1, CAST(147.50 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (39, 2, N'Örneklerle Asp.net', 3, 1, CAST(148.75 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (40, 2, N'Örneklerle php', 3, 1, CAST(150.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (41, 2, N'Örneklerle JSP', 3, 1, CAST(151.25 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (42, 2, N'Örneklerle Flask', 3, 1, CAST(152.50 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (43, 3, N'Örneklerle Oracle', 3, 1, CAST(153.75 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (44, 3, N'Örneklerle Postgrsql', 3, 1, CAST(155.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (45, 3, N'Örneklerle Sql Server', 3, 1, CAST(156.25 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (46, 5, N'Örneklerle Fortran', 3, 1, CAST(157.50 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (47, 5, N'Örneklerle Carbon', 3, 1, CAST(158.75 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (48, 5, N'Örneklerle Java', 3, 1, CAST(160.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (49, 5, N'Örneklerle Rust', 3, 1, CAST(161.25 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (50, 5, N'Örneklerle Go', 3, 1, CAST(162.50 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (51, 5, N'Örneklerle Ruby', 3, 1, CAST(163.75 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (52, 1, N'Uygulamalarla Windows', 4, 1, CAST(165.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (53, 1, N'Uygulamalarla Anrdoid', 4, 1, CAST(166.25 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (54, 1, N'Uygulamalarla Ubuntu', 4, 1, CAST(167.50 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (55, 1, N'Uygulamalarla Debian', 4, 1, CAST(168.75 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (56, 2, N'Uygulamalarla Asp.net', 4, 1, CAST(170.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (57, 2, N'Uygulamalarla php', 4, 1, CAST(171.25 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (58, 2, N'Uygulamalarla JSP', 4, 1, CAST(172.50 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (59, 2, N'Uygulamalarla Flask', 4, 1, CAST(173.75 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (60, 3, N'Uygulamalarla Oracle', 4, 1, CAST(175.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (61, 3, N'Uygulamalarla Postgrsql', 4, 1, CAST(176.25 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (62, 3, N'Uygulamalarla Sql Server', 4, 1, CAST(177.50 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (63, 5, N'Uygulamalarla Fortran', 4, 1, CAST(178.75 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (64, 5, N'Uygulamalarla Carbon', 4, 1, CAST(180.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (65, 5, N'Uygulamalarla Java', 4, 1, CAST(181.25 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (66, 5, N'Uygulamalarla Rust', 4, 1, CAST(182.50 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (67, 5, N'Uygulamalarla Go', 4, 1, CAST(183.75 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (68, 5, N'Uygulamalarla Ruby', 4, 1, CAST(185.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (69, 1, N'Uzmanlar için Windows', 5, 1, CAST(186.25 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (70, 1, N'Uzmanlar için Anrdoid', 5, 1, CAST(187.50 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (71, 1, N'Uzmanlar için Ubuntu', 5, 1, CAST(188.75 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (72, 1, N'Uzmanlar için Debian', 5, 1, CAST(190.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (73, 2, N'Uzmanlar için Asp.net', 5, 1, CAST(191.25 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (74, 2, N'Uzmanlar için php', 5, 1, CAST(192.50 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (75, 2, N'Uzmanlar için JSP', 5, 1, CAST(193.75 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (76, 2, N'Uzmanlar için Flask', 5, 1, CAST(195.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (77, 3, N'Uzmanlar için Oracle', 5, 1, CAST(196.25 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (78, 3, N'Uzmanlar için Postgrsql', 5, 1, CAST(197.50 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (79, 3, N'Uzmanlar için Sql Server', 5, 1, CAST(198.75 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (80, 5, N'Uzmanlar için Fortran', 5, 1, CAST(200.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (81, 5, N'Uzmanlar için Carbon', 5, 1, CAST(201.25 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (82, 5, N'Uzmanlar için Java', 5, 1, CAST(202.50 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (83, 5, N'Uzmanlar için Rust', 5, 1, CAST(203.75 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (84, 5, N'Uzmanlar için Go', 5, 1, CAST(205.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (85, 5, N'Uzmanlar için Ruby', 5, 1, CAST(206.25 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (86, 1, N'Herkes için Windows', 1, 2, CAST(207.50 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (87, 1, N'Herkes için Anrdoid', 1, 2, CAST(208.75 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (88, 1, N'Herkes için Ubuntu', 1, 2, CAST(210.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (89, 1, N'Herkes için Debian', 1, 2, CAST(211.25 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (90, 2, N'Herkes için Asp.net', 1, 2, CAST(212.50 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (91, 2, N'Herkes için php', 1, 2, CAST(213.75 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (92, 2, N'Herkes için JSP', 1, 2, CAST(215.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (93, 2, N'Herkes için Flask', 1, 2, CAST(216.25 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (94, 3, N'Herkes için Oracle', 1, 2, CAST(217.50 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (95, 3, N'Herkes için Postgrsql', 1, 2, CAST(218.75 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (96, 3, N'Herkes için Sql Server', 1, 2, CAST(220.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (97, 5, N'Herkes için Fortran', 1, 2, CAST(221.25 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (98, 5, N'Herkes için Carbon', 1, 2, CAST(222.50 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (99, 5, N'Herkes için Java', 1, 2, CAST(223.75 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (100, 5, N'Herkes için Rust', 1, 2, CAST(225.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (101, 5, N'Herkes için Go', 1, 2, CAST(226.25 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (102, 5, N'Herkes için Ruby', 1, 2, CAST(227.50 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (103, 1, N'Merhaba Windows', 2, 2, CAST(228.75 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (104, 1, N'Merhaba Anrdoid', 2, 2, CAST(230.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (105, 1, N'Merhaba Ubuntu', 2, 2, CAST(231.25 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (106, 1, N'Merhaba Debian', 2, 2, CAST(232.50 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (107, 2, N'Merhaba Asp.net', 2, 2, CAST(233.75 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (108, 2, N'Merhaba php', 2, 2, CAST(235.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (109, 2, N'Merhaba JSP', 2, 2, CAST(236.25 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (110, 2, N'Merhaba Flask', 2, 2, CAST(237.50 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (111, 3, N'Merhaba Oracle', 2, 2, CAST(238.75 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (112, 3, N'Merhaba Postgrsql', 2, 2, CAST(240.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (113, 3, N'Merhaba Sql Server', 2, 2, CAST(241.25 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (114, 5, N'Merhaba Fortran', 2, 2, CAST(242.50 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (115, 5, N'Merhaba Carbon', 2, 2, CAST(243.75 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (116, 5, N'Merhaba Java', 2, 2, CAST(245.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (117, 5, N'Merhaba Rust', 2, 2, CAST(246.25 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (118, 5, N'Merhaba Go', 2, 2, CAST(247.50 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (119, 5, N'Merhaba Ruby', 2, 2, CAST(248.75 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (120, 1, N'Örneklerle Windows', 3, 2, CAST(250.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (121, 1, N'Örneklerle Anrdoid', 3, 2, CAST(251.25 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (122, 1, N'Örneklerle Ubuntu', 3, 2, CAST(252.50 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (123, 1, N'Örneklerle Debian', 3, 2, CAST(253.75 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (124, 2, N'Örneklerle Asp.net', 3, 2, CAST(255.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (125, 2, N'Örneklerle php', 3, 2, CAST(256.25 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (126, 2, N'Örneklerle JSP', 3, 2, CAST(257.50 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (127, 2, N'Örneklerle Flask', 3, 2, CAST(258.75 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (128, 3, N'Örneklerle Oracle', 3, 2, CAST(260.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (129, 3, N'Örneklerle Postgrsql', 3, 2, CAST(261.25 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (130, 3, N'Örneklerle Sql Server', 3, 2, CAST(262.50 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (131, 5, N'Örneklerle Fortran', 3, 2, CAST(263.75 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (132, 5, N'Örneklerle Carbon', 3, 2, CAST(265.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (133, 5, N'Örneklerle Java', 3, 2, CAST(266.25 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (134, 5, N'Örneklerle Rust', 3, 2, CAST(267.50 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (135, 5, N'Örneklerle Go', 3, 2, CAST(268.75 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (136, 5, N'Örneklerle Ruby', 3, 2, CAST(270.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (137, 1, N'Uygulamalarla Windows', 4, 2, CAST(271.25 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (138, 1, N'Uygulamalarla Anrdoid', 4, 2, CAST(272.50 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (139, 1, N'Uygulamalarla Ubuntu', 4, 2, CAST(273.75 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (140, 1, N'Uygulamalarla Debian', 4, 2, CAST(275.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (141, 2, N'Uygulamalarla Asp.net', 4, 2, CAST(276.25 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (142, 2, N'Uygulamalarla php', 4, 2, CAST(277.50 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (143, 2, N'Uygulamalarla JSP', 4, 2, CAST(278.75 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (144, 2, N'Uygulamalarla Flask', 4, 2, CAST(280.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (145, 3, N'Uygulamalarla Oracle', 4, 2, CAST(281.25 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (146, 3, N'Uygulamalarla Postgrsql', 4, 2, CAST(282.50 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (147, 3, N'Uygulamalarla Sql Server', 4, 2, CAST(283.75 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (148, 5, N'Uygulamalarla Fortran', 4, 2, CAST(285.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (149, 5, N'Uygulamalarla Carbon', 4, 2, CAST(286.25 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (150, 5, N'Uygulamalarla Java', 4, 2, CAST(287.50 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (151, 5, N'Uygulamalarla Rust', 4, 2, CAST(288.75 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (152, 5, N'Uygulamalarla Go', 4, 2, CAST(290.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (153, 5, N'Uygulamalarla Ruby', 4, 2, CAST(291.25 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (154, 1, N'Uzmanlar için Windows', 5, 2, CAST(292.50 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (155, 1, N'Uzmanlar için Anrdoid', 5, 2, CAST(293.75 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (156, 1, N'Uzmanlar için Ubuntu', 5, 2, CAST(295.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (157, 1, N'Uzmanlar için Debian', 5, 2, CAST(296.25 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (158, 2, N'Uzmanlar için Asp.net', 5, 2, CAST(297.50 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (159, 2, N'Uzmanlar için php', 5, 2, CAST(298.75 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (160, 2, N'Uzmanlar için JSP', 5, 2, CAST(300.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (161, 2, N'Uzmanlar için Flask', 5, 2, CAST(301.25 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (162, 3, N'Uzmanlar için Oracle', 5, 2, CAST(302.50 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (163, 3, N'Uzmanlar için Postgrsql', 5, 2, CAST(303.75 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (164, 3, N'Uzmanlar için Sql Server', 5, 2, CAST(305.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (165, 5, N'Uzmanlar için Fortran', 5, 2, CAST(306.25 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (166, 5, N'Uzmanlar için Carbon', 5, 2, CAST(307.50 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (167, 5, N'Uzmanlar için Java', 5, 2, CAST(308.75 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (168, 5, N'Uzmanlar için Rust', 5, 2, CAST(310.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (169, 5, N'Uzmanlar için Go', 5, 2, CAST(311.25 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (170, 5, N'Uzmanlar için Ruby', 5, 2, CAST(312.50 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (171, 1, N'Herkes için Windows', 1, 3, CAST(313.75 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (172, 1, N'Herkes için Anrdoid', 1, 3, CAST(315.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (173, 1, N'Herkes için Ubuntu', 1, 3, CAST(316.25 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (174, 1, N'Herkes için Debian', 1, 3, CAST(317.50 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (175, 2, N'Herkes için Asp.net', 1, 3, CAST(318.75 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (176, 2, N'Herkes için php', 1, 3, CAST(320.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (177, 2, N'Herkes için JSP', 1, 3, CAST(321.25 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (178, 2, N'Herkes için Flask', 1, 3, CAST(322.50 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (179, 3, N'Herkes için Oracle', 1, 3, CAST(323.75 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (180, 3, N'Herkes için Postgrsql', 1, 3, CAST(325.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (181, 3, N'Herkes için Sql Server', 1, 3, CAST(326.25 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (182, 5, N'Herkes için Fortran', 1, 3, CAST(327.50 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (183, 5, N'Herkes için Carbon', 1, 3, CAST(328.75 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (184, 5, N'Herkes için Java', 1, 3, CAST(330.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (185, 5, N'Herkes için Rust', 1, 3, CAST(331.25 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (186, 5, N'Herkes için Go', 1, 3, CAST(332.50 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (187, 5, N'Herkes için Ruby', 1, 3, CAST(333.75 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (188, 1, N'Merhaba Windows', 2, 3, CAST(335.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (189, 1, N'Merhaba Anrdoid', 2, 3, CAST(336.25 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (190, 1, N'Merhaba Ubuntu', 2, 3, CAST(337.50 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (191, 1, N'Merhaba Debian', 2, 3, CAST(338.75 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (192, 2, N'Merhaba Asp.net', 2, 3, CAST(340.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (193, 2, N'Merhaba php', 2, 3, CAST(341.25 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (194, 2, N'Merhaba JSP', 2, 3, CAST(342.50 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (195, 2, N'Merhaba Flask', 2, 3, CAST(343.75 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (196, 3, N'Merhaba Oracle', 2, 3, CAST(345.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (197, 3, N'Merhaba Postgrsql', 2, 3, CAST(346.25 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (198, 3, N'Merhaba Sql Server', 2, 3, CAST(347.50 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (199, 5, N'Merhaba Fortran', 2, 3, CAST(348.75 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (200, 5, N'Merhaba Carbon', 2, 3, CAST(350.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (201, 5, N'Merhaba Java', 2, 3, CAST(351.25 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (202, 5, N'Merhaba Rust', 2, 3, CAST(352.50 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (203, 5, N'Merhaba Go', 2, 3, CAST(353.75 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (204, 5, N'Merhaba Ruby', 2, 3, CAST(355.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (205, 1, N'Örneklerle Windows', 3, 3, CAST(356.25 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (206, 1, N'Örneklerle Anrdoid', 3, 3, CAST(357.50 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (207, 1, N'Örneklerle Ubuntu', 3, 3, CAST(358.75 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (208, 1, N'Örneklerle Debian', 3, 3, CAST(360.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (209, 2, N'Örneklerle Asp.net', 3, 3, CAST(361.25 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (210, 2, N'Örneklerle php', 3, 3, CAST(362.50 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (211, 2, N'Örneklerle JSP', 3, 3, CAST(363.75 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (212, 2, N'Örneklerle Flask', 3, 3, CAST(365.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (213, 3, N'Örneklerle Oracle', 3, 3, CAST(366.25 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (214, 3, N'Örneklerle Postgrsql', 3, 3, CAST(367.50 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (215, 3, N'Örneklerle Sql Server', 3, 3, CAST(368.75 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (216, 5, N'Örneklerle Fortran', 3, 3, CAST(370.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (217, 5, N'Örneklerle Carbon', 3, 3, CAST(371.25 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (218, 5, N'Örneklerle Java', 3, 3, CAST(372.50 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (219, 5, N'Örneklerle Rust', 3, 3, CAST(373.75 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (220, 5, N'Örneklerle Go', 3, 3, CAST(375.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (221, 5, N'Örneklerle Ruby', 3, 3, CAST(376.25 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (222, 1, N'Uygulamalarla Windows', 4, 3, CAST(377.50 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (223, 1, N'Uygulamalarla Anrdoid', 4, 3, CAST(378.75 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (224, 1, N'Uygulamalarla Ubuntu', 4, 3, CAST(380.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (225, 1, N'Uygulamalarla Debian', 4, 3, CAST(381.25 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (226, 2, N'Uygulamalarla Asp.net', 4, 3, CAST(382.50 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (227, 2, N'Uygulamalarla php', 4, 3, CAST(383.75 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (228, 2, N'Uygulamalarla JSP', 4, 3, CAST(385.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (229, 2, N'Uygulamalarla Flask', 4, 3, CAST(386.25 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (230, 3, N'Uygulamalarla Oracle', 4, 3, CAST(387.50 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (231, 3, N'Uygulamalarla Postgrsql', 4, 3, CAST(388.75 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (232, 3, N'Uygulamalarla Sql Server', 4, 3, CAST(390.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (233, 5, N'Uygulamalarla Fortran', 4, 3, CAST(391.25 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (234, 5, N'Uygulamalarla Carbon', 4, 3, CAST(392.50 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (235, 5, N'Uygulamalarla Java', 4, 3, CAST(393.75 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (236, 5, N'Uygulamalarla Rust', 4, 3, CAST(395.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (237, 5, N'Uygulamalarla Go', 4, 3, CAST(396.25 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (238, 5, N'Uygulamalarla Ruby', 4, 3, CAST(397.50 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (239, 1, N'Uzmanlar için Windows', 5, 3, CAST(398.75 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (240, 1, N'Uzmanlar için Anrdoid', 5, 3, CAST(400.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (241, 1, N'Uzmanlar için Ubuntu', 5, 3, CAST(401.25 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (242, 1, N'Uzmanlar için Debian', 5, 3, CAST(402.50 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (243, 2, N'Uzmanlar için Asp.net', 5, 3, CAST(403.75 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (244, 2, N'Uzmanlar için php', 5, 3, CAST(405.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (245, 2, N'Uzmanlar için JSP', 5, 3, CAST(406.25 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (246, 2, N'Uzmanlar için Flask', 5, 3, CAST(407.50 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (247, 3, N'Uzmanlar için Oracle', 5, 3, CAST(408.75 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (248, 3, N'Uzmanlar için Postgrsql', 5, 3, CAST(410.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (249, 3, N'Uzmanlar için Sql Server', 5, 3, CAST(411.25 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (250, 5, N'Uzmanlar için Fortran', 5, 3, CAST(412.50 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (251, 5, N'Uzmanlar için Carbon', 5, 3, CAST(413.75 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (252, 5, N'Uzmanlar için Java', 5, 3, CAST(415.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (253, 5, N'Uzmanlar için Rust', 5, 3, CAST(416.25 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (254, 5, N'Uzmanlar için Go', 5, 3, CAST(417.50 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (255, 5, N'Uzmanlar için Ruby', 5, 3, CAST(418.75 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (256, 1, N'Herkes için Windows', 1, 4, CAST(420.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (257, 1, N'Herkes için Anrdoid', 1, 4, CAST(421.25 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (258, 1, N'Herkes için Ubuntu', 1, 4, CAST(422.50 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (259, 1, N'Herkes için Debian', 1, 4, CAST(423.75 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (260, 2, N'Herkes için Asp.net', 1, 4, CAST(425.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (261, 2, N'Herkes için php', 1, 4, CAST(426.25 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (262, 2, N'Herkes için JSP', 1, 4, CAST(427.50 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (263, 2, N'Herkes için Flask', 1, 4, CAST(428.75 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (264, 3, N'Herkes için Oracle', 1, 4, CAST(430.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (265, 3, N'Herkes için Postgrsql', 1, 4, CAST(431.25 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (266, 3, N'Herkes için Sql Server', 1, 4, CAST(432.50 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (267, 5, N'Herkes için Fortran', 1, 4, CAST(433.75 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (268, 5, N'Herkes için Carbon', 1, 4, CAST(435.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (269, 5, N'Herkes için Java', 1, 4, CAST(436.25 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (270, 5, N'Herkes için Rust', 1, 4, CAST(437.50 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (271, 5, N'Herkes için Go', 1, 4, CAST(438.75 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (272, 5, N'Herkes için Ruby', 1, 4, CAST(440.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (273, 1, N'Merhaba Windows', 2, 4, CAST(441.25 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (274, 1, N'Merhaba Anrdoid', 2, 4, CAST(442.50 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (275, 1, N'Merhaba Ubuntu', 2, 4, CAST(443.75 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (276, 1, N'Merhaba Debian', 2, 4, CAST(445.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (277, 2, N'Merhaba Asp.net', 2, 4, CAST(446.25 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (278, 2, N'Merhaba php', 2, 4, CAST(447.50 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (279, 2, N'Merhaba JSP', 2, 4, CAST(448.75 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (280, 2, N'Merhaba Flask', 2, 4, CAST(450.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (281, 3, N'Merhaba Oracle', 2, 4, CAST(451.25 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (282, 3, N'Merhaba Postgrsql', 2, 4, CAST(452.50 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (283, 3, N'Merhaba Sql Server', 2, 4, CAST(453.75 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (284, 5, N'Merhaba Fortran', 2, 4, CAST(455.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (285, 5, N'Merhaba Carbon', 2, 4, CAST(456.25 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (286, 5, N'Merhaba Java', 2, 4, CAST(457.50 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (287, 5, N'Merhaba Rust', 2, 4, CAST(458.75 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (288, 5, N'Merhaba Go', 2, 4, CAST(460.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (289, 5, N'Merhaba Ruby', 2, 4, CAST(461.25 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (290, 1, N'Örneklerle Windows', 3, 4, CAST(462.50 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (291, 1, N'Örneklerle Anrdoid', 3, 4, CAST(463.75 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (292, 1, N'Örneklerle Ubuntu', 3, 4, CAST(465.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (293, 1, N'Örneklerle Debian', 3, 4, CAST(466.25 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (294, 2, N'Örneklerle Asp.net', 3, 4, CAST(467.50 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (295, 2, N'Örneklerle php', 3, 4, CAST(468.75 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (296, 2, N'Örneklerle JSP', 3, 4, CAST(470.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (297, 2, N'Örneklerle Flask', 3, 4, CAST(471.25 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (298, 3, N'Örneklerle Oracle', 3, 4, CAST(472.50 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (299, 3, N'Örneklerle Postgrsql', 3, 4, CAST(473.75 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (300, 3, N'Örneklerle Sql Server', 3, 4, CAST(475.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (301, 5, N'Örneklerle Fortran', 3, 4, CAST(476.25 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (302, 5, N'Örneklerle Carbon', 3, 4, CAST(477.50 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (303, 5, N'Örneklerle Java', 3, 4, CAST(478.75 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (304, 5, N'Örneklerle Rust', 3, 4, CAST(480.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (305, 5, N'Örneklerle Go', 3, 4, CAST(481.25 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (306, 5, N'Örneklerle Ruby', 3, 4, CAST(482.50 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (307, 1, N'Uygulamalarla Windows', 4, 4, CAST(483.75 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (308, 1, N'Uygulamalarla Anrdoid', 4, 4, CAST(485.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (309, 1, N'Uygulamalarla Ubuntu', 4, 4, CAST(486.25 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (310, 1, N'Uygulamalarla Debian', 4, 4, CAST(487.50 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (311, 2, N'Uygulamalarla Asp.net', 4, 4, CAST(488.75 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (312, 2, N'Uygulamalarla php', 4, 4, CAST(490.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (313, 2, N'Uygulamalarla JSP', 4, 4, CAST(491.25 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (314, 2, N'Uygulamalarla Flask', 4, 4, CAST(492.50 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (315, 3, N'Uygulamalarla Oracle', 4, 4, CAST(493.75 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (316, 3, N'Uygulamalarla Postgrsql', 4, 4, CAST(495.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (317, 3, N'Uygulamalarla Sql Server', 4, 4, CAST(496.25 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (318, 5, N'Uygulamalarla Fortran', 4, 4, CAST(497.50 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (319, 5, N'Uygulamalarla Carbon', 4, 4, CAST(498.75 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (320, 5, N'Uygulamalarla Java', 4, 4, CAST(500.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (321, 5, N'Uygulamalarla Rust', 4, 4, CAST(501.25 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (322, 5, N'Uygulamalarla Go', 4, 4, CAST(502.50 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (323, 5, N'Uygulamalarla Ruby', 4, 4, CAST(503.75 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (324, 1, N'Uzmanlar için Windows', 5, 4, CAST(505.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (325, 1, N'Uzmanlar için Anrdoid', 5, 4, CAST(506.25 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (326, 1, N'Uzmanlar için Ubuntu', 5, 4, CAST(507.50 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (327, 1, N'Uzmanlar için Debian', 5, 4, CAST(508.75 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (328, 2, N'Uzmanlar için Asp.net', 5, 4, CAST(510.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (329, 2, N'Uzmanlar için php', 5, 4, CAST(511.25 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (330, 2, N'Uzmanlar için JSP', 5, 4, CAST(512.50 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (331, 2, N'Uzmanlar için Flask', 5, 4, CAST(513.75 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (332, 3, N'Uzmanlar için Oracle', 5, 4, CAST(515.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (333, 3, N'Uzmanlar için Postgrsql', 5, 4, CAST(516.25 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (334, 3, N'Uzmanlar için Sql Server', 5, 4, CAST(517.50 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (335, 5, N'Uzmanlar için Fortran', 5, 4, CAST(518.75 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (336, 5, N'Uzmanlar için Carbon', 5, 4, CAST(520.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (337, 5, N'Uzmanlar için Java', 5, 4, CAST(521.25 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (338, 5, N'Uzmanlar için Rust', 5, 4, CAST(522.50 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (339, 5, N'Uzmanlar için Go', 5, 4, CAST(523.75 AS Decimal(6, 2)))
GO
INSERT [dbo].[Kitap] ([Id], [KategoriId], [Adi], [Seviye], [DilId], [Fiyat]) VALUES (340, 5, N'Uzmanlar için Ruby', 5, 4, CAST(525.00 AS Decimal(6, 2)))
GO
SET IDENTITY_INSERT [dbo].[Kitap] OFF
GO
SET IDENTITY_INSERT [dbo].[Konu] ON 
GO
INSERT [dbo].[Konu] ([Id], [KategoriId], [Adi]) VALUES (1, 1, N'Windows')
GO
INSERT [dbo].[Konu] ([Id], [KategoriId], [Adi]) VALUES (2, 1, N'Anrdoid')
GO
INSERT [dbo].[Konu] ([Id], [KategoriId], [Adi]) VALUES (3, 1, N'Ubuntu')
GO
INSERT [dbo].[Konu] ([Id], [KategoriId], [Adi]) VALUES (4, 1, N'Debian')
GO
INSERT [dbo].[Konu] ([Id], [KategoriId], [Adi]) VALUES (5, 2, N'Asp.net')
GO
INSERT [dbo].[Konu] ([Id], [KategoriId], [Adi]) VALUES (6, 2, N'php')
GO
INSERT [dbo].[Konu] ([Id], [KategoriId], [Adi]) VALUES (7, 2, N'JSP')
GO
INSERT [dbo].[Konu] ([Id], [KategoriId], [Adi]) VALUES (8, 2, N'Flask')
GO
INSERT [dbo].[Konu] ([Id], [KategoriId], [Adi]) VALUES (9, 3, N'Oracle')
GO
INSERT [dbo].[Konu] ([Id], [KategoriId], [Adi]) VALUES (10, 3, N'Postgrsql')
GO
INSERT [dbo].[Konu] ([Id], [KategoriId], [Adi]) VALUES (11, 3, N'Sql Server')
GO
INSERT [dbo].[Konu] ([Id], [KategoriId], [Adi]) VALUES (12, 5, N'Fortran')
GO
INSERT [dbo].[Konu] ([Id], [KategoriId], [Adi]) VALUES (13, 5, N'Carbon')
GO
INSERT [dbo].[Konu] ([Id], [KategoriId], [Adi]) VALUES (14, 5, N'Java')
GO
INSERT [dbo].[Konu] ([Id], [KategoriId], [Adi]) VALUES (15, 5, N'Rust')
GO
INSERT [dbo].[Konu] ([Id], [KategoriId], [Adi]) VALUES (16, 5, N'Go')
GO
INSERT [dbo].[Konu] ([Id], [KategoriId], [Adi]) VALUES (17, 5, N'Ruby')
GO
SET IDENTITY_INSERT [dbo].[Konu] OFF
GO
SET IDENTITY_INSERT [dbo].[Ogrenci] ON 
GO
INSERT [dbo].[Ogrenci] ([Id], [Adi], [Soyadi]) VALUES (1, N'Nesibe', N'Çetinkaya')
GO
INSERT [dbo].[Ogrenci] ([Id], [Adi], [Soyadi]) VALUES (2, N'Nurdan', N'Türkmen')
GO
INSERT [dbo].[Ogrenci] ([Id], [Adi], [Soyadi]) VALUES (3, N'Damla', N'Topcu')
GO
INSERT [dbo].[Ogrenci] ([Id], [Adi], [Soyadi]) VALUES (4, N'Ceyda', N'Atalay')
GO
INSERT [dbo].[Ogrenci] ([Id], [Adi], [Soyadi]) VALUES (5, N'Kudret', N'Uðurlu')
GO
INSERT [dbo].[Ogrenci] ([Id], [Adi], [Soyadi]) VALUES (6, N'Sinan', N'Uzun')
GO
INSERT [dbo].[Ogrenci] ([Id], [Adi], [Soyadi]) VALUES (7, N'Selin', N'Rakýcý')
GO
INSERT [dbo].[Ogrenci] ([Id], [Adi], [Soyadi]) VALUES (8, N'Serhat', N'Arslan')
GO
INSERT [dbo].[Ogrenci] ([Id], [Adi], [Soyadi]) VALUES (9, N'Ahmet', N'karadað')
GO
INSERT [dbo].[Ogrenci] ([Id], [Adi], [Soyadi]) VALUES (10, N'Efe', N'Gündüz')
GO
INSERT [dbo].[Ogrenci] ([Id], [Adi], [Soyadi]) VALUES (11, N'Cemre', N'Özer')
GO
SET IDENTITY_INSERT [dbo].[Ogrenci] OFF
GO
SET IDENTITY_INSERT [dbo].[Ogretmen] ON 
GO
INSERT [dbo].[Ogretmen] ([Id], [Adi], [Soyadi], [EPosta], [DersId]) VALUES (1, N'Serhat', N'Yýldýz', N'serhat.yýldýz@gmail.com', 1)
GO
INSERT [dbo].[Ogretmen] ([Id], [Adi], [Soyadi], [EPosta], [DersId]) VALUES (2, N'Ahmet', N'Kaba', N'ahmet.kaba@gmail.com', 2)
GO
INSERT [dbo].[Ogretmen] ([Id], [Adi], [Soyadi], [EPosta], [DersId]) VALUES (3, N'John', N'Sharp', N'john.sharp@gmail.com', 3)
GO
INSERT [dbo].[Ogretmen] ([Id], [Adi], [Soyadi], [EPosta], [DersId]) VALUES (4, N'Simth', N'Golden', N'simth.golden@gmail.com', 4)
GO
INSERT [dbo].[Ogretmen] ([Id], [Adi], [Soyadi], [EPosta], [DersId]) VALUES (5, N'Ati', N'Karadeniz', N'ati.karadeniz@gmail.com', 5)
GO
INSERT [dbo].[Ogretmen] ([Id], [Adi], [Soyadi], [EPosta], [DersId]) VALUES (6, N'Ali', N'Kocadað', N'ali.kocadað@gmail.com', 6)
GO
SET IDENTITY_INSERT [dbo].[Ogretmen] OFF
GO
SET IDENTITY_INSERT [dbo].[Proje] ON 
GO
INSERT [dbo].[Proje] ([Id], [Adi], [OgretmenId], [BaslamaTarihi]) VALUES (2, N'MERHABA', 1, CAST(N'2022-11-07T14:11:25.000' AS DateTime))
GO
INSERT [dbo].[Proje] ([Id], [Adi], [OgretmenId], [BaslamaTarihi]) VALUES (3, N'WEB PROJESÝ', 2, CAST(N'2022-11-07T14:11:56.657' AS DateTime))
GO
INSERT [dbo].[Proje] ([Id], [Adi], [OgretmenId], [BaslamaTarihi]) VALUES (4, N'YENÝ PROJE', 2, CAST(N'2022-11-07T14:12:07.393' AS DateTime))
GO
INSERT [dbo].[Proje] ([Id], [Adi], [OgretmenId], [BaslamaTarihi]) VALUES (5, N'NEXT ', 3, CAST(N'2022-11-07T14:12:21.833' AS DateTime))
GO
INSERT [dbo].[Proje] ([Id], [Adi], [OgretmenId], [BaslamaTarihi]) VALUES (6, N'OTOMASYAN', 4, CAST(N'2022-11-07T14:12:39.837' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Proje] OFF
GO
INSERT [dbo].[ProjeOgrenci] ([ProjeId], [OgrenciId]) VALUES (2, 1)
GO
INSERT [dbo].[ProjeOgrenci] ([ProjeId], [OgrenciId]) VALUES (2, 2)
GO
INSERT [dbo].[ProjeOgrenci] ([ProjeId], [OgrenciId]) VALUES (2, 3)
GO
INSERT [dbo].[ProjeOgrenci] ([ProjeId], [OgrenciId]) VALUES (2, 9)
GO
INSERT [dbo].[ProjeOgrenci] ([ProjeId], [OgrenciId]) VALUES (2, 10)
GO
INSERT [dbo].[ProjeOgrenci] ([ProjeId], [OgrenciId]) VALUES (2, 11)
GO
INSERT [dbo].[ProjeOgrenci] ([ProjeId], [OgrenciId]) VALUES (3, 1)
GO
INSERT [dbo].[ProjeOgrenci] ([ProjeId], [OgrenciId]) VALUES (3, 4)
GO
INSERT [dbo].[ProjeOgrenci] ([ProjeId], [OgrenciId]) VALUES (3, 11)
GO
INSERT [dbo].[ProjeOgrenci] ([ProjeId], [OgrenciId]) VALUES (4, 1)
GO
INSERT [dbo].[ProjeOgrenci] ([ProjeId], [OgrenciId]) VALUES (4, 2)
GO
INSERT [dbo].[ProjeOgrenci] ([ProjeId], [OgrenciId]) VALUES (4, 3)
GO
INSERT [dbo].[ProjeOgrenci] ([ProjeId], [OgrenciId]) VALUES (4, 4)
GO
SET IDENTITY_INSERT [dbo].[Sehir] ON 
GO
INSERT [dbo].[Sehir] ([Id], [Adi]) VALUES (1, N'Istanbul')
GO
INSERT [dbo].[Sehir] ([Id], [Adi]) VALUES (2, N'Ankara')
GO
INSERT [dbo].[Sehir] ([Id], [Adi]) VALUES (3, N'Bursa')
GO
SET IDENTITY_INSERT [dbo].[Sehir] OFF
GO
SET IDENTITY_INSERT [dbo].[Seviye] ON 
GO
INSERT [dbo].[Seviye] ([Id], [Deger], [Adi]) VALUES (1, 100, N'Herkes için')
GO
INSERT [dbo].[Seviye] ([Id], [Deger], [Adi]) VALUES (2, 100, N'Merhaba')
GO
INSERT [dbo].[Seviye] ([Id], [Deger], [Adi]) VALUES (3, 200, N'Örneklerle')
GO
INSERT [dbo].[Seviye] ([Id], [Deger], [Adi]) VALUES (4, 200, N'Uygulamalarla')
GO
INSERT [dbo].[Seviye] ([Id], [Deger], [Adi]) VALUES (5, 300, N'Uzmanlar için')
GO
SET IDENTITY_INSERT [dbo].[Seviye] OFF
GO
/****** Object:  Index [IX_Ogretmen]    Script Date: 30.11.2022 15:02:44 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Ogretmen] ON [dbo].[Ogretmen]
(
	[DersId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Proje]    Script Date: 30.11.2022 15:02:44 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Proje] ON [dbo].[Proje]
(
	[Adi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Proje] ADD  CONSTRAINT [DF_Proje_BaslamaTarihi]  DEFAULT (getdate()) FOR [BaslamaTarihi]
GO
ALTER TABLE [dbo].[DersOgrenci]  WITH CHECK ADD  CONSTRAINT [FK_DersOgrenci_Ders] FOREIGN KEY([DersId])
REFERENCES [dbo].[Ders] ([Id])
GO
ALTER TABLE [dbo].[DersOgrenci] CHECK CONSTRAINT [FK_DersOgrenci_Ders]
GO
ALTER TABLE [dbo].[DersOgrenci]  WITH CHECK ADD  CONSTRAINT [FK_DersOgrenci_Ogrenci] FOREIGN KEY([OgrenciId])
REFERENCES [dbo].[Ogrenci] ([Id])
GO
ALTER TABLE [dbo].[DersOgrenci] CHECK CONSTRAINT [FK_DersOgrenci_Ogrenci]
GO
ALTER TABLE [dbo].[Kitap]  WITH CHECK ADD  CONSTRAINT [FK_Kitap_Dil] FOREIGN KEY([DilId])
REFERENCES [dbo].[Dil] ([Id])
GO
ALTER TABLE [dbo].[Kitap] CHECK CONSTRAINT [FK_Kitap_Dil]
GO
ALTER TABLE [dbo].[Kitap]  WITH CHECK ADD  CONSTRAINT [FK_Kitap_Kategori] FOREIGN KEY([KategoriId])
REFERENCES [dbo].[Kategori] ([Id])
GO
ALTER TABLE [dbo].[Kitap] CHECK CONSTRAINT [FK_Kitap_Kategori]
GO
ALTER TABLE [dbo].[Kitap]  WITH CHECK ADD  CONSTRAINT [FK_Kitap_Seviye] FOREIGN KEY([Seviye])
REFERENCES [dbo].[Seviye] ([Id])
GO
ALTER TABLE [dbo].[Kitap] CHECK CONSTRAINT [FK_Kitap_Seviye]
GO
ALTER TABLE [dbo].[Konu]  WITH CHECK ADD  CONSTRAINT [FK_Konu_Kategori] FOREIGN KEY([KategoriId])
REFERENCES [dbo].[Kategori] ([Id])
GO
ALTER TABLE [dbo].[Konu] CHECK CONSTRAINT [FK_Konu_Kategori]
GO
ALTER TABLE [dbo].[Ogretmen]  WITH CHECK ADD  CONSTRAINT [FK_Ogretmen_Ders] FOREIGN KEY([DersId])
REFERENCES [dbo].[Ders] ([Id])
GO
ALTER TABLE [dbo].[Ogretmen] CHECK CONSTRAINT [FK_Ogretmen_Ders]
GO
ALTER TABLE [dbo].[Proje]  WITH CHECK ADD  CONSTRAINT [FK_Proje_Ogretmen] FOREIGN KEY([OgretmenId])
REFERENCES [dbo].[Ogretmen] ([Id])
GO
ALTER TABLE [dbo].[Proje] CHECK CONSTRAINT [FK_Proje_Ogretmen]
GO
ALTER TABLE [dbo].[ProjeOgrenci]  WITH CHECK ADD  CONSTRAINT [FK_ProjeOgrenci_Ogrenci] FOREIGN KEY([OgrenciId])
REFERENCES [dbo].[Ogrenci] ([Id])
GO
ALTER TABLE [dbo].[ProjeOgrenci] CHECK CONSTRAINT [FK_ProjeOgrenci_Ogrenci]
GO
ALTER TABLE [dbo].[ProjeOgrenci]  WITH CHECK ADD  CONSTRAINT [FK_ProjeOgrenci_Proje] FOREIGN KEY([ProjeId])
REFERENCES [dbo].[Proje] ([Id])
GO
ALTER TABLE [dbo].[ProjeOgrenci] CHECK CONSTRAINT [FK_ProjeOgrenci_Proje]
GO
/****** Object:  StoredProcedure [dbo].[usp_dersler]    Script Date: 30.11.2022 15:02:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_dersler]
as begin
	select * from ders
end

GO
/****** Object:  StoredProcedure [dbo].[usp_GetLocation]    Script Date: 30.11.2022 15:02:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_GetLocation]
as
begin
	select * from Sehir
	select * from Ilce
end

GO
/****** Object:  StoredProcedure [dbo].[usp_KitapArama]    Script Date: 30.11.2022 15:02:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[usp_KitapArama]
	@dilId			int 		 =1,
	@kategoriId		int 		 =null,
	@arama_yazi		varchar(max) =null,
	@MaxFiyat		decimal(6,2) =null, 
	@MinFiyat		decimal(6,2) =null
as
begin
	select * from Kitap as ki 
	join Kategori as kat on kat.Id= ki.KategoriId
	where 
	(@dilId is null or ki.DilId=@dilId) and
	(@kategoriId is null or ki.KategoriId=@kategoriId) and
	(@arama_yazi is null or 
		ki.Adi like  '%' + @arama_yazi + '%' or
		kat.Adi like '%' + @arama_yazi + '%' 
	)  and
	(@MaxFiyat is null or ki.Fiyat<=@MaxFiyat) and
	(@MinFiyat is null or ki.Fiyat>=@MinFiyat)
end
GO
/****** Object:  StoredProcedure [dbo].[usp_UpdateProjects]    Script Date: 30.11.2022 15:02:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_UpdateProjects]
as
begin
	--set nocount on
	update Proje set Adi= UPPER(Adi)
end

GO
