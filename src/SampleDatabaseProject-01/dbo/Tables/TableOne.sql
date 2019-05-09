CREATE TABLE [dbo].[TableOne]
(
    [Id] INT NOT NULL PRIMARY KEY IDENTITY,
    [ColOne] NCHAR(10) NULL,
    [ColTwo] NVARCHAR(50) NULL,
    [ColThree] DATE NOT NULL DEFAULT GETUTCDATE()
);

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Test DacPac Extended props',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'TableOne',
    @level2type = NULL,
    @level2name = NULL
GO
EXEC sp_addextendedproperty @name = N'TableType',
    @value = N'Reference',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'TableOne',
    @level2type = NULL,
    @level2name = NULL
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Col One Desc',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'TableOne',
    @level2type = N'COLUMN',
    @level2name = N'ColOne'
GO 
	EXEC sp_addextendedproperty @name = N'ScdType',
    @value = N'HV',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'TableOne',
    @level2type = N'COLUMN',
    @level2name = N'ColOne'
Go