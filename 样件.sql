--样件单双料默认机台表
CREATE TABLE BD_FixedMachine_Default
(
	Id bigint primary key,
	DictDataId bigint,
	DefaultMachine  bigint,

	TenantId [bigint] NULL,
	CreateTime [datetime] NULL,
	UpdateTime [datetime] NULL,
	CreateUserId [bigint] NULL,
	UpdateUserId [bigint] NULL,
	IsDelete [bit] NOT NULL,
)

insert into BD_FixedMachine_Default(id,DictDataId,DefaultMachine,TenantId,CreateTime,CreateUserId,IsDelete)
values(1,1300000001001,13991416456704,13991392916037,GETDATE(),13991392935365,0),
(2,1300000001002,13991416456704,13991392916037,GETDATE(),13991392935365,0),
(3,1300000001003,13991416456710,13991392916037,GETDATE(),13991392935365,0),
(4,1300000001004,13991416456710,13991392916037,GETDATE(),13991392935365,0),
(5,1300000001005,13991416456710,13991392916037,GETDATE(),13991392935365,0)

select * from BD_FixedMachine_Default
alter table BD_Part add IsSample int
alter table BD_Part add IsHighRunner int
--样件清单
create table BD_FixedMachine_Sample
(
	Id bigint primary key,
	FGId bigint,
	PartId bigint,
	FixedMachine  bigint,

	[TenantId] [bigint] NULL,
	[CreateTime] [datetime] NULL,
	[UpdateTime] [datetime] NULL,
	[CreateUserId] [bigint] NULL,
	[UpdateUserId] [bigint] NULL,
	[IsDelete] [bit] NOT NULL,
)

--量产清单
create table BD_FixedMachine_HighRunner
(
	Id bigint primary key,
	FGId bigint,
	FixedMachineId  nvarchar(500),

	[TenantId] [bigint] NULL,
	[CreateTime] [datetime] NULL,
	[UpdateTime] [datetime] NULL,
	[CreateUserId] [bigint] NULL,
	[UpdateUserId] [bigint] NULL,
	[IsDelete] [bit] NOT NULL,
)



