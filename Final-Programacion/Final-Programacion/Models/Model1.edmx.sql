
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 04/09/2019 04:42:24
-- Generated from EDMX file: \\mac\Home\Documents\GitHub\Final-Proyecto\Final-Programacion\Final-Programacion\Models\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [ISAAC-FINAL];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_DepartamentosEmpleados]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[EmpleadosSet] DROP CONSTRAINT [FK_DepartamentosEmpleados];
GO
IF OBJECT_ID(N'[dbo].[FK_CargosEmpleados]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[EmpleadosSet] DROP CONSTRAINT [FK_CargosEmpleados];
GO
IF OBJECT_ID(N'[dbo].[FK_EmpleadosCal_Nomina]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Cal_NominaSet] DROP CONSTRAINT [FK_EmpleadosCal_Nomina];
GO
IF OBJECT_ID(N'[dbo].[FK_EmpleadosLicencias]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[LicenciasSet] DROP CONSTRAINT [FK_EmpleadosLicencias];
GO
IF OBJECT_ID(N'[dbo].[FK_EmpleadosPermisos]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PermisosSet] DROP CONSTRAINT [FK_EmpleadosPermisos];
GO
IF OBJECT_ID(N'[dbo].[FK_EmpleadosVacaciones]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[VacacionesSet] DROP CONSTRAINT [FK_EmpleadosVacaciones];
GO
IF OBJECT_ID(N'[dbo].[FK_EmpleadosSalida_Empleados]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Salida_EmpleadosSet] DROP CONSTRAINT [FK_EmpleadosSalida_Empleados];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[EmpleadosSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[EmpleadosSet];
GO
IF OBJECT_ID(N'[dbo].[Departamentos]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Departamentos];
GO
IF OBJECT_ID(N'[dbo].[CargosSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CargosSet];
GO
IF OBJECT_ID(N'[dbo].[Cal_NominaSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Cal_NominaSet];
GO
IF OBJECT_ID(N'[dbo].[LicenciasSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[LicenciasSet];
GO
IF OBJECT_ID(N'[dbo].[PermisosSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PermisosSet];
GO
IF OBJECT_ID(N'[dbo].[VacacionesSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[VacacionesSet];
GO
IF OBJECT_ID(N'[dbo].[Salida_EmpleadosSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Salida_EmpleadosSet];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'EmpleadosSet'
CREATE TABLE [dbo].[EmpleadosSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Codigo_Empleado] int  NOT NULL,
    [Nombre] nvarchar(max)  NOT NULL,
    [Apellido] nvarchar(max)  NOT NULL,
    [Telefono] nvarchar(max)  NOT NULL,
    [Fecha_Ingreso] datetime  NOT NULL,
    [Salario] float  NOT NULL,
    [Estatus] bit  NOT NULL,
    [DepartamentosId] int  NOT NULL,
    [CargosId] int  NOT NULL
);
GO

-- Creating table 'Departamentos'
CREATE TABLE [dbo].[Departamentos] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Codigo_Departamento] int  NOT NULL,
    [Nombre] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'CargosSet'
CREATE TABLE [dbo].[CargosSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Cargo] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Cal_NominaSet'
CREATE TABLE [dbo].[Cal_NominaSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Ano] nvarchar(max)  NOT NULL,
    [Mes] nvarchar(max)  NOT NULL,
    [Monto_Total] int  NOT NULL,
    [EmpleadosId] int  NOT NULL
);
GO

-- Creating table 'LicenciasSet'
CREATE TABLE [dbo].[LicenciasSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Desde] datetime  NOT NULL,
    [Hasta] datetime  NOT NULL,
    [Motivo] nvarchar(max)  NOT NULL,
    [Comentario] nvarchar(max)  NOT NULL,
    [EmpleadosId] int  NOT NULL
);
GO

-- Creating table 'PermisosSet'
CREATE TABLE [dbo].[PermisosSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Desde] datetime  NOT NULL,
    [Hasta] datetime  NOT NULL,
    [Comentario] nvarchar(max)  NOT NULL,
    [EmpleadosId] int  NOT NULL
);
GO

-- Creating table 'VacacionesSet'
CREATE TABLE [dbo].[VacacionesSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Desde] datetime  NOT NULL,
    [Hasta] datetime  NOT NULL,
    [Ano_Corres] nvarchar(max)  NOT NULL,
    [Comentario] nvarchar(max)  NOT NULL,
    [EmpleadosId] int  NOT NULL
);
GO

-- Creating table 'Salida_EmpleadosSet'
CREATE TABLE [dbo].[Salida_EmpleadosSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Tipo_Salida] nvarchar(max)  NOT NULL,
    [Motivo] nvarchar(max)  NOT NULL,
    [Fecha_Salida] datetime  NOT NULL,
    [EmpleadosId] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'EmpleadosSet'
ALTER TABLE [dbo].[EmpleadosSet]
ADD CONSTRAINT [PK_EmpleadosSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Departamentos'
ALTER TABLE [dbo].[Departamentos]
ADD CONSTRAINT [PK_Departamentos]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'CargosSet'
ALTER TABLE [dbo].[CargosSet]
ADD CONSTRAINT [PK_CargosSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Cal_NominaSet'
ALTER TABLE [dbo].[Cal_NominaSet]
ADD CONSTRAINT [PK_Cal_NominaSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'LicenciasSet'
ALTER TABLE [dbo].[LicenciasSet]
ADD CONSTRAINT [PK_LicenciasSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'PermisosSet'
ALTER TABLE [dbo].[PermisosSet]
ADD CONSTRAINT [PK_PermisosSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'VacacionesSet'
ALTER TABLE [dbo].[VacacionesSet]
ADD CONSTRAINT [PK_VacacionesSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Salida_EmpleadosSet'
ALTER TABLE [dbo].[Salida_EmpleadosSet]
ADD CONSTRAINT [PK_Salida_EmpleadosSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [DepartamentosId] in table 'EmpleadosSet'
ALTER TABLE [dbo].[EmpleadosSet]
ADD CONSTRAINT [FK_DepartamentosEmpleados]
    FOREIGN KEY ([DepartamentosId])
    REFERENCES [dbo].[Departamentos]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_DepartamentosEmpleados'
CREATE INDEX [IX_FK_DepartamentosEmpleados]
ON [dbo].[EmpleadosSet]
    ([DepartamentosId]);
GO

-- Creating foreign key on [CargosId] in table 'EmpleadosSet'
ALTER TABLE [dbo].[EmpleadosSet]
ADD CONSTRAINT [FK_CargosEmpleados]
    FOREIGN KEY ([CargosId])
    REFERENCES [dbo].[CargosSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CargosEmpleados'
CREATE INDEX [IX_FK_CargosEmpleados]
ON [dbo].[EmpleadosSet]
    ([CargosId]);
GO

-- Creating foreign key on [EmpleadosId] in table 'Cal_NominaSet'
ALTER TABLE [dbo].[Cal_NominaSet]
ADD CONSTRAINT [FK_EmpleadosCal_Nomina]
    FOREIGN KEY ([EmpleadosId])
    REFERENCES [dbo].[EmpleadosSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EmpleadosCal_Nomina'
CREATE INDEX [IX_FK_EmpleadosCal_Nomina]
ON [dbo].[Cal_NominaSet]
    ([EmpleadosId]);
GO

-- Creating foreign key on [EmpleadosId] in table 'LicenciasSet'
ALTER TABLE [dbo].[LicenciasSet]
ADD CONSTRAINT [FK_EmpleadosLicencias]
    FOREIGN KEY ([EmpleadosId])
    REFERENCES [dbo].[EmpleadosSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EmpleadosLicencias'
CREATE INDEX [IX_FK_EmpleadosLicencias]
ON [dbo].[LicenciasSet]
    ([EmpleadosId]);
GO

-- Creating foreign key on [EmpleadosId] in table 'PermisosSet'
ALTER TABLE [dbo].[PermisosSet]
ADD CONSTRAINT [FK_EmpleadosPermisos]
    FOREIGN KEY ([EmpleadosId])
    REFERENCES [dbo].[EmpleadosSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EmpleadosPermisos'
CREATE INDEX [IX_FK_EmpleadosPermisos]
ON [dbo].[PermisosSet]
    ([EmpleadosId]);
GO

-- Creating foreign key on [EmpleadosId] in table 'VacacionesSet'
ALTER TABLE [dbo].[VacacionesSet]
ADD CONSTRAINT [FK_EmpleadosVacaciones]
    FOREIGN KEY ([EmpleadosId])
    REFERENCES [dbo].[EmpleadosSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EmpleadosVacaciones'
CREATE INDEX [IX_FK_EmpleadosVacaciones]
ON [dbo].[VacacionesSet]
    ([EmpleadosId]);
GO

-- Creating foreign key on [EmpleadosId] in table 'Salida_EmpleadosSet'
ALTER TABLE [dbo].[Salida_EmpleadosSet]
ADD CONSTRAINT [FK_EmpleadosSalida_Empleados]
    FOREIGN KEY ([EmpleadosId])
    REFERENCES [dbo].[EmpleadosSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EmpleadosSalida_Empleados'
CREATE INDEX [IX_FK_EmpleadosSalida_Empleados]
ON [dbo].[Salida_EmpleadosSet]
    ([EmpleadosId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------