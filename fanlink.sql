USE [fanlink]
GO
/****** Object:  Table [dbo].[Dispositivo]    Script Date: 08/04/2024 05:04:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dispositivo](
	[id] [int] NOT NULL,
	[nombre_dispositivo] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_Dispositivo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 08/04/2024 05:04:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[id] [int] NOT NULL,
	[nombre] [nvarchar](50) NOT NULL,
	[correo_electronico] [nvarchar](50) NOT NULL,
	[contraseña] [nvarchar](16) NOT NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuario_dispositivos]    Script Date: 08/04/2024 05:04:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuario_dispositivos](
	[usuarioid] [int] NULL,
	[dispositivoid] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[usuario_dispositivos]  WITH CHECK ADD  CONSTRAINT [FK_dispositivoid] FOREIGN KEY([dispositivoid])
REFERENCES [dbo].[Dispositivo] ([id])
GO
ALTER TABLE [dbo].[usuario_dispositivos] CHECK CONSTRAINT [FK_dispositivoid]
GO
ALTER TABLE [dbo].[usuario_dispositivos]  WITH CHECK ADD  CONSTRAINT [FK_usuarioid] FOREIGN KEY([usuarioid])
REFERENCES [dbo].[Usuario] ([id])
GO
ALTER TABLE [dbo].[usuario_dispositivos] CHECK CONSTRAINT [FK_usuarioid]
GO
