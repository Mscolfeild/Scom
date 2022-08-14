<#

        Lists the groups that the server is a member of.
        Change : $Server 

#>

$Group = @(Get-SCOMGroup)

$Server = "Enter Server Full Name"

for($m=0;$m -lt $Group.Count; $m++)
{

   $gr=  $Group[$m].GetRelatedMonitoringObjects()

        for($i=0;$i -lt $gr.Count; $i++)
        {
 
          if($Server -eq $gr[$i] )
          {
                
                $Group[$m]
          }

    
   
        }


}
