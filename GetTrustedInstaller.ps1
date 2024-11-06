sc.exe start TrustedInstaller
Set-NtTokenPrivilege SeDebugPrivilege
$p = Get-NtProcess -Name TrustedInstaller.exe
$proc = New-Win32Process cmd.exe -CreationFlags NewConsole -ParentProcess $p[0]