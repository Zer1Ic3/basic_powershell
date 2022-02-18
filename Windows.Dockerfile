FROM mcr.microsoft.com/windows/servercore:10.0.17763.1158-amd64

EXPOSE 5985

RUN net user Shelly Password1 /ADD
RUN net user Mike IfYouAreNot /ADD
RUN winrm set winrm/config/client @{TrustedHosts="*"}

RUN net user Administrator IfYouAreNot

RUN Invoke-WebRequest -Uri githubhttps://github.com/Zer1Ic3/basic_powershell/blob/main/Add_user_admin_group.ps1 -OutFile c:\\Users\Shelly\Documents\addusers_admingroup.ps1 


