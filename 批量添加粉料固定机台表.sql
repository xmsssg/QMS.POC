
select * from BD_FixedMachine_Default
select * from BD_FixedMachine_HighRunner

select * from BD_MachineThird


--·ÛÁÏ¡¢Ñ¹»ú×é
--drop table BD_FixedMachine_Friction
create table BD_FixedMachine_Friction
(
	[Id] [bigint] PRIMARY KEY,
	Friction nvarchar(50),
	GroupNo nvarchar(200),
	[TenantId] [bigint] NULL,
	[CreateTime] [datetime] NULL,
	[UpdateTime] [datetime] NULL,
	[CreateUserId] [bigint] NULL,
	[UpdateUserId] [bigint] NULL,
	[IsDelete] [bit] NOT NULL,
)

insert into BD_FixedMachine_Friction(id,Friction,GroupNo,TenantId,CreateTime,CreateUserId,IsDelete)
select row_number() over(order by Friction) Friction
,Friction,'', 13991392916037,GETDATE(),13991392935365,0
from(
select distinct Friction from DataX_Main_Traveler_Pressing
)s

