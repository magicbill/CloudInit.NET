## Enable the powershell to run .net 4.0 by modifying the configuration
write-output "<configuration><startup useLegacyV2RuntimeActivationPolicy='true'><supportedRuntime version='v4.0.30319'/><supportedRuntime version='v2.0.50727'/></startup></configuration>" | out-file "$pshome\powershell.exe.config"

## Install the cloudinit service
powershell -command ". '$(pwd)\install-service.ps1'"