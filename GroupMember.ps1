
<#

    This script lists group members and write file.
    
    Change : GroupName and Path 
#>

Import-Module -Name OperationsManager

$Group = Get-SCOMGroup |  where {$_.DisplayName -eq "GroupName"}

$Path = XX/x.txt

$Members = $Group.GetRelatedMonitoringObjects()

$Members | Sort DisplayName | FT DisplayName

$DisplayName = $Members |select DisplayName |Export-Csv $Path -NoTypeInformation


