-- DB : OperationsManagerDW
--It collects and lists the number of events that occurred between certain dates by server.
--Change EventDisplayNumber
SELECT evc.ComputerName,count(evc.ComputerName) as Total FROM Event.vEvent ev
inner join EventLoggingComputer evc on ev.LoggingComputerRowId = evc.EventLoggingComputerRowId

where ev.EventDisplayNumber in (x,y,...) and ev.DateTime >='2022-06-06 00:00:00' and ev.DateTime <='2022-06-08 23:59:00'
group by evc.ComputerName, ev.EventNumber
