# This script installs and enable all the necessary items for installing and using java script I am Rishabh Singh presenting you my creation.Thank you for using it(Smily Emoji).
#     > powershell -nop -c " iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/Paneerdev/java-xampp/main/scriptimp.ps1'))"

Write-Host "This is Rishabh Singh Script you are running so thank him for making your life a bit easier"
$tweaks = @(
    
	"RequireAdmin"
    "InstallRishabhProgs"
    "WriteHost"
    "selectoption"
    "InstallNotepadplusplus"
    "InstallJDK"
    "InstallJRE"
    "InstallVSCODE"
    "Installvirtualmachine"
    "DownloadXampp"
    
    function WriteHost{
        do{
       
        Write-Host "Select a program you want to install"
        Write-Host "1) XAMPP"
        Write-Host "2) Notepad++"
        Write-Host "3) JDK and JRE"
        Write-Host "4) Virtual Machine"
        Write-Host "5) VSCODE"
        Write-Host "6) Exit Program"
        $choice=Read-Host "Chose a number for program to install"
        switch($choice)
        {
            1{DownloadXampp}
            2{InstallNotepadplusplus}
            3{InstallJDK ; InstallJRE}
            4{Installvirtualmachine}
            5{InstallVSCODE}
            5{exit}
        }
    }until ($choice -eq 5)
    }

    Function DownloadXampp{
        choco install xamppinstallation --version 5.60 -y
       
    }
    
    Function InstallRishabhProgs {
        Write-Output "Installing Chocolatey"
        Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
        choco install chocolatey-core.extension -y /quiet
    }
    
    Function RequireAdmin {
        If (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]"Administrator")) {
            Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`" $PSCommandArgs" -WorkingDirectory $pwd -Verb RunAs
            Exit
        }
    }
    
)


Function InstallNotepadplusplus {
    
	choco install notepadplusplus -y
    }

Function InstallJDK {

	choco install jdk8 -y
    }

Function InstallJRE {
    
	choco install jre8 -y
    
}
Function InstallVSCODE{
    choco install vscode -y
}
Function Installvirtualmachine{
 
    choco install virtualbox -y
    
}




# Call the desired tweak functions
$tweaks | ForEach { Invoke-Expression $_ }# This script installs and enable all the necessary items for installing and using java script I am Rishabh Singh presenting you my creation.Thank you for using it(Smily Emoji).
#     > powershell -nop -c " iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/Paneerdev/java-xampp/main/scriptimp.ps1'))"

Write-Host "This is Rishabh Singh Script you are running so thank him for making your life a bit easier"
$tweaks = @(
    
	"RequireAdmin"
    "InstallRishabhProgs"
    "WriteHost"
    "selectoption"
    "InstallNotepadplusplus"
    "InstallJDK"
    "InstallJRE"
    "InstallVSCODE"
    "Installvirtualmachine"
    "DownloadXampp"
    
    function WriteHost{
        do{
       
        Write-Host "Select a program you want to install"
        Write-Host "1) XAMPP"
        Write-Host "2) Notepad++"
        Write-Host "3) JDK and JRE"
        Write-Host "4) Virtual Machine"
        Write-Host "5) VSCODE"
        Write-Host "6) Exit Program"
        $choice=Read-Host "Chose a number for program to install"
        switch($choice)
        {
            1{DownloadXampp}
            2{InstallNotepadplusplus}
            3{InstallJDK ; InstallJRE}
            4{Installvirtualmachine}
            5{InstallVSCODE}
            5{exit}
        }
    }until ($choice -eq 5)
    }

    Function DownloadXampp{
        choco install xamppinstallation --version 5.60 -y
       
    }
    
    Function InstallRishabhProgs {
        Write-Output "Installing Chocolatey"
        Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
        choco install chocolatey-core.extension -y /quiet
    }
    
    Function RequireAdmin {
        If (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]"Administrator")) {
            Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`" $PSCommandArgs" -WorkingDirectory $pwd -Verb RunAs
            Exit
        }
    }
    
)


Function InstallNotepadplusplus {
    
	choco install notepadplusplus -y
    }

Function InstallJDK {

	choco install jdk8 -y
    }

Function InstallJRE {
    
	choco install jre8 -y
    
}
Function InstallVSCODE{
    choco install vscode -y
}
Function Installvirtualmachine{
 
    choco install virtualbox -y
    
}




# Call the desired tweak functions
$tweaks | ForEach { Invoke-Expression $_ }
