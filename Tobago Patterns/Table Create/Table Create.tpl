-- ------------------------------------------------------------------------------
-- <auto-generated>
--     This code was generated by a tool.
--     Model           : <Tobago.ProjectName>
--     Template        : Table Create.tpl
--     Runtime Version : $Version$
--     Generation date : <Tobago.CurrentDate>
--
--     Changes to this file may cause incorrect behavior and may be lost if
--     the code is regenerated.
-- </auto-generated>
-- ------------------------------------------------------------------------------
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[$Class.Name.Pascal$]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE [$Class.Name.Pascal$]
GO

CREATE TABLE [$Class.Name.Pascal$] (
	[Id] [uniqueidentifier] NOT NULL,
	
<Tobago.Loop(Class.NavigableAssociations, Associations)>
<Tobago.Loop(Class.Attributes, Attributes)>
	[Timestamp] [timestamp] NOT NULL
)
GO

ALTER TABLE [$Class.Name.Pascal$] ADD 
CONSTRAINT [DF_$Class.Name.Pascal$_Id] DEFAULT (newid()) FOR [Id],
CONSTRAINT [PK_$Class.Name.Pascal$] PRIMARY KEY  NONCLUSTERED 
(
	[ID]
)  
GO

<Tobago.Loop(Class.NavigableAssociations, Relations)>