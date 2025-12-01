create table DataX_Main_PNS_FA07_List
(
	Id bigint primary key,
	PN_S nvarchar(100) NOT NULL,
	FA_Line nvarchar(50) NOT NULL,
	[TenantId] [bigint] NULL,
	[CreateTime] [datetime] NULL,
	[UpdateTime] [datetime] NULL,
	[CreateUserId] [bigint] NULL,
	[UpdateUserId] [bigint] NULL,
	[IsDelete] [bit] NOT NULL,
)

select * from Main_PNS_FA07_List

--drop table DataX_AppProcess
create table DataX_AppProcess
(
	Id bigint primary key,
	DataXId nvarchar(36) NOT NULL,
	Dril int NOT NULL,
	Glue int NOT NULL,
	Pn nvarchar(50) NULL,
	[TenantId] [bigint] NULL,
	[CreateTime] [datetime] NULL,
	[UpdateTime] [datetime] NULL,
	[CreateUserId] [bigint] NULL,
	[UpdateUserId] [bigint] NULL,
	[IsDelete] [bit] NOT NULL,
)


CREATE TABLE DataX_Main_Traveler_Pressing(
	Id bigint primary key,
	DataXId [nvarchar](256) NULL,
	[GP] [nvarchar](256) NULL,
	[BD] [nvarchar](256) NULL,
	[Friction] [nvarchar](256) NULL,
	[Importance] [nvarchar](256) NULL,
	[FrictionWeight] [nvarchar](256) NULL,
	[Underlayer] [nvarchar](256) NULL,
	[UnderlayerWeight] [nvarchar](256) NULL,
	[Chamfer] [nvarchar](256) NULL,
	[Slot] [nvarchar](256) NULL,
	[ToolingGroup_1] [nvarchar](256) NULL,
	[ToolingCavity_1] [int] NULL,
	[ToolingGroup_2] [nvarchar](256) NULL,
	[ToolingCavity_2] [int] NULL,
	[SettingTempTop] [int] NULL,
	[SettingTempMold] [int] NULL,
	[SettingTempLower] [int] NULL,
	[ActTempTop] [varchar](64) NULL,
	[ActTempLower] [varchar](464) NULL,
	[ActTempMold] [varchar](464) NULL,
	[DropTime] [float] NULL,
	[PauseTime] [int] NULL,
	[PressTime1] [int] NULL,
	[PressTime2] [int] NULL,
	[PressTime3] [int] NULL,
	[PressTime4] [int] NULL,
	[CuringTime] [int] NULL,
	[Pressure1] [nvarchar](256) NULL,
	[Pressure2] [nvarchar](256) NULL,
	[OverallThickness] [nvarchar](256) NULL,
	[PadArea] [nvarchar](256) NULL,
	[CuringProgram] [nvarchar](256) NULL,
	[CuringProgramNo] [nvarchar](256) NULL,
	[Version] [nvarchar](256) NULL,
	[Status] [nvarchar](256) NULL,
	[Thickness] [nvarchar](256) NULL,
	[TenantId] [bigint] NULL,
	[CreateTime] [datetime] NULL,
	[UpdateTime] [datetime] NULL,
	[CreateUserId] [bigint] NULL,
	[UpdateUserId] [bigint] NULL,
	[IsDelete] [bit] NOT NULL,
) 


alter table BD_Part add PN_S nvarchar(50)
alter table BD_Part add LastThree nvarchar(50)


select * from FD_WeeklyPlanResult order by id
select * from FD_WeeklyPlanResult where Sort<0 order by Sort

update FD_WeeklyPlanResult set Sort=sort-20 where Sort<0

insert into FD_WeeklyPlanResult(id,sort,Finishcode,TenantId,CreateTime,CreateUserId,IsDelete)
values(2,-26,'coating',13991392916037,GETDATE(),13991392935365,0)
,(3,-25,'cooldrive',13991392916037,GETDATE(),13991392935365,0)
,(4,-24,'FA07',13991392916037,GETDATE(),13991392935365,0)
,(5,-23,'Dril',13991392916037,GETDATE(),13991392935365,0)
,(6,-22,'Glue',13991392916037,GETDATE(),13991392935365,0)

,(7,-21,'LM20',13991392916037,GETDATE(),13991392935365,0)
,(8,-20,'LM20%',13991392916037,GETDATE(),13991392935365,0)
,(9,-19,'MA521',13991392916037,GETDATE(),13991392935365,0)
,(10,-18,'MA521%',13991392916037,GETDATE(),13991392935365,0)
,(11,-17,'LM14',13991392916037,GETDATE(),13991392935365,0)
,(12,-16,'LM14%',13991392916037,GETDATE(),13991392935365,0)
,(13,-15,'C620',13991392916037,GETDATE(),13991392935365,0)
,(14,-14,'C620%',13991392916037,GETDATE(),13991392935365,0)
,(15,-13,'MA433',13991392916037,GETDATE(),13991392935365,0)
,(16,-12,'MA433%',13991392916037,GETDATE(),13991392935365,0)
,(17,-11,'LM17',13991392916037,GETDATE(),13991392935365,0)
,(18,-10,'LM17%',13991392916037,GETDATE(),13991392935365,0)
,(19,-9,'MA448',13991392916037,GETDATE(),13991392935365,0)
,(20,-8,'MA448%',13991392916037,GETDATE(),13991392935365,0)
,(21,-7,'LM14D',13991392916037,GETDATE(),13991392935365,0)
,(22,-6,'LM14D%',13991392916037,GETDATE(),13991392935365,0)
,(23,-5,'Friction Total',13991392916037,GETDATE(),13991392935365,0)

delete FD_WeeklyPlanResult where id>=2 and id<=23
