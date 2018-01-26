
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 01/26/2018 12:22:53
-- Generated from EDMX file: C:\Users\LENOVO\source\repos\AssessmentCenterDBEF\AssessmentCenterDBEF\ACModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [DB_ASSESSMENT_01];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_EntiteEntite]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[EntiteSet] DROP CONSTRAINT [FK_EntiteEntite];
GO
IF OBJECT_ID(N'[dbo].[FK_TypeEntiteEntite]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[EntiteSet] DROP CONSTRAINT [FK_TypeEntiteEntite];
GO
IF OBJECT_ID(N'[dbo].[FK_TypeEntiteFonction]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[FonctionSet] DROP CONSTRAINT [FK_TypeEntiteFonction];
GO
IF OBJECT_ID(N'[dbo].[FK_EntitePoste]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PosteSet] DROP CONSTRAINT [FK_EntitePoste];
GO
IF OBJECT_ID(N'[dbo].[FK_FonctionPoste]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PosteSet] DROP CONSTRAINT [FK_FonctionPoste];
GO
IF OBJECT_ID(N'[dbo].[FK_EmployePoste]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PosteSet] DROP CONSTRAINT [FK_EmployePoste];
GO
IF OBJECT_ID(N'[dbo].[FK_PosteEmployeFormation]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[EmployeFormationSet] DROP CONSTRAINT [FK_PosteEmployeFormation];
GO
IF OBJECT_ID(N'[dbo].[FK_FormationEmployeFormation]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[EmployeFormationSet] DROP CONSTRAINT [FK_FormationEmployeFormation];
GO
IF OBJECT_ID(N'[dbo].[FK_SupportContenu]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ContenuSet] DROP CONSTRAINT [FK_SupportContenu];
GO
IF OBJECT_ID(N'[dbo].[FK_FormationSupport]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[SupportSet] DROP CONSTRAINT [FK_FormationSupport];
GO
IF OBJECT_ID(N'[dbo].[FK_FormationQuiz]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[QuizSet] DROP CONSTRAINT [FK_FormationQuiz];
GO
IF OBJECT_ID(N'[dbo].[FK_EmployeFormationEmployeQuiz]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[EmployeQuizSet] DROP CONSTRAINT [FK_EmployeFormationEmployeQuiz];
GO
IF OBJECT_ID(N'[dbo].[FK_QuizEmployeQuiz]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[EmployeQuizSet] DROP CONSTRAINT [FK_QuizEmployeQuiz];
GO
IF OBJECT_ID(N'[dbo].[FK_QuestionTypeQuestion]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[QuestionSet] DROP CONSTRAINT [FK_QuestionTypeQuestion];
GO
IF OBJECT_ID(N'[dbo].[FK_QuestionOption]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[OptionSet] DROP CONSTRAINT [FK_QuestionOption];
GO
IF OBJECT_ID(N'[dbo].[FK_QuizQuestion]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[QuestionSet] DROP CONSTRAINT [FK_QuizQuestion];
GO
IF OBJECT_ID(N'[dbo].[FK_QuestionReponse]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ReponseSet] DROP CONSTRAINT [FK_QuestionReponse];
GO
IF OBJECT_ID(N'[dbo].[FK_OptionReponse]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ReponseSet] DROP CONSTRAINT [FK_OptionReponse];
GO
IF OBJECT_ID(N'[dbo].[FK_EmployeQuizComposition]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CompositionSet] DROP CONSTRAINT [FK_EmployeQuizComposition];
GO
IF OBJECT_ID(N'[dbo].[FK_CompositionReponse]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ReponseSet] DROP CONSTRAINT [FK_CompositionReponse];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[EntiteSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[EntiteSet];
GO
IF OBJECT_ID(N'[dbo].[TypeEntiteSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TypeEntiteSet];
GO
IF OBJECT_ID(N'[dbo].[FonctionSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[FonctionSet];
GO
IF OBJECT_ID(N'[dbo].[PosteSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PosteSet];
GO
IF OBJECT_ID(N'[dbo].[EmployeSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[EmployeSet];
GO
IF OBJECT_ID(N'[dbo].[FormationSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[FormationSet];
GO
IF OBJECT_ID(N'[dbo].[EmployeFormationSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[EmployeFormationSet];
GO
IF OBJECT_ID(N'[dbo].[SupportSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[SupportSet];
GO
IF OBJECT_ID(N'[dbo].[ContenuSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ContenuSet];
GO
IF OBJECT_ID(N'[dbo].[QuizSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[QuizSet];
GO
IF OBJECT_ID(N'[dbo].[EmployeQuizSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[EmployeQuizSet];
GO
IF OBJECT_ID(N'[dbo].[QuestionSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[QuestionSet];
GO
IF OBJECT_ID(N'[dbo].[TypeQuestionSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TypeQuestionSet];
GO
IF OBJECT_ID(N'[dbo].[OptionSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[OptionSet];
GO
IF OBJECT_ID(N'[dbo].[ReponseSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ReponseSet];
GO
IF OBJECT_ID(N'[dbo].[CompositionSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CompositionSet];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'EntiteSet'
CREATE TABLE [dbo].[EntiteSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [At] datetime  NOT NULL,
    [Code] nvarchar(10)  NOT NULL,
    [Nom] nvarchar(200)  NOT NULL,
    [Parent_Id] int  NOT NULL,
    [TypeEntite_Id] int  NOT NULL
);
GO

-- Creating table 'TypeEntiteSet'
CREATE TABLE [dbo].[TypeEntiteSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Code] nvarchar(20)  NULL,
    [At] datetime  NOT NULL,
    [Nom] nvarchar(200)  NOT NULL
);
GO

-- Creating table 'FonctionSet'
CREATE TABLE [dbo].[FonctionSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Code] nvarchar(20)  NOT NULL,
    [Nom] nvarchar(200)  NOT NULL,
    [At] datetime  NOT NULL,
    [EstTransversale] bit  NOT NULL,
    [EstTop] bit  NOT NULL,
    [TypeEntite_Id] int  NOT NULL
);
GO

-- Creating table 'PosteSet'
CREATE TABLE [dbo].[PosteSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [At] datetime  NOT NULL,
    [Active] bit  NOT NULL,
    [Entite_Id] int  NOT NULL,
    [Fonction_Id] int  NOT NULL,
    [Employe_Id] int  NOT NULL
);
GO

-- Creating table 'EmployeSet'
CREATE TABLE [dbo].[EmployeSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Matricule] nvarchar(20)  NOT NULL,
    [Nom] nvarchar(100)  NOT NULL,
    [Prenom] nvarchar(255)  NOT NULL,
    [Email] nvarchar(max)  NOT NULL,
    [Mobile] nvarchar(max)  NOT NULL,
    [Image] nvarchar(max)  NOT NULL,
    [Active] bit  NOT NULL,
    [At] datetime  NOT NULL
);
GO

-- Creating table 'FormationSet'
CREATE TABLE [dbo].[FormationSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Code] nvarchar(20)  NOT NULL,
    [Titre] nvarchar(max)  NOT NULL,
    [At] datetime  NOT NULL,
    [Active] bit  NOT NULL,
    [Ouverte] bit  NOT NULL,
    [DateLimite] datetime  NULL,
    [Desccription] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'EmployeFormationSet'
CREATE TABLE [dbo].[EmployeFormationSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [At] datetime  NOT NULL,
    [Active] datetime  NOT NULL,
    [DateFin] datetime  NULL,
    [Poste_Id] int  NOT NULL,
    [Formation_Id] int  NOT NULL
);
GO

-- Creating table 'SupportSet'
CREATE TABLE [dbo].[SupportSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Code] nvarchar(20)  NOT NULL,
    [Active] bit  NOT NULL,
    [Titre] nvarchar(255)  NOT NULL,
    [Formation_Id] int  NOT NULL
);
GO

-- Creating table 'ContenuSet'
CREATE TABLE [dbo].[ContenuSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Active] bit  NOT NULL,
    [Texte] nvarchar(max)  NULL,
    [Support_Id] int  NOT NULL
);
GO

-- Creating table 'QuizSet'
CREATE TABLE [dbo].[QuizSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Code] nvarchar(200)  NULL,
    [Titre] nvarchar(max)  NOT NULL,
    [Active] bit  NOT NULL,
    [Examen] bit  NOT NULL,
    [Valide] bit  NOT NULL,
    [Duree] smallint  NOT NULL,
    [DateDebut] datetime  NOT NULL,
    [DateFin] datetime  NOT NULL,
    [Formation_Id] int  NOT NULL
);
GO

-- Creating table 'EmployeQuizSet'
CREATE TABLE [dbo].[EmployeQuizSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [At] datetime  NOT NULL,
    [DateFin] datetime  NOT NULL,
    [Active] bit  NOT NULL,
    [EmployeFormation_Id] int  NOT NULL,
    [Quiz_Id] int  NOT NULL
);
GO

-- Creating table 'QuestionSet'
CREATE TABLE [dbo].[QuestionSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Code] nvarchar(100)  NOT NULL,
    [Contenu] nvarchar(max)  NOT NULL,
    [At] datetime  NOT NULL,
    [TypeQuestion_Id] int  NOT NULL,
    [Quiz_Id] int  NOT NULL
);
GO

-- Creating table 'TypeQuestionSet'
CREATE TABLE [dbo].[TypeQuestionSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Code] nvarchar(100)  NOT NULL,
    [Nom] nvarchar(200)  NOT NULL,
    [Active] bit  NOT NULL,
    [At] datetime  NOT NULL
);
GO

-- Creating table 'OptionSet'
CREATE TABLE [dbo].[OptionSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Reponse] nvarchar(max)  NOT NULL,
    [At] datetime  NOT NULL,
    [Active] bit  NOT NULL,
    [Question_Id] int  NOT NULL
);
GO

-- Creating table 'ReponseSet'
CREATE TABLE [dbo].[ReponseSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Active] bit  NOT NULL,
    [Proposition] nvarchar(max)  NULL,
    [Question_Id] int  NOT NULL,
    [Option_Id] int  NOT NULL,
    [Composition_Id] int  NOT NULL
);
GO

-- Creating table 'CompositionSet'
CREATE TABLE [dbo].[CompositionSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [At] datetime  NOT NULL,
    [EmployeQuiz_Id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'EntiteSet'
ALTER TABLE [dbo].[EntiteSet]
ADD CONSTRAINT [PK_EntiteSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'TypeEntiteSet'
ALTER TABLE [dbo].[TypeEntiteSet]
ADD CONSTRAINT [PK_TypeEntiteSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'FonctionSet'
ALTER TABLE [dbo].[FonctionSet]
ADD CONSTRAINT [PK_FonctionSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'PosteSet'
ALTER TABLE [dbo].[PosteSet]
ADD CONSTRAINT [PK_PosteSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'EmployeSet'
ALTER TABLE [dbo].[EmployeSet]
ADD CONSTRAINT [PK_EmployeSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'FormationSet'
ALTER TABLE [dbo].[FormationSet]
ADD CONSTRAINT [PK_FormationSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'EmployeFormationSet'
ALTER TABLE [dbo].[EmployeFormationSet]
ADD CONSTRAINT [PK_EmployeFormationSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'SupportSet'
ALTER TABLE [dbo].[SupportSet]
ADD CONSTRAINT [PK_SupportSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ContenuSet'
ALTER TABLE [dbo].[ContenuSet]
ADD CONSTRAINT [PK_ContenuSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'QuizSet'
ALTER TABLE [dbo].[QuizSet]
ADD CONSTRAINT [PK_QuizSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'EmployeQuizSet'
ALTER TABLE [dbo].[EmployeQuizSet]
ADD CONSTRAINT [PK_EmployeQuizSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'QuestionSet'
ALTER TABLE [dbo].[QuestionSet]
ADD CONSTRAINT [PK_QuestionSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'TypeQuestionSet'
ALTER TABLE [dbo].[TypeQuestionSet]
ADD CONSTRAINT [PK_TypeQuestionSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'OptionSet'
ALTER TABLE [dbo].[OptionSet]
ADD CONSTRAINT [PK_OptionSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ReponseSet'
ALTER TABLE [dbo].[ReponseSet]
ADD CONSTRAINT [PK_ReponseSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'CompositionSet'
ALTER TABLE [dbo].[CompositionSet]
ADD CONSTRAINT [PK_CompositionSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Parent_Id] in table 'EntiteSet'
ALTER TABLE [dbo].[EntiteSet]
ADD CONSTRAINT [FK_EntiteEntite]
    FOREIGN KEY ([Parent_Id])
    REFERENCES [dbo].[EntiteSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EntiteEntite'
CREATE INDEX [IX_FK_EntiteEntite]
ON [dbo].[EntiteSet]
    ([Parent_Id]);
GO

-- Creating foreign key on [TypeEntite_Id] in table 'EntiteSet'
ALTER TABLE [dbo].[EntiteSet]
ADD CONSTRAINT [FK_TypeEntiteEntite]
    FOREIGN KEY ([TypeEntite_Id])
    REFERENCES [dbo].[TypeEntiteSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TypeEntiteEntite'
CREATE INDEX [IX_FK_TypeEntiteEntite]
ON [dbo].[EntiteSet]
    ([TypeEntite_Id]);
GO

-- Creating foreign key on [TypeEntite_Id] in table 'FonctionSet'
ALTER TABLE [dbo].[FonctionSet]
ADD CONSTRAINT [FK_TypeEntiteFonction]
    FOREIGN KEY ([TypeEntite_Id])
    REFERENCES [dbo].[TypeEntiteSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TypeEntiteFonction'
CREATE INDEX [IX_FK_TypeEntiteFonction]
ON [dbo].[FonctionSet]
    ([TypeEntite_Id]);
GO

-- Creating foreign key on [Entite_Id] in table 'PosteSet'
ALTER TABLE [dbo].[PosteSet]
ADD CONSTRAINT [FK_EntitePoste]
    FOREIGN KEY ([Entite_Id])
    REFERENCES [dbo].[EntiteSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EntitePoste'
CREATE INDEX [IX_FK_EntitePoste]
ON [dbo].[PosteSet]
    ([Entite_Id]);
GO

-- Creating foreign key on [Fonction_Id] in table 'PosteSet'
ALTER TABLE [dbo].[PosteSet]
ADD CONSTRAINT [FK_FonctionPoste]
    FOREIGN KEY ([Fonction_Id])
    REFERENCES [dbo].[FonctionSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_FonctionPoste'
CREATE INDEX [IX_FK_FonctionPoste]
ON [dbo].[PosteSet]
    ([Fonction_Id]);
GO

-- Creating foreign key on [Employe_Id] in table 'PosteSet'
ALTER TABLE [dbo].[PosteSet]
ADD CONSTRAINT [FK_EmployePoste]
    FOREIGN KEY ([Employe_Id])
    REFERENCES [dbo].[EmployeSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EmployePoste'
CREATE INDEX [IX_FK_EmployePoste]
ON [dbo].[PosteSet]
    ([Employe_Id]);
GO

-- Creating foreign key on [Poste_Id] in table 'EmployeFormationSet'
ALTER TABLE [dbo].[EmployeFormationSet]
ADD CONSTRAINT [FK_PosteEmployeFormation]
    FOREIGN KEY ([Poste_Id])
    REFERENCES [dbo].[PosteSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PosteEmployeFormation'
CREATE INDEX [IX_FK_PosteEmployeFormation]
ON [dbo].[EmployeFormationSet]
    ([Poste_Id]);
GO

-- Creating foreign key on [Formation_Id] in table 'EmployeFormationSet'
ALTER TABLE [dbo].[EmployeFormationSet]
ADD CONSTRAINT [FK_FormationEmployeFormation]
    FOREIGN KEY ([Formation_Id])
    REFERENCES [dbo].[FormationSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_FormationEmployeFormation'
CREATE INDEX [IX_FK_FormationEmployeFormation]
ON [dbo].[EmployeFormationSet]
    ([Formation_Id]);
GO

-- Creating foreign key on [Support_Id] in table 'ContenuSet'
ALTER TABLE [dbo].[ContenuSet]
ADD CONSTRAINT [FK_SupportContenu]
    FOREIGN KEY ([Support_Id])
    REFERENCES [dbo].[SupportSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_SupportContenu'
CREATE INDEX [IX_FK_SupportContenu]
ON [dbo].[ContenuSet]
    ([Support_Id]);
GO

-- Creating foreign key on [Formation_Id] in table 'SupportSet'
ALTER TABLE [dbo].[SupportSet]
ADD CONSTRAINT [FK_FormationSupport]
    FOREIGN KEY ([Formation_Id])
    REFERENCES [dbo].[FormationSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_FormationSupport'
CREATE INDEX [IX_FK_FormationSupport]
ON [dbo].[SupportSet]
    ([Formation_Id]);
GO

-- Creating foreign key on [Formation_Id] in table 'QuizSet'
ALTER TABLE [dbo].[QuizSet]
ADD CONSTRAINT [FK_FormationQuiz]
    FOREIGN KEY ([Formation_Id])
    REFERENCES [dbo].[FormationSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_FormationQuiz'
CREATE INDEX [IX_FK_FormationQuiz]
ON [dbo].[QuizSet]
    ([Formation_Id]);
GO

-- Creating foreign key on [EmployeFormation_Id] in table 'EmployeQuizSet'
ALTER TABLE [dbo].[EmployeQuizSet]
ADD CONSTRAINT [FK_EmployeFormationEmployeQuiz]
    FOREIGN KEY ([EmployeFormation_Id])
    REFERENCES [dbo].[EmployeFormationSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EmployeFormationEmployeQuiz'
CREATE INDEX [IX_FK_EmployeFormationEmployeQuiz]
ON [dbo].[EmployeQuizSet]
    ([EmployeFormation_Id]);
GO

-- Creating foreign key on [Quiz_Id] in table 'EmployeQuizSet'
ALTER TABLE [dbo].[EmployeQuizSet]
ADD CONSTRAINT [FK_QuizEmployeQuiz]
    FOREIGN KEY ([Quiz_Id])
    REFERENCES [dbo].[QuizSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_QuizEmployeQuiz'
CREATE INDEX [IX_FK_QuizEmployeQuiz]
ON [dbo].[EmployeQuizSet]
    ([Quiz_Id]);
GO

-- Creating foreign key on [TypeQuestion_Id] in table 'QuestionSet'
ALTER TABLE [dbo].[QuestionSet]
ADD CONSTRAINT [FK_QuestionTypeQuestion]
    FOREIGN KEY ([TypeQuestion_Id])
    REFERENCES [dbo].[TypeQuestionSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_QuestionTypeQuestion'
CREATE INDEX [IX_FK_QuestionTypeQuestion]
ON [dbo].[QuestionSet]
    ([TypeQuestion_Id]);
GO

-- Creating foreign key on [Question_Id] in table 'OptionSet'
ALTER TABLE [dbo].[OptionSet]
ADD CONSTRAINT [FK_QuestionOption]
    FOREIGN KEY ([Question_Id])
    REFERENCES [dbo].[QuestionSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_QuestionOption'
CREATE INDEX [IX_FK_QuestionOption]
ON [dbo].[OptionSet]
    ([Question_Id]);
GO

-- Creating foreign key on [Quiz_Id] in table 'QuestionSet'
ALTER TABLE [dbo].[QuestionSet]
ADD CONSTRAINT [FK_QuizQuestion]
    FOREIGN KEY ([Quiz_Id])
    REFERENCES [dbo].[QuizSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_QuizQuestion'
CREATE INDEX [IX_FK_QuizQuestion]
ON [dbo].[QuestionSet]
    ([Quiz_Id]);
GO

-- Creating foreign key on [Question_Id] in table 'ReponseSet'
ALTER TABLE [dbo].[ReponseSet]
ADD CONSTRAINT [FK_QuestionReponse]
    FOREIGN KEY ([Question_Id])
    REFERENCES [dbo].[QuestionSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_QuestionReponse'
CREATE INDEX [IX_FK_QuestionReponse]
ON [dbo].[ReponseSet]
    ([Question_Id]);
GO

-- Creating foreign key on [Option_Id] in table 'ReponseSet'
ALTER TABLE [dbo].[ReponseSet]
ADD CONSTRAINT [FK_OptionReponse]
    FOREIGN KEY ([Option_Id])
    REFERENCES [dbo].[OptionSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_OptionReponse'
CREATE INDEX [IX_FK_OptionReponse]
ON [dbo].[ReponseSet]
    ([Option_Id]);
GO

-- Creating foreign key on [EmployeQuiz_Id] in table 'CompositionSet'
ALTER TABLE [dbo].[CompositionSet]
ADD CONSTRAINT [FK_EmployeQuizComposition]
    FOREIGN KEY ([EmployeQuiz_Id])
    REFERENCES [dbo].[EmployeQuizSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EmployeQuizComposition'
CREATE INDEX [IX_FK_EmployeQuizComposition]
ON [dbo].[CompositionSet]
    ([EmployeQuiz_Id]);
GO

-- Creating foreign key on [Composition_Id] in table 'ReponseSet'
ALTER TABLE [dbo].[ReponseSet]
ADD CONSTRAINT [FK_CompositionReponse]
    FOREIGN KEY ([Composition_Id])
    REFERENCES [dbo].[CompositionSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CompositionReponse'
CREATE INDEX [IX_FK_CompositionReponse]
ON [dbo].[ReponseSet]
    ([Composition_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------