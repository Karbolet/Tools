Function Get-ShareInfo {
    [CmdletBinding()]
        param(
            [Parameter(
                Mandatory=$True,
                Position=0,
                ValueFromPipeline=$True,
                ValueFromPipelineByPropertyName=$False,
                HelpMessage="Define the names of the share or shares you wish to discover the location of"
                )]  # End Parameter
            [Alias("Share","Name")]
            [String[]]$ShareName,

            [Parameter(
                Mandatory=$False,
                Position=1,
                ValueFromPipeline=$True,
                ValueFromPipelineByPropertyName=$True,
                HelpMessage="Define the FQDN, hostname, or IP address of the device you wish to check for network share names on"
                )]
            [Alias("Computer","cn")]
            [String[]]$ComputerName
        )

BEGIN
{

    $Obj = @()

    If ($Null -eq $ComputerName)
    {

        $ComputerName = $env:COMPUTERNAME

    }   # End If

}  # End BEGIN
PROCESS
{

    ForEach ($C in $ComputerName)
    {

        ForEach ($S in $ShareName)
        {


            $Result = Get-WmiObject -Class Win32_Share -Filter "Name LIKE '$S'" -ComputerName $C -ErrorAction SilentlyContinue -ErrorVariable Clear

            If ($Result)
            {
                Write-Verbose "Getting property values for $S"
                $Name = $Result.Name
                $Description = $Result.Description
                $InstallDate = ((Get-CimInstance -ClassName Win32_Share -Filter "Name LIKE '$S'" -ComputerName $C -ErrorAction SilentlyContinue -ErrorVariable Clear).CimInstanceProperties | Where-Object -Property Name -like InstallDate).Value
                $Path = $Result.Path
                $Status =  $Result.Status

                $Obj += New-Object -TypeName PSObject -Property @{ComputerName=$C; Name=$Name; Description=$Description; InstallDate=$InstallDate; Path=$Path; Status=$Status}

                Clear-Variable -Name Name,Description,InstallDate,Path,Status,Result

            }  # End If
            Else
            {

                Write-Output "[!] $C does not host a share called $S"

            } 

        }  

    }  

} 
END
{

        Write-Output $Obj

}  

}  
