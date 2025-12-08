alter proc ChangeEKanbanResult
(
	@DataString xml
)
as
begin
	SELECT 
		tab.col.value('Id[1]','bigint') Id,
		tab.col.value('WorkOrderId[1]','bigint') WorkOrderId,
		tab.col.value('StartTime[1]','datetime') StartTime,
		tab.col.value('StopTime[1]','datetime') StopTime,
		tab.col.value('ProductionSpan[1]','decimal(18,6)') ProductionSpan
		into #temp
		FROM @DataString.nodes('//FD_ScheduleWorkOrder') as tab(col)

	update ek set ek.start_time=t.StartTime,ek.plan_stop_time=t.StopTime
		from [OPC].dbo.[W_DAY_PRODUCT_PLAN]ek
		inner join #temp t on ek.work_order_id=CONVERT(nvarchar(50),t.WorkOrderId)

end
