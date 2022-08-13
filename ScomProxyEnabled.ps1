<#

Description:

        Scom automatic agent proxy and remove alert operation console.

        
Creating a task scheduler on the server, it automatically deletes Agent proxy not enabled warnings.


#>



Import-Module -Name OperationsManager

get-SCOMagent | where {$_.ProxyingEnabled -match "False"} | Enable-SCOMAgentProxy

sleep 120 


Get-SCOMAlert | Where-Object{($_.Name -eq "Agent proxy not enabled" -and ($_.ResolutionState -ne 255))} | Resolve-SCOMAlert


