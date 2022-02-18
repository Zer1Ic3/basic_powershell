FROM mcr.microsoft.com/windows/servercore:10.0.17763.1158-amd64

EXPOSE 5985

RUN net user Shelly Password1 /ADD
RUN net user Mike IfYouAreNot1 /ADD
RUN winrm set winrm/config/client @{TrustedHosts="*"}

RUN net user Administrator IfYouAreNot1

ENTRYPOINT ["powershell.exe"]
