-- DB : OperationsManagerDW
-- Returns the list of the alerts of the monitored event numbers. 
-- Change : EventDisplayNumber(x,y,..) 

SELECT evc.ComputerName,al.AlertName,al.AlertDescription,ev.DateTime,count(evc.ComputerName) as Total FROM Event.vEvent ev
inner join EventLoggingComputer evc on ev.LoggingComputerRowId = evc.EventLoggingComputerRowId
inner join Event.vEventRule er on ev.EventOriginId=er.EventOriginId
inner join Alert.vAlert al on er.ManagedEntityRowId=al.ManagedEntityRowId



where ev.EventDisplayNumber in (x,y,...)
group by evc.ComputerName, ev.EventNumber,ev.DateTime,al.AlertName,al.AlertDescription