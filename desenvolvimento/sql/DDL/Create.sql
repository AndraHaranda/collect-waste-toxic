USE BD037083
CREATE TABLE [Pessoa]
(
 [Nome]          nvarchar(50) NOT NULL ,
 [CodTipoAcesso] int NOT NULL ,
 [Endereco]      nvarchar(50) NOT NULL ,
 [DtNasc]        datetime NOT NULL ,
 [Profissao]     nvarchar(50) NOT NULL ,
 [TipoResiduo]   nvarchar(50) NOT NULL ,
 [CodPessoa]     int NOT NULL ,



);
GO

----------------#
CREATE TABLE [TipoAcesso]
(
 [Coletor]       tinyint NOT NULL ,
 [Administrador] tinyint NOT NULL ,
 [UsuarioComum]  tinyint NOT NULL ,
 [CodTipoAcesso] int NOT NULL ,


 CONSTRAINT [PK_14] PRIMARY KEY CLUSTERED ([CodTipoAcesso] ASC)
);
GO

----------------#
CREATE TABLE [PontoColeta]
(
 [CodPonto]       int NOT NULL ,
 [Rua]            nvarchar(50) NOT NULL ,
 [CodTipoAcesso]  int NOT NULL ,
 [Bairro]         nvarchar(50) NOT NULL ,
 [Cidade]         nvarchar(50) NOT NULL ,
 [Num]            int NOT NULL ,
 [Complemento]    nvarchar(50) NOT NULL ,
 [Telefone]       int NOT NULL ,
 [DescricaoLocal] nvarchar(50) NOT NULL ,
 [Responsavel]    nvarchar(50) NOT NULL ,
 [Localidade]     nvarchar(50) NOT NULL ,


 CONSTRAINT [PK_29] PRIMARY KEY CLUSTERED ([CodPonto] ASC),
 CONSTRAINT [FK_37] FOREIGN KEY ([CodTipoAcesso])  REFERENCES [TipoAcesso]([CodTipoAcesso])
);
GO
