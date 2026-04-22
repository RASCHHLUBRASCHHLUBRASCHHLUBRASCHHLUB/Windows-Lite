color a
title OTIMIZADOR By CLEITI6966HUBS
sc stop SysMain
sc config SysMain start=disabled
sc stop Fax
sc config Fax start=disabled
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" /v GlobalUserDisabled /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control" /v WaitToKillServiceTimeout /t REG_SZ /d 2000 /f
sc stop MapsBroker
sc config MapsBroker start=disabled
sc stop Spooler
sc config Spooler start=disabled
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v Win32PrioritySeparation /t REG_DWORD /d 26 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SystemPaneSuggestionsEnabled /t REG_DWORD /d 0 /f
net stop wuauserv
del /s /q C:\Windows\SoftwareDistribution\Download\*
net start wuauserv
sc stop WSearch
sc config WSearch start=disabled
sc stop SysMain
sc config SysMain start=disabled
sc stop CompatTelRunner
sc config CompatTelRunner start=disabled
sc stop w32time
sc config w32time start=disabled
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v AllowCortana /t REG_DWORD /d 0 /f
reg add "HKCU\Control Panel\Desktop" /v MenuShowDelay /t REG_SZ /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SystemPaneSuggestionsEnabled /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\PushNotifications" /v ToastEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v Win32PrioritySeparation /t REG_DWORD /d 38 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v TcpAckFrequency /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v TCPNoDelay /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v LargeSystemCache /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v AlwaysUnloadDLL /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Psched" /v NonBestEffortLimit /t REG_DWORD /d 0 /f
reg add "HKCU\Control Panel\Desktop" /v WaitToKillAppTimeout /t REG_SZ /d 2000 /f
reg add "HKCU\Control Panel\Desktop" /v HungAppTimeout /t REG_SZ /d 2000 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Serialize" /v StartupDelayInMSec /t REG_DWORD /d 0 /f
powercfg -setactive SCHEME_MIN
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Psched" /v NonBestEffortLimit /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\NetworkQoS" /v DoNotLimitBandwidth /t REG_DWORD /d 1 /f
netsh int tcp set global autotuninglevel=normal
netsh int tcp set global rss=enabled
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" /v DODownloadMode /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" /v MaxBandwidth /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet" /v EnableActiveProbing /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v EnableTransparency /t REG_DWORD /d 0 /f
reg add "HKCU\Control Panel\Desktop\WindowMetrics" /v MinAnimate /t REG_SZ /d 0 /f
reg add "HKCU\Control Panel\Desktop" /v UserPreferencesMask /t REG_BINARY /d 9012000000000000 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v Start_TrackDocs /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v Start_TrackProgs /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v StartMenuInit /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v Start_TrackDocs /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v Start_TrackProgs /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v StartMenuInit /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\PushNotifications" /v NOC_GLOBAL_SETTING /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Notifications\Settings" /v NOC_GLOBAL_SETTING /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v DisablePagingExecutive /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v ClearPageFileAtShutdown /t REG_DWORD /d 0 /f
netsh int tcp set global congestionprovider=ctcp
netsh int tcp set global ecncapability=enabled
netsh int tcp set global timestamps=disabled
reg add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v NtfsDisableLastAccessUpdate /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v NtfsDisable8dot3NameCreation /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v NtfsMemoryUsage /t REG_DWORD /d 2 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v Win32PrioritySeparation /t REG_DWORD /d 38 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v ForegroundBoost /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" /v AnimateMinMax /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" /v ComboBoxAnimation /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" /v MenuAnimation /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" /v TaskbarAnimations /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v SecondLevelDataCache /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v IoPageLockLimit /t REG_DWORD /d 8192 /f
netsh int tcp set global congestionprovider=ctcp
netsh int tcp set global rss=enabled
netsh int tcp set global chimney=enabled
netsh int tcp set global autotuninglevel=highlyrestricted
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection" /v AllowTelemetry /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v AllowTelemetry /t REG_DWORD /d 0 /f
net stop WSearch
sc config WSearch start=disabled
sc stop WinDefend
sc config WinDefend start=disabled
sc stop dmwappushservice
sc config dmwappushservice start=disabled
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v AllowTelemetry /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /v Enabled /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-338389Enabled /t REG_DWORD /d 0 /f
schtasks /Change /TN "\Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" /Disable
schtasks /Change /TN "\Microsoft\Windows\Application Experience\ProgramDataUpdater" /Disable
schtasks /Change /TN "\Microsoft\Windows\Customer Experience Improvement Program\Consolidator" /Disable
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors" /v DisableLocation /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /v Enabled /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Siuf\Rules" /v NumberOfSIUFInPeriod /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SystemPaneSuggestionsEnabled /t REG_DWORD /d 0 /f
powercfg -setactive SCHEME_MIN
powercfg -change -standby-timeout-ac 0
powercfg -change -hibernate-timeout-ac 0
ipconfig /flushdns
del /q /f /s %temp%\*
del /q /f /s C:\Windows\Temp\*
net stop wuauserv
del /q /f /s C:\Windows\SoftwareDistribution\Download\*
net start wuauserv
reg add "HKCU\Control Panel\Mouse" /v MouseSpeed /t REG_SZ /d 0 /f
bcdedit /set disabledynamictick yes
reg add HKCU\System\GameConfigStore /v GameDVR_Enabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v SystemResponsiveness /t REG_DWORD /d 0 /f´
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "GPU Priority" /t REG_DWORD /d 8 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Priority" /t REG_DWORD /d 6 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Scheduling Category" /t REG_SZ /d "High" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v TCPNoDelay /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v TcpAckFrequency /t REG_DWORD /d 1 /f
reg add "HKCU\Control Panel\Desktop\WindowMetrics" /v MinAnimate /t REG_SZ /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" /v VisualFXSetting /t REG_DWORD /d 2 /f

:: ===============================
:: ===== CPU / PROCESSADOR FPS =====
:: ===============================

:: Força CPU em 100% sem throttling
powercfg -setacvalueindex SCHEME_MIN SUB_PROCESSOR PROCTHROTTLEMAX 100
powercfg -setacvalueindex SCHEME_MIN SUB_PROCESSOR PROCTHROTTLEMIN 100
powercfg -setactive SCHEME_MIN

:: Desativa C-States (reduz latência do processador)
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Processor" /v Capabilities /t REG_DWORD /d 0x0007e066 /f

:: Timer de alta resolução
bcdedit /set disabledynamictick yes
bcdedit /set useplatformtick yes
bcdedit /set tscsyncpolicy enhanced

:: Prioridade máxima pra jogos
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v SystemResponsiveness /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v NetworkThrottlingIndex /t REG_DWORD /d 4294967295 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "GPU Priority" /t REG_DWORD /d 8 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Priority" /t REG_DWORD /d 6 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Scheduling Category" /t REG_SZ /d "High" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "SFIO Priority" /t REG_SZ /d "High" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Background Only" /t REG_SZ /d "False" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Clock Rate" /t REG_DWORD /d 10000 /f

:: Boost de foreground (jogo em foco recebe mais CPU)
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v Win32PrioritySeparation /t REG_DWORD /d 38 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v ForegroundBoost /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v ForegroundQuantum /t REG_DWORD /d 2 /f

:: Desativa mitigações de CPU (mais perf - só usar em PC dedicado a jogos)
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v FeatureSettings /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v FeatureSettingsOverride /t REG_DWORD /d 3 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v FeatureSettingsOverrideMask /t REG_DWORD /d 3 /f

ipconfig /flushdns

:: ===============================
:: ===== CPU EXTRA =====
:: ===============================

:: Desativa CPU parking (todos os núcleos sempre ativos)
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v ValueMax /t REG_DWORD /d 100 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v ValueMin /t REG_DWORD /d 100 /f

:: Desativa CPU idle (processador nunca dorme)
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\5d76a2ca-e8c0-402f-a133-2158492d58ad" /v ValueMax /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\5d76a2ca-e8c0-402f-a133-2158492d58ad" /v ValueMin /t REG_DWORD /d 0 /f

:: Frequência mínima do processador em 100%
powercfg -setacvalueindex SCHEME_MIN SUB_PROCESSOR PROCTHROTTLEMIN 100
powercfg -setacvalueindex SCHEME_MIN 54533251-82be-4824-96c1-47b60b740d00 893dee8e-2bef-41e0-89c6-b55d0929964c 0

:: Desativa Turbo Boost variável (clock fixo sem flutuação)
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\be337238-0d82-4146-a960-4f3749d470c7" /v ValueMax /t REG_DWORD /d 0 /f

:: Heterogeneous policy (garante que jogos usem P-cores em CPUs híbridas)
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\93b8b6dc-0698-4d1c-9ee4-0644e900c85d" /v ValueMax /t REG_DWORD /d 4 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\93b8b6dc-0698-4d1c-9ee4-0644e900c85d" /v ValueMin /t REG_DWORD /d 4 /f

:: Latência de interrupção de CPU
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v CoalescingTimerInterval /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v ExceptionChainValidation /t REG_DWORD /d 0 /f

:: Desativa HDCP (reduz overhead de DRM na GPU/CPU)
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v RMHdcpKeyglobZero /t REG_DWORD /d 1 /f

:: IRQ priority para jogos
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v IRQ8Priority /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v IRQ16Priority /t REG_DWORD /d 2 /f

:: Prioridade de QoS para jogos
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v DisableUserTOSSetting /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\QoS" /v "Do not use NLA" /t REG_SZ /d 1 /f

:: ===============================
:: ===== CPU EXTRA 2 =====
:: ===============================

:: Desativa spectre/meltdown mitigations completamente
bcdedit /set isolatedcontext no
bcdedit /set allowedinmemorysettings 0x0
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v EnableCfg /t REG_DWORD /d 0 /f

:: Desativa hyperthreading via bcdedit (testar - em alguns jogos melhora FPS)
:: bcdedit /set numproc 1  <- descomente apenas se quiser testar

:: Scheduler de CPU mais agressivo
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v DpcWatchdogPeriod /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v DisableExceptionChainValidation /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v KernelSEHOPEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v MitigationOptions /t REG_QWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v MitigationAuditOptions /t REG_QWORD /d 0 /f

:: Desativa watchdog de DPC (evita throttling por pico de CPU)
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v DpcWatchdogProfileOffset /t REG_DWORD /d 0 /f

:: Aumenta quantum de thread pra jogos
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v Win32PrioritySeparation /t REG_DWORD /d 0x26 /f

:: Desativa power throttling de processos
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerThrottling" /v PowerThrottlingOff /t REG_DWORD /d 1 /f

:: Desativa energy estimation (overhead desnecessário)
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v EnergyEstimationEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v EventProcessorEnabled /t REG_DWORD /d 0 /f

:: Latência de DPC mais baixa
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v ThreadDpcEnable /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v SerializeTimerExpiration /t REG_DWORD /d 0 /f

:: Desativa CFG (Control Flow Guard) - ganho de IPC
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v EnableCfg /t REG_DWORD /d 0 /f

:: Desativa ASLR para ganho de performance
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v MoveImages /t REG_DWORD /d 0 /f

:: Fixa MTU pra evitar fragmentação de pacote
netsh int ipv4 set subinterface "Ethernet" mtu=1500 store=persistent

:: Prioridade de pacotes UDP (usados em jogos online)
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v FastSendDatagramThreshold /t REG_DWORD /d 1024 /f

:: Desativa NetBIOS (protocolo legado que gera overhead)
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NetBT\Parameters" /v EnableLMHOSTS /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NetBT\Parameters" /v NodeType /t REG_DWORD /d 2 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NetBT\Parameters" /v TransportBindName /t REG_SZ /d "" /f

:: Desativa LMHOSTS lookup
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NetBT\Parameters" /v EnableLMHOSTS /t REG_DWORD /d 0 /f

:: WinSock otimizado
netsh winsock reset
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WinSock2\Parameters" /v MaxSockAddrLength /t REG_DWORD /d 16 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WinSock2\Parameters" /v MinSockAddrLength /t REG_DWORD /d 16 /f

:: Desativa WINS (resolucao de nome legada)
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v UseDomainNameDevolution /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v SearchList /t REG_SZ /d "" /f

:: ===============================
:: ===== CPU EXTRA 3 =====
:: ===============================

:: Desativa idle do processador completamente
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\68f262a7-f621-4069-b9a5-4874169be23f" /v ValueMax /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\68f262a7-f621-4069-b9a5-4874169be23f" /v ValueMin /t REG_DWORD /d 0 /f

:: Desativa demote e promote de frequencia da CPU
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\12a0ab44-fe28-4fa9-b3bd-4b64f44960a6" /v ValueMax /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\12a0ab44-fe28-4fa9-b3bd-4b64f44960a6" /v ValueMin /t REG_DWORD /d 0 /f

:: Aumenta responsividade de interrupt affinity
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v MaxDynamicTickDuration /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v MaximumSharedReadyQueueSize /t REG_DWORD /d 128 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v MinimumStallScatterGatherThreshold /t REG_DWORD /d 16 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v UnplugPowerDownTimeout /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v MaximumDpcQueueDepth /t REG_DWORD /d 1 /f

:: Desativa lazy writer de CPU cache
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v DontVerifyRandomDrivers /t REG_DWORD /d 1 /f

:: Reduz resolucao do timer do sistema pra 0.5ms
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe\PerfOptions" /v CpuPriorityClass /t REG_DWORD /d 4 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe\PerfOptions" /v IoPriority /t REG_DWORD /d 3 /f

:: Affinidade de interrupção de GPU pro nucleo correto
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v TdrDelay /t REG_DWORD /d 60 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v TdrDdiDelay /t REG_DWORD /d 60 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v TdrLevel /t REG_DWORD /d 0 /f

:: Prioridade de I/O do sistema
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\I/O System" /v CountOperations /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\I/O System" /v CombineReadSize /t REG_DWORD /d 0x10000 /f

:: Desativa superfetch e prefetch completamente via registro
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v EnablePrefetcher /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v EnableSuperfetch /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v EnableBootTrace /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v SfTracingEnabled /t REG_DWORD /d 0 /f

:: Desativa crash dump (libera recursos de sistema)
reg add "HKLM\SYSTEM\CurrentControlSet\Control\CrashControl" /v CrashDumpEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\CrashControl" /v LogEvent /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\CrashControl" /v SendAlert /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\CrashControl" /v AutoReboot /t REG_DWORD /d 1 /f

:: Desativa LLMNR (Link-Local Multicast Name Resolution)
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\DNSClient" /v EnableMulticast /t REG_DWORD /d 0 /f

:: Desativa smart multi-homed name resolution
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\DNSClient" /v DisableSmartNameResolution /t REG_DWORD /d 1 /f

:: Otimiza DNS cache local
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters" /v MaxCacheSize /t REG_DWORD /d 4096 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters" /v MaxNegativeCacheTtl /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters" /v NegativeCacheTime /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters" /v NetFailureCacheTime /t REG_DWORD /d 0 /f

:: Desativa DNSAPI negative caching
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters" /v MaxNegativeSOACacheTtl /t REG_DWORD /d 0 /f

:: ===============================
:: ===== CPU INTEL FPS EXTRA 4 =====
:: ===============================

:: Desativa Intel Speed Step (frequencia fixa sem variacao)
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\be337238-0d82-4146-a960-4f3749d470c7" /v ValueMax /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\be337238-0d82-4146-a960-4f3749d470c7" /v ValueMin /t REG_DWORD /d 0 /f

:: Desativa Intel Speed Shift (controle de frequencia pelo SO)
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\fc3a1def-7d32-4b15-8a5a-6a5c720a6a8c" /v ValueMax /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\fc3a1def-7d32-4b15-8a5a-6a5c720a6a8c" /v ValueMin /t REG_DWORD /d 0 /f

:: Desativa Intel Collaborative Power Control
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\7b224883-b3cc-4d79-819f-8374152cbe7c" /v ValueMax /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\7b224883-b3cc-4d79-819f-8374152cbe7c" /v ValueMin /t REG_DWORD /d 0 /f

:: Desativa Intel HWP (Hardware P-State) via registro
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\42b08db3-0000-0000-0000-000000000000" /v ValueMax /t REG_DWORD /d 0 /f

:: Fixa P-State maximo no processador Intel
powercfg -setacvalueindex SCHEME_MIN SUB_PROCESSOR PERFBOOSTMODE 2
powercfg -setacvalueindex SCHEME_MIN SUB_PROCESSOR PERFBOOSTPOL 100
powercfg -setacvalueindex SCHEME_MIN SUB_PROCESSOR PERFINCTHRESHOLD 10
powercfg -setacvalueindex SCHEME_MIN SUB_PROCESSOR PERFDECTHRESHOLD 8
powercfg -setacvalueindex SCHEME_MIN SUB_PROCESSOR PERFINCTIME 1
powercfg -setacvalueindex SCHEME_MIN SUB_PROCESSOR PERFDECTIME 1

:: Desativa Intel Turbo Boost Power Limit (sem throttle termico via SO)
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\45bcc044-d885-43e2-8605-ee0ec6e96b59" /v ValueMax /t REG_DWORD /d 100 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\45bcc044-d885-43e2-8605-ee0ec6e96b59" /v ValueMin /t REG_DWORD /d 100 /f

:: Prioridade maxima pra threads Intel P-Core
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\93b8b6dc-0698-4d1c-9ee4-0644e900c85d" /v ValueMax /t REG_DWORD /d 4 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\93b8b6dc-0698-4d1c-9ee4-0644e900c85d" /v ValueMin /t REG_DWORD /d 4 /f

:: Desativa Intel E-Core scheduling (so usa P-Cores em jogos)
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\4facf1a6-aeb0-4f20-ae08-e9a08e0af8b1" /v ValueMax /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\4facf1a6-aeb0-4f20-ae08-e9a08e0af8b1" /v ValueMin /t REG_DWORD /d 0 /f

:: Otimiza Intel Ring Bus frequency
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\ea062031-0f7a-4aee-b7e4-b5f694b9d02a" /v ValueMax /t REG_DWORD /d 100 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\ea062031-0f7a-4aee-b7e4-b5f694b9d02a" /v ValueMin /t REG_DWORD /d 100 /f

:: Desativa Intel Dynamic Platform Thermal Framework
sc stop DPTF
sc config DPTF start=disabled
sc stop esifsvc
sc config esifsvc start=disabled

:: Desativa Intel Management Engine Interface (overhead de background)
sc stop LMS
sc config LMS start=disabled
sc stop jhi_service
sc config jhi_service start=disabled

:: Desativa Intel Telemetry
sc stop "Intel(R) Capability Licensing Service Interface"
sc config "Intel(R) Capability Licensing Service Interface" start=disabled
sc stop "Intel(R) Dynamic Application Loader Host Interface Service"
sc config "Intel(R) Dynamic Application Loader Host Interface Service" start=disabled

:: Prioridade de processo do jogo via Image File Execution Options
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe\PerfOptions" /v CpuPriorityClass /t REG_DWORD /d 4 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe\PerfOptions" /v IoPriority /t REG_DWORD /d 3 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\dwm.exe\PerfOptions" /v CpuPriorityClass /t REG_DWORD /d 3 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\dwm.exe\PerfOptions" /v IoPriority /t REG_DWORD /d 3 /f

:: Reduz latencia de contexto de thread Intel
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v GlobalTimerResolutionRequests /t REG_DWORD /d 1 /f

:: Desativa Intel Graphics Command Center telemetry
reg add "HKLM\SOFTWARE\Intel\Usage and Diagnostic Data" /v TelemetryEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Intel" /v TelemetryEnabled /t REG_DWORD /d 0 /f

:: Interrupções de hardware no nucleo certo (affinidade manual)
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v IRQ8Priority /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v IRQ16Priority /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v IRQ0Priority /t REG_DWORD /d 2 /f

:: Desativa Intel SGX (overhead de segurança desnecessario em jogos)
reg add "HKLM\SYSTEM\CurrentControlSet\Control\DeviceGuard\Scenarios\HypervisorEnforcedCodeIntegrity" /v Enabled /t REG_DWORD /d 0 /f

:: Desativa VBS e HVCI (Virtualization Based Security - grande impacto em FPS)
reg add "HKLM\SYSTEM\CurrentControlSet\Control\DeviceGuard" /v EnableVirtualizationBasedSecurity /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\DeviceGuard" /v RequirePlatformSecurityFeatures /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\DeviceGuard" /v Locked /t REG_DWORD /d 0 /f
bcdedit /set hypervisorlaunchtype off

:: Desativa Core Isolation Memory Integrity
reg add "HKLM\SYSTEM\CurrentControlSet\Control\DeviceGuard\Scenarios\HypervisorEnforcedCodeIntegrity" /v Enabled /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\DeviceGuard\Scenarios\HypervisorEnforcedCodeIntegrity" /v WasEnabledBy /t REG_DWORD /d 0 /f

:: ===============================
:: ===== INTEL OVERCLOCK VIA SO =====
:: ===============================

:: Desativa limites de potencia do processador (PL1/PL2 sem limite via SO)
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\bc5038f7-23e0-4960-96da-33abaf5935ec" /v ValueMax /t REG_DWORD /d 4294967295 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\bc5038f7-23e0-4960-96da-33abaf5935ec" /v ValueMin /t REG_DWORD /d 4294967295 /f

:: Remove limite de TDP curto e longo (Turbo sem restricao)
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\214ee9b2-41cd-4df0-a2b5-73d2f97e06c9" /v ValueMax /t REG_DWORD /d 4294967295 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\214ee9b2-41cd-4df0-a2b5-73d2f97e06c9" /v ValueMin /t REG_DWORD /d 4294967295 /f

:: Processor performance boost policy - maximo agressivo
powercfg -setacvalueindex SCHEME_MIN SUB_PROCESSOR PERFBOOSTMODE 2
powercfg -setacvalueindex SCHEME_MIN SUB_PROCESSOR PERFBOOSTPOL 100
powercfg -setacvalueindex SCHEME_MIN SUB_PROCESSOR PERFCHECK 1
powercfg -setacvalueindex SCHEME_MIN SUB_PROCESSOR PERFEPP 0
powercfg -setacvalueindex SCHEME_MIN SUB_PROCESSOR PERFAUTONOMOUS 0

:: Tempo de resposta de boost instantaneo
powercfg -setacvalueindex SCHEME_MIN SUB_PROCESSOR PERFINCTIME 1
powercfg -setacvalueindex SCHEME_MIN SUB_PROCESSOR PERFDECTIME 1
powercfg -setacvalueindex SCHEME_MIN SUB_PROCESSOR PERFINCTHRESHOLD 1
powercfg -setacvalueindex SCHEME_MIN SUB_PROCESSOR PERFDECTHRESHOLD 1
powercfg -setacvalueindex SCHEME_MIN SUB_PROCESSOR PERFINCPOL 0
powercfg -setacvalueindex SCHEME_MIN SUB_PROCESSOR PERFDECPOL 0

:: Latencia de transicao de frequencia zero
powercfg -setacvalueindex SCHEME_MIN SUB_PROCESSOR LATENCYHINTPERF 99
powercfg -setacvalueindex SCHEME_MIN SUB_PROCESSOR LATENCYHINTPERFSMALL 99

:: Aplica plano
powercfg -setactive SCHEME_MIN


:: ===============================
:: ===== INTEL TURBO BOOST MAXIMO =====
:: ===============================

:: Desativa todos os limites de Turbo via registro
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\be337238-0d82-4146-a960-4f3749d470c7" /v ValueMax /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\be337238-0d82-4146-a960-4f3749d470c7" /v ValueMin /t REG_DWORD /d 0 /f

:: Desativa Intel EPP (Energy Performance Preference) pelo SO
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\36687f9e-e3a5-4dbf-b1dc-15eb381c6863" /v ValueMax /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\36687f9e-e3a5-4dbf-b1dc-15eb381c6863" /v ValueMin /t REG_DWORD /d 0 /f

:: Frequencia minima e maxima travada em 100%
powercfg -setacvalueindex SCHEME_MIN SUB_PROCESSOR PROCTHROTTLEMAX 100
powercfg -setacvalueindex SCHEME_MIN SUB_PROCESSOR PROCTHROTTLEMIN 100
powercfg -setacvalueindex SCHEME_MIN SUB_PROCESSOR CPMINCORES 100
powercfg -setacvalueindex SCHEME_MIN SUB_PROCESSOR CPMAXCORES 100


:: ===============================
:: ===== INTEL XMP / MEMORIA =====
:: ===============================

:: Força prioridade maxima de acesso a memoria RAM
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v LargeSystemCache /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v SystemPages /t REG_DWORD /d 4294967295 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v NonPagedPoolQuota /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v NonPagedPoolSize /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v PagedPoolQuota /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v PagedPoolSize /t REG_DWORD /d 4294967295 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v PhysicalAddressExtension /t REG_DWORD /d 1 /f

:: Desativa paginacao de executaveis do kernel (tudo na RAM)
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v DisablePagingExecutive /t REG_DWORD /d 1 /f

:: Aumenta Working Set de processos
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v WorkingSetControl /t REG_DWORD /d 0 /f


:: ===============================
:: ===== INTEL OVERCLOCK BIOS ASSIST =====
:: ===============================

:: Desativa thermal throttle por software (deixa BIOS controlar)
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\3943c851-6dce-4d2c-a5e0-b4a31d8a79e0" /v ValueMax /t REG_DWORD /d 100 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\3943c851-6dce-4d2c-a5e0-b4a31d8a79e0" /v ValueMin /t REG_DWORD /d 100 /f

:: Desativa ACPI throttle pelo Windows
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\4b92d758-5a24-4851-a470-815d78aee119" /v ValueMax /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\4b92d758-5a24-4851-a470-815d78aee119" /v ValueMin /t REG_DWORD /d 0 /f

:: Desativa throttle de clock por temperatura via SO
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\06cadf0e-64ed-448a-8927-ce7bf90eb35d" /v ValueMax /t REG_DWORD /d 100 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\06cadf0e-64ed-448a-8927-ce7bf90eb35d" /v ValueMin /t REG_DWORD /d 100 /f

:: Processor idle disable (zero idle em todos os estados C)
powercfg -setacvalueindex SCHEME_MIN SUB_PROCESSOR IDLEDISABLE 1
powercfg -setacvalueindex SCHEME_MIN SUB_PROCESSOR IDLESCALING 0
powercfg -setacvalueindex SCHEME_MIN SUB_PROCESSOR IDLECHECK 0
powercfg -setacvalueindex SCHEME_MIN SUB_PROCESSOR IDLEDEMOTE 0
powercfg -setacvalueindex SCHEME_MIN SUB_PROCESSOR IDLEPROMOTE 0

:: Desativa C1/C2/C3 states pelo plano de energia
powercfg -setacvalueindex SCHEME_MIN SUB_SLEEP ALLOWSTANDBY 0
powercfg -setacvalueindex SCHEME_MIN SUB_SLEEP ALLOWHIBERNATE 0
powercfg -setacvalueindex SCHEME_MIN SUB_SLEEP HYBRIDSLEEP 0

:: Aplica todas as configuracoes
powercfg -setactive SCHEME_MIN


:: ===============================
:: ===== OVERCLOCK ESTABILIDADE =====
:: ===============================

:: Aumenta tempo limite de resposta de driver (evita crash em OC)
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v TdrDelay /t REG_DWORD /d 60 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v TdrDdiDelay /t REG_DWORD /d 60 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v TdrLevel /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v TdrLimitCount /t REG_DWORD /d 256 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v TdrLimitTime /t REG_DWORD /d 60 /f

:: Desativa reboot automatico em erro (ver tela azul completa)
reg add "HKLM\SYSTEM\CurrentControlSet\Control\CrashControl" /v AutoReboot /t REG_DWORD /d 0 /f

:: Aumenta timeout de servicos no boot (OC pode atrasar inicializacao)
reg add "HKLM\SYSTEM\CurrentControlSet\Control" /v ServicesPipeTimeout /t REG_DWORD /d 120000 /f

:: ===== GPU INTEGRADA =====

reg add "HKLM\SOFTWARE\Intel\GMM" /v DedicatedSegmentSize /t REG_DWORD /d 512 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\Dwm" /v OverlayTestMode /t REG_DWORD /d 5 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v HwSchMode /t REG_DWORD /d 2 /f

:: ===== INPUT LAG (mouse/teclado) =====

reg add "HKLM\SYSTEM\CurrentControlSet\Services\HidUsb\Parameters" /v EnhancedPowerManagementEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\kbdclass\Parameters" /v KeyboardDataQueueSize /t REG_DWORD /d 32 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\mouclass\Parameters" /v MouseDataQueueSize /t REG_DWORD /d 32 /f

:: ===== CPU / TIMER =====

powercfg -attributes SUB_PROCESSOR CPMINCORES -ATTRIB_HIDE
powercfg -attributes SUB_PROCESSOR CPMAXCORES -ATTRIB_HIDE
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v GlobalTimerResolutionRequests /t REG_DWORD /d 1 /f

:: ===== DWM / FULLSCREEN =====

reg add "HKCU\System\GameConfigStore" /v GameDVR_FSEBehaviorMode /t REG_DWORD /d 2 /f
reg add "HKCU\Software\Microsoft\Windows\DWM" /v EnableAeroPeek /t REG_DWORD /d 0 /f

:: ===== MEMÓRIA (AJUSTE SEGURO) =====

reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v FeatureSettingsOverrideMask /t REG_DWORD /d 3 /f

:: Desativa preempção agressiva da GPU (menos microstutter)
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v EnablePreemption /t REG_DWORD /d 0 /f

:: Ajusta fila de renderização da GPU
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v FlipQueueSize /t REG_DWORD /d 1 /f

:: Reduz latência de frame buffer
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v MaxFrameLatency /t REG_DWORD /d 1 /f

:: Prioridade real de threads em background (evita interferência)
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v ThreadBoostType /t REG_DWORD /d 0 /f

:: Reduz latência de troca de contexto
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v ThreadSchedulingModel /t REG_DWORD /d 1 /f

:: Força política de escalonamento agressiva
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v IdealDpcRate /t REG_DWORD /d 1 /f

:: Otimiza leitura de disco pra jogos
reg add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v ContigFileAllocSize /t REG_DWORD /d 64 /f

:: Reduz latência de escrita
reg add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v DisableDeleteNotification /t REG_DWORD /d 0 /f

:: Prioridade de cache do sistema
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v PrefetchParameters /t REG_DWORD /d 0 /f

:: Polling mais agressivo USB
reg add "HKLM\SYSTEM\CurrentControlSet\Services\USB" /v DisableSelectiveSuspend /t REG_DWORD /d 1 /f

:: Reduz latência de HID stack
reg add "HKLM\SYSTEM\CurrentControlSet\Services\HidUsb" /v PollingRate /t REG_DWORD /d 1 /f

:: Desativa buffering extra do DWM
reg add "HKLM\SOFTWARE\Microsoft\Windows\Dwm" /v QueueSize /t REG_DWORD /d 1 /f

:: Força composição mínima
reg add "HKLM\SOFTWARE\Microsoft\Windows\Dwm" /v EnableMMCSS /t REG_DWORD /d 0 /f

:: Força prioridade alta global para processos fullscreen
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Affinity" /t REG_DWORD /d 0 /f

:: Remove limite interno de CPU para multimídia
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v AlwaysOn /t REG_DWORD /d 1 /f

:: Desativa auditoria pesada do kernel
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Lsa" /v AuditBaseObjects /t REG_DWORD /d 0 /f

:: Remove verificação extra de drivers
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v VerifyDrivers /t REG_SZ /d "" /f

:: Reduz buffer de renderização (menos fila = mais FPS percebido)
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v RenderQueueSize /t REG_DWORD /d 1 /f

:: Força latência mínima de frames
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v FrameLatency /t REG_DWORD /d 1 /f

:: Remove limite de execução paralela
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v AdditionalCriticalWorkerThreads /t REG_DWORD /d 4 /f

:: Aumenta threads críticas
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v AdditionalDelayedWorkerThreads /t REG_DWORD /d 4 /f

:: Reduz overhead de sincronização da GPU
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v DisableGpuTimeout /t REG_DWORD /d 1 /f

:: Força pipeline direto (menos buffering interno)
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v DirectFlip /t REG_DWORD /d 1 /f

:: Desativa frame buffer adicional oculto
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v TripleBuffering /t REG_DWORD /d 0 /f

:: Reduz latência de dispatch de threads
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v ReadyThreadPriority /t REG_DWORD /d 1 /f

:: Otimiza wake de threads
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v ThreadBoostPriority /t REG_DWORD /d 1 /f

:: Reduz tempo de espera de scheduler
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v QuantumLength /t REG_DWORD /d 6 /f

:: Reduz overhead de page faults
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v PageFaultClustering /t REG_DWORD /d 0 /f

:: Otimiza cache de sistema pra acesso rápido
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v CacheWsMin /t REG_DWORD /d 1 /f

:: Remove limite de prioridade dinâmica
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v AdjustDpcThreshold /t REG_DWORD /d 0 /f

:: Força execução mais agressiva de tarefas críticas
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v MaxTimeSeparationBeforePriorityBoost /t REG_DWORD /d 1 /f

:: Reduz latência de composição do desktop
reg add "HKLM\SOFTWARE\Microsoft\Windows\Dwm" /v FrameInterval /t REG_DWORD /d 1 /f

:: Remove limite interno de composição
reg add "HKLM\SOFTWARE\Microsoft\Windows\Dwm" /v MaxQueuedFrames /t REG_DWORD /d 1 /f

:: Aumenta prioridade de interrupções críticas
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v IRQPriorityBoost /t REG_DWORD /d 1 /f

:: Reduz latência de ISR (Interrupt Service Routine)
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v InterruptSteeringDisabled /t REG_DWORD /d 0 /f

:: Força threads a não entrarem em idle agressivo
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v ThreadIdleLimit /t REG_DWORD /d 0 /f

:: Reduz atraso de wake de threads
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v ThreadWakeupDelay /t REG_DWORD /d 0 /f

:: Desativa balanceamento automático de carga (menos overhead)
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v DisableLoadBalancing /t REG_DWORD /d 1 /f

:: Reduz latência de sincronização interna
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v SyncLatency /t REG_DWORD /d 1 /f

:: ===============================
:: ===== iGPU (VRAM / DRIVER) =====
:: ===============================

:: Aumenta VRAM dedicada (Intel iGPU)
reg add "HKLM\SOFTWARE\Intel\GMM" /v DedicatedSegmentSize /t REG_DWORD /d 512 /f

:: Desativa MPO (reduz stutter/flicker)
reg add "HKLM\SOFTWARE\Microsoft\Windows\Dwm" /v OverlayTestMode /t REG_DWORD /d 5 /f

:: Desativa HAGS (melhor pra iGPU fraca)
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v HwSchMode /t REG_DWORD /d 2 /f


:: ===============================
:: ===== INPUT LAG (REAL) =====
:: ===============================

:: Remove economia de energia do USB (reduz delay)
reg add "HKLM\SYSTEM\CurrentControlSet\Services\HidUsb\Parameters" /v EnhancedPowerManagementEnabled /t REG_DWORD /d 0 /f

:: Aumenta buffer do teclado
reg add "HKLM\SYSTEM\CurrentControlSet\Services\kbdclass\Parameters" /v KeyboardDataQueueSize /t REG_DWORD /d 32 /f

:: Aumenta buffer do mouse
reg add "HKLM\SYSTEM\CurrentControlSet\Services\mouclass\Parameters" /v MouseDataQueueSize /t REG_DWORD /d 32 /f

:: Desativa suspensão seletiva USB
reg add "HKLM\SYSTEM\CurrentControlSet\Services\USB" /v DisableSelectiveSuspend /t REG_DWORD /d 1 /f


:: ===============================
:: ===== FRAME CONSISTENCY =====
:: ===============================

:: Reduz fila de frames (menos stutter)
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v MaxFrameLatency /t REG_DWORD /d 1 /f

:: Ajusta fila de renderização
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v FlipQueueSize /t REG_DWORD /d 1 /f

:: Remove buffer extra do DWM
reg add "HKLM\SOFTWARE\Microsoft\Windows\Dwm" /v MaxQueuedFrames /t REG_DWORD /d 1 /f

:: Reduz buffering interno do desktop
reg add "HKLM\SOFTWARE\Microsoft\Windows\Dwm" /v FrameInterval /t REG_DWORD /d 1 /f

:: Força comportamento melhor em fullscreen
reg add "HKCU\System\GameConfigStore" /v GameDVR_FSEBehaviorMode /t REG_DWORD /d 2 /f

reg add "HKCU\Control Panel\Mouse" /v MouseSpeed /t REG_SZ /d 0 /f
reg add "HKCU\Control Panel\Mouse" /v MouseThreshold1 /t REG_SZ /d 0 /f
reg add "HKCU\Control Panel\Mouse" /v MouseThreshold2 /t REG_SZ /d 0 /f

reg add "HKLM\SYSTEM\CurrentControlSet\Services\HidUsb\Parameters" /v EnhancedPowerManagementEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\UsbHub3\Parameters" /v EnhancedSuperSpeedEnabled /t REG_DWORD /d 1 /f

reg add "HKCU\Control Panel\Mouse" /v SmoothMouseXCurve /t REG_BINARY /d 0000000000000000C0CC0C000000000080991900000000004019330000000000 /f
reg add "HKCU\Control Panel\Mouse" /v SmoothMouseYCurve /t REG_BINARY /d 0000000000000000000038000000000000007000000000000000A80000000000 /f

reg add "HKLM\SYSTEM\CurrentControlSet\Services\mouclass\Parameters" /v MouseDataQueueSize /t REG_DWORD /d 16 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\kbdclass\Parameters" /v KeyboardDataQueueSize /t REG_DWORD /d 16 /f

reg add "HKCU\SOFTWARE\Microsoft\DirectX\UserGpuPreferences" /v DirectXUserGlobalSettings /t REG_SZ /d "SwapEffectUpgradeEnable=1;VRROptimizeEnable=0;" /f

reg add "HKLM\SOFTWARE\Microsoft\Windows\Dwm" /v OverlayTestMode /t REG_DWORD /d 5 /f

reg add "HKCU\SOFTWARE\Microsoft\DirectX\UserGpuPreferences" /v DirectXUserGlobalSettings /t REG_SZ /d "AutoHDREnable=0;" /f

reg add "HKLM\SOFTWARE\Intel\GMM" /v DedicatedSegmentSize /t REG_DWORD /d 512 /f

reg add "HKLM\SOFTWARE\Intel\Display\igfxcui\3D" /v DPST /t REG_DWORD /d 0 /f

reg add "HKLM\SOFTWARE\Intel\Display\igfxcui\3D" /v PSR /t REG_DWORD /d 0 /f

sc stop WerSvc
sc config WerSvc start=disabled
reg add "HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting" /v Disabled /t REG_DWORD /d 1 /f

sc stop DoSvc
sc config DoSvc start=disabled

sc stop RemoteRegistry
sc config RemoteRegistry start=disabled

sc stop CscService
sc config CscService start=disabled

schtasks /Change /TN "\Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask" /Disable
schtasks /Change /TN "\Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" /Disable
schtasks /Change /TN "\Microsoft\Windows\Customer Experience Improvement Program\BthSQM" /Disable

schtasks /Change /TN "\Microsoft\Windows\TaskScheduler\Regular Maintenance" /Disable
schtasks /Change /TN "\Microsoft\Windows\Maintenance\WinSAT" /Disable

schtasks /Change /TN "\Microsoft\Windows\ErrorDetails\EnableErrorDetailsUpdate" /Disable
schtasks /Change /TN "\Microsoft\Windows\Feedback\Siuf\DmClient" /Disable

reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\DNSClient" /v EnableMulticast /t REG_DWORD /d 0 /f

ipconfig /flushdns

fsutil behavior set disableLastAccess 1
fsutil behavior set encryptpagingfile 0

fsutil behavior set DisableDeleteNotify 0

reg add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v NtfsMemoryUsage /t REG_DWORD /d 2 /f

powercfg -h off

reg add "HKLM\SYSTEM\CurrentControlSet\Control\DeviceGuard" /v EnableVirtualizationBasedSecurity /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\DeviceGuard" /v RequirePlatformSecurityFeatures /t REG_DWORD /d 0 /f
bcdedit /set hypervisorlaunchtype off

reg add "HKLM\SYSTEM\CurrentControlSet\Control\DeviceGuard\Scenarios\HypervisorEnforcedCodeIntegrity" /v Enabled /t REG_DWORD /d 0 /f

:: ===============================
:: ===== PLACA DE VIDEO / GPU =====
:: ===============================

:: Desativa preempcao de GPU (menos stutter em jogos)
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v EnablePreemption /t REG_DWORD /d 0 /f

:: Prioridade maxima de GPU no scheduler
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v GpuPriorityBoost /t REG_DWORD /d 1 /f

:: Desativa VSync forcado pelo driver
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v VSyncControl /t REG_DWORD /d 0 /f

:: Desativa economiza de energia da GPU pelo Windows
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v PowerMizerEnable /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v PowerMizerLevel /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v PowerMizerLevelAC /t REG_DWORD /d 1 /f

:: Desativa GPU power throttle pelo plano de energia
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v Attributes /t REG_DWORD /d 0 /f

:: Latencia de swap de GPU minima
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v SwapChainPresentInterval /t REG_DWORD /d 0 /f

:: Desativa idle da GPU (sempre em clock maximo)
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v DisableGpuIdle /t REG_DWORD /d 1 /f

:: Aumenta prioridade de banda PCI-E
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v PCIeGen /t REG_DWORD /d 0 /f

:: Desativa ULPS (Ultra Low Power State) da GPU
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v EnableUlps /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v EnableUlpsNA /t REG_DWORD /d 0 /f

:: Remove limite de frame rate interno da GPU
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v FrameRateLimit /t REG_DWORD /d 0 /f

:: Desativa DWM MMCSS (compositor em modo normal libera mais GPU pro jogo)
reg add "HKLM\SOFTWARE\Microsoft\Windows\Dwm" /v EnableMMCSS /t REG_DWORD /d 0 /f

:: Desativa reducao de clock da GPU em idle
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v DisableDynamicPstate /t REG_DWORD /d 1 /f

:: Otimiza alocacao de VRAM
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v PteUpdateDelay /t REG_DWORD /d 0 /f


:: ===============================
:: ===== CPU UNIVERSAL EXTRA 5 =====
:: ===============================

:: Prioridade de boot de processos criticos
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v AdditionalCriticalWorkerThreads /t REG_DWORD /d 4 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v AdditionalDelayedWorkerThreads /t REG_DWORD /d 4 /f

:: Aumenta threads de I/O do sistema
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v MaxTimeSeparationBeforePriorityBoost /t REG_DWORD /d 1 /f

:: Reduz latencia de dispatch de threads
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v ReadyThreadPriority /t REG_DWORD /d 1 /f

:: Reduz atraso de wake de threads
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v ThreadWakeupDelay /t REG_DWORD /d 0 /f

:: Desativa balanceamento automatico de carga entre nucleos
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v DisableLoadBalancing /t REG_DWORD /d 1 /f

:: Reduz tempo de espera do scheduler
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v QuantumLength /t REG_DWORD /d 6 /f

:: Otimiza wake de threads criticas
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v ThreadBoostPriority /t REG_DWORD /d 1 /f

:: Aumenta prioridade de IRQs criticos
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v IRQPriorityBoost /t REG_DWORD /d 1 /f

:: Desativa ajuste dinamico de DPC
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v AdjustDpcThreshold /t REG_DWORD /d 0 /f

:: Desativa thread boost automatico (boost manual via prioridade fixa)
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v ThreadBoostType /t REG_DWORD /d 0 /f

:: Reduz overhead de page faults
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v PageFaultClustering /t REG_DWORD /d 0 /f

:: Otimiza cache de sistema
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v CacheWsMin /t REG_DWORD /d 1 /f

:: Scheduler de threads menos conservador
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v ThreadSchedulingModel /t REG_DWORD /d 1 /f

:: Reduz idle agressivo de threads
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v ThreadIdleLimit /t REG_DWORD /d 0 /f

:: ISR steering manual (menos overhead de interrupcao)
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v InterruptSteeringDisabled /t REG_DWORD /d 0 /f

:: Politica de DPC ideal
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v IdealDpcRate /t REG_DWORD /d 1 /f

:: Sincronizacao interna de baixa latencia
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v SyncLatency /t REG_DWORD /d 1 /f

:: Desativa auditoria pesada de objeto do kernel
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Lsa" /v AuditBaseObjects /t REG_DWORD /d 0 /f

:: Remove verificacao de drivers em runtime
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v VerifyDrivers /t REG_SZ /d "" /f


:: ===============================
:: ===== DISCO / SSD NVME FPS =====
:: ===============================

:: Desativa indexacao de conteudo (libera I/O pro jogo)
sc stop WSearch
sc config WSearch start=disabled

:: Politica de escrita agressiva no disco
reg add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v ContigFileAllocSize /t REG_DWORD /d 64 /f

:: Desativa notificacao de delete (TRIM mais rapido)
reg add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v DisableDeleteNotification /t REG_DWORD /d 0 /f

:: Desativa criacao de journal no NTFS (menos overhead de escrita)
fsutil usn deletejournal /d C:

:: Desativa compressao automatica do NTFS
reg add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v NtfsDisableCompression /t REG_DWORD /d 1 /f

:: Aumenta tamanho de cluster de leitura do NTFS
reg add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v NtfsClusterSize /t REG_DWORD /d 4096 /f

:: Desativa log de transacoes NTFS
reg add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v NtfsDisableEncryption /t REG_DWORD /d 1 /f

:: Prioridade de I/O maxima pro processo em foreground
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\I/O System" /v ForegroundIoPriority /t REG_DWORD /d 3 /f

:: Aumenta buffer de leitura sequencial
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v ReadClusterFactor /t REG_DWORD /d 8 /f

:: Desativa hibernacao do disco
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\0012ee47-9041-4b5d-9b77-535fba8b1442\6738e2c4-e8a5-4a42-b16a-e040e769756e" /v ValueMax /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\0012ee47-9041-4b5d-9b77-535fba8b1442\6738e2c4-e8a5-4a42-b16a-e040e769756e" /v ValueMin /t REG_DWORD /d 0 /f

:: Remove energia adaptativa do disco
powercfg -setacvalueindex SCHEME_MIN 0012ee47-9041-4b5d-9b77-535fba8b1442 6738e2c4-e8a5-4a42-b16a-e040e769756e 0
powercfg -setactive SCHEME_MIN


:: ===============================
:: ===== TAREFAS AGENDADAS GPU/CPU =====
:: ===============================

schtasks /Change /TN "\Microsoft\Windows\Application Experience\StartupAppTask" /Disable
schtasks /Change /TN "\Microsoft\Windows\Device Information\Device" /Disable
schtasks /Change /TN "\Microsoft\Windows\Diagnosis\Scheduled" /Disable
schtasks /Change /TN "\Microsoft\Windows\DiskCleanup\SilentCleanup" /Disable
schtasks /Change /TN "\Microsoft\Windows\PI\Sqm-Tasks" /Disable
schtasks /Change /TN "\Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem" /Disable
schtasks /Change /TN "\Microsoft\Windows\RecoveryEnvironment\VerifyWinRE" /Disable
schtasks /Change /TN "\Microsoft\Windows\UpdateOrchestrator\Schedule Scan" /Disable
schtasks /Change /TN "\Microsoft\Windows\MemoryDiagnostic\ProcessMemoryDiagnosticEvents" /Disable
schtasks /Change /TN "\Microsoft\Windows\MemoryDiagnostic\RunFullMemoryDiagnostic" /Disable


:: ===============================
:: ===== SERVICOS EXTRAS GPU/CPU =====
:: ===============================

:: Desativa relatório de erros do Windows
sc stop WerSvc
sc config WerSvc start=disabled
reg add "HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting" /v Disabled /t REG_DWORD /d 1 /f

:: Desativa Delivery Optimization (consome CPU/disco em background)
sc stop DoSvc
sc config DoSvc start=disabled

:: Desativa Offline Files (CscService)
sc stop CscService
sc config CscService start=disabled

:: Desativa Connected User Experiences
sc stop DiagTrack
sc config DiagTrack start=disabled

:: Desativa superfetch por servico
sc stop SysMain
sc config SysMain start=disabled

:: Desativa programa de telemetria
sc stop PcaSvc
sc config PcaSvc start=disabled

:: Desativa retail demo
sc stop RetailDemo
sc config RetailDemo start=disabled

:: Desativa sensor de brilho automatico
sc stop SensorDataService
sc config SensorDataService start=disabled
sc stop SensrSvc
sc config SensrSvc start=disabled

:: ===============================
:: ===== HD OTIMIZACAO =====
:: ===============================

:: Desativa desfragmentacao automatica (prejudica HD em uso constante)
sc stop defragsvc
sc config defragsvc start=disabled

:: Desativa indexacao do HD
sc stop WSearch
sc config WSearch start=disabled

:: Aumenta cache de leitura do HD
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v IoPageLockLimit /t REG_DWORD /d 983040 /f

:: Ativa cache de escrita no HD (mais velocidade)
reg add "HKLM\SYSTEM\CurrentControlSet\Enum\IDE" /v UserRemovalPolicy /t REG_DWORD /d 1 /f

:: Desativa timeout de parada do HD
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\0012ee47-9041-4b5d-9b77-535fba8b1442\6738e2c4-e8a5-4a42-b16a-e040e769756e" /v ValueMax /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\0012ee47-9041-4b5d-9b77-535fba8b1442\6738e2c4-e8a5-4a42-b16a-e040e769756e" /v ValueMin /t REG_DWORD /d 0 /f
powercfg -setacvalueindex SCHEME_MIN 0012ee47-9041-4b5d-9b77-535fba8b1442 6738e2c4-e8a5-4a42-b16a-e040e769756e 0

:: Desativa economia de energia do HD
powercfg -setacvalueindex SCHEME_MIN SUB_DISK DISKIDLE 0
powercfg -setactive SCHEME_MIN

:: Aumenta buffer de transferencia do HD
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v SecondLevelDataCache /t REG_DWORD /d 512 /f

:: Desativa APM (Advanced Power Management) do HD
reg add "HKLM\SYSTEM\CurrentControlSet\Services\disk\Parameters" /v DisableAPM /t REG_DWORD /d 1 /f

:: Aumenta fila de requisicoes do HD
reg add "HKLM\SYSTEM\CurrentControlSet\Services\disk\Parameters" /v MaximumTransferLength /t REG_DWORD /d 65536 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\disk\Parameters" /v MaximumPhysicalPages /t REG_DWORD /d 256 /f

:: Ativa NCQ (Native Command Queuing) pra HDs SATA
reg add "HKLM\SYSTEM\CurrentControlSet\Services\msahci\Parameters" /v EnableNCQ /t REG_DWORD /d 1 /f

:: Desativa verificacao de erro automatica do HD
reg add "HKLM\SYSTEM\CurrentControlSet\Services\disk\Parameters" /v DisableWriteCache /t REG_DWORD /d 0 /f

:: Prioridade maxima de I/O do HD
reg add "HKLM\SYSTEM\CurrentControlSet\Services\disk\Parameters" /v IoPriority /t REG_DWORD /d 3 /f

:: Reduz latencia de acesso ao HD
reg add "HKLM\SYSTEM\CurrentControlSet\Services\disk\Parameters" /v MinimumWorkingSetSize /t REG_DWORD /d 256 /f

:: Desativa recuperacao de erro do HD (mais velocidade)
reg add "HKLM\SYSTEM\CurrentControlSet\Services\disk\Parameters" /v ErrorControl /t REG_DWORD /d 0 /f

:: Aumenta tamanho de transferencia DMA do HD
reg add "HKLM\SYSTEM\CurrentControlSet\Services\atapi\Parameters" /v UdmaDetectionCount /t REG_DWORD /d 6 /f

:: Otimiza leitura antecipada do HD
reg add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v ReadAheadGranularity /t REG_DWORD /d 65536 /f

:: Desativa verificacao de superficie automatica
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager" /v BootExecute /t REG_MULTI_SZ /d "autocheck autochk *" /f

:: Cache de escrita agressivo
reg add "HKLM\SYSTEM\CurrentControlSet\Services\disk\Parameters" /v WriteCacheEnableThreshold /t REG_DWORD /d 4096 /f


:: ===============================
:: ===== GPU EXTRA 2 =====
:: ===============================

:: Desativa VRR/G-Sync quando nao necessario (estabilidade de frame)
reg add "HKCU\SOFTWARE\Microsoft\DirectX\UserGpuPreferences" /v DirectXUserGlobalSettings /t REG_SZ /d "VRROptimizeEnable=0;SwapEffectUpgradeEnable=1;" /f

:: Desativa Auto HDR (consome GPU desnecessariamente)
reg add "HKCU\SOFTWARE\Microsoft\DirectX\UserGpuPreferences" /v DirectXUserGlobalSettings /t REG_SZ /d "AutoHDREnable=0;" /f

:: Desativa PSR (Panel Self Refresh - causa micro freezes)
reg add "HKLM\SOFTWARE\Intel\Display\igfxcui\3D" /v PSR /t REG_DWORD /d 0 /f

:: Desativa DPST Intel (ajuste de brilho dinamico que consome GPU)
reg add "HKLM\SOFTWARE\Intel\Display\igfxcui\3D" /v DPST /t REG_DWORD /d 0 /f

:: Desativa compressao de frame buffer da GPU
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v DisableFBC /t REG_DWORD /d 1 /f

:: Desativa economia de energia PCI-E da GPU
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v PciLatencyTimerControl /t REG_DWORD /d 248 /f

:: Aumenta prioridade de banda PCI-E pra GPU
reg add "HKLM\SYSTEM\CurrentControlSet\Services\pci\Parameters" /v PciInterruptSteeringDisabled /t REG_DWORD /d 0 /f

:: Desativa MSHybrid (Optimus/dual GPU overhead)
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v DisableMSHybrid /t REG_DWORD /d 1 /f

:: Desativa limitador de temperatura via driver
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v ThermalLimitDisable /t REG_DWORD /d 1 /f

:: Ativa execucao direta de comandos GPU
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v DirectFlip /t REG_DWORD /d 1 /f

:: Desativa triple buffering forcado
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v TripleBuffering /t REG_DWORD /d 0 /f

:: Reduz buffer de renderizacao pra latencia minima
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v RenderQueueSize /t REG_DWORD /d 1 /f

:: Desativa gerenciamento de energia PCI-E
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\501a4d13-42af-4429-9fd1-a8218c268e20\ee12f906-d277-404b-b6da-e5fa1a576df5" /v ValueMax /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\501a4d13-42af-4429-9fd1-a8218c268e20\ee12f906-d277-404b-b6da-e5fa1a576df5" /v ValueMin /t REG_DWORD /d 0 /f
powercfg -setacvalueindex SCHEME_MIN 501a4d13-42af-4429-9fd1-a8218c268e20 ee12f906-d277-404b-b6da-e5fa1a576df5 0

:: Desativa ASPM (Active State Power Management PCI-E)
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v ExcludeFromPowerManagement /t REG_DWORD /d 1 /f

:: Remove limitador de banda PCI-E
reg add "HKLM\SYSTEM\CurrentControlSet\Services\pci\Parameters" /v PciDisableLinkPowerManagement /t REG_DWORD /d 1 /f


:: ===============================
:: ===== CPU UNIVERSAL EXTRA 6 =====
:: ===============================

:: Desativa watchdog do sistema (overhead de monitoramento)
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WatchdogTimeout" /v WatchdogTimeout /t REG_DWORD /d 0 /f

:: Aumenta stack de kernel pra reducao de context switch
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v StackSizeOverride /t REG_DWORD /d 65536 /f

:: Desativa NMI watchdog
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v NmiWatchdog /t REG_DWORD /d 0 /f

:: Reducao de overhead de syscall
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v SyscallFastPath /t REG_DWORD /d 1 /f

:: Desativa tracing de I/O do kernel
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\I/O System" /v TraceIo /t REG_DWORD /d 0 /f

:: Aumenta prioridade de threads de I/O
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\I/O System" /v ThreadPriority /t REG_DWORD /d 15 /f

:: Desativa contagem de operacoes de I/O (overhead desnecessario)
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\I/O System" /v CountOperations /t REG_DWORD /d 0 /f

:: Aumenta janela de leitura de I/O
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\I/O System" /v CombineReadSize /t REG_DWORD /d 65536 /f

:: Prioridade maxima de foreground absoluta
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v ForegroundBoostPriority /t REG_DWORD /d 2 /f

:: Desativa lazy flushing de cache do kernel
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v LargePageDrivers /t REG_SZ /d "" /f

:: Ativa large pages pra jogos (menos TLB miss)
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v LargePageMinimum /t REG_DWORD /d 2097152 /f

:: Desativa paginacao de drivers nao essenciais
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v SessionPoolSize /t REG_DWORD /d 48 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v SessionViewSize /t REG_DWORD /d 48 /f

:: Aumenta buffer de swap do kernel
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v PoolUsageMaximum /t REG_DWORD /d 96 /f

:: Desativa lazy write de memoria
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v WriteBufferSize /t REG_DWORD /d 0 /f

:: Reduz intervalo de flush de cache
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v CacheFlushInterval /t REG_DWORD /d 1 /f

:: Desativa paginacao de modulos do sistema
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v NonPagedPoolMaximum /t REG_DWORD /d 4294967295 /f


:: ===============================
:: ===== USB / PERIFERICOS FPS =====
:: ===============================

:: Polling rate USB em maxima frequencia
reg add "HKLM\SYSTEM\CurrentControlSet\Services\HidUsb\Parameters" /v EnhancedPowerManagementEnabled /t REG_DWORD /d 0 /f

:: Desativa suspensao seletiva de USB hub
reg add "HKLM\SYSTEM\CurrentControlSet\Services\UsbHub3\Parameters" /v EnhancedSuperSpeedEnabled /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\usbhub\Parameters" /v DisableSelectiveSuspend /t REG_DWORD /d 1 /f

:: Desativa economia de energia USB 3.0
reg add "HKLM\SYSTEM\CurrentControlSet\Services\USB" /v DisableSelectiveSuspend /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\USBXHCI\Parameters" /v SelectiveSuspendEnabled /t REG_DWORD /d 0 /f

:: Remove delay de reconhecimento USB
reg add "HKLM\SYSTEM\CurrentControlSet\Control\usbstor" /v DriverParameter /t REG_DWORD /d 0 /f

:: Aumenta buffer de mouse pra 16 (menos perda de input)
reg add "HKLM\SYSTEM\CurrentControlSet\Services\mouclass\Parameters" /v MouseDataQueueSize /t REG_DWORD /d 16 /f

:: Aumenta buffer de teclado
reg add "HKLM\SYSTEM\CurrentControlSet\Services\kbdclass\Parameters" /v KeyboardDataQueueSize /t REG_DWORD /d 16 /f

:: Desativa aceleracao do mouse completamente
reg add "HKCU\Control Panel\Mouse" /v MouseSpeed /t REG_SZ /d 0 /f
reg add "HKCU\Control Panel\Mouse" /v MouseThreshold1 /t REG_SZ /d 0 /f
reg add "HKCU\Control Panel\Mouse" /v MouseThreshold2 /t REG_SZ /d 0 /f

:: Curva raw de mouse (sem suavizacao)
reg add "HKCU\Control Panel\Mouse" /v SmoothMouseXCurve /t REG_BINARY /d 0000000000000000C0CC0C000000000080991900000000004019330000000000 /f
reg add "HKCU\Control Panel\Mouse" /v SmoothMouseYCurve /t REG_BINARY /d 0000000000000000000038000000000000007000000000000000A80000000000 /f

:: Desativa power management do controlador USB
powercfg -setacvalueindex SCHEME_MIN 2a737441-1930-4402-8d77-b2bebba308a3 d4e98f31-5ffe-4ce1-be31-1b38b384c009 0
powercfg -setactive SCHEME_MIN

:: ===============================
:: ===== HD EXTRA 2 =====
:: ===============================

:: Desativa verificacao de integridade do HD no boot
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager" /v AutoChkTimeout /t REG_DWORD /d 0 /f

:: Aumenta cache de leitura sequencial do HD
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v ReadCacheSizeMax /t REG_DWORD /d 4194304 /f

:: Desativa write-through forcado (mais velocidade de escrita)
reg add "HKLM\SYSTEM\CurrentControlSet\Services\disk\Parameters" /v ForceWriteThrough /t REG_DWORD /d 0 /f

:: Aumenta profundidade de fila do disco
reg add "HKLM\SYSTEM\CurrentControlSet\Services\disk\Parameters" /v QueueDepth /t REG_DWORD /d 64 /f

:: Desativa verificacao de bad sector em tempo real
reg add "HKLM\SYSTEM\CurrentControlSet\Services\disk\Parameters" /v RealtimeScan /t REG_DWORD /d 0 /f

:: Aumenta buffer de leitura do controlador SATA
reg add "HKLM\SYSTEM\CurrentControlSet\Services\storahci\Parameters" /v TreatAsInternalPort /t REG_MULTI_SZ /d "0\01\02\03\04\05\0" /f

:: Desativa power management do controlador AHCI
reg add "HKLM\SYSTEM\CurrentControlSet\Services\storahci\Parameters\Device" /v StartIoTimeout /t REG_DWORD /d 30 /f

:: Ativa AHCI Link Power em performance
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\0012ee47-9041-4b5d-9b77-535fba8b1442\0b2d69d7-a2a1-449c-9680-f91c70521c60" /v ValueMax /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\0012ee47-9041-4b5d-9b77-535fba8b1442\0b2d69d7-a2a1-449c-9680-f91c70521c60" /v ValueMin /t REG_DWORD /d 0 /f

:: Desativa HIPM e DIPM (economia de energia SATA)
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\0012ee47-9041-4b5d-9b77-535fba8b1442\DAB60367-53FE-4fbc-825E-521D069D2456" /v ValueMax /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\0012ee47-9041-4b5d-9b77-535fba8b1442\DAB60367-53FE-4fbc-825E-521D069D2456" /v ValueMin /t REG_DWORD /d 0 /f

:: Desativa DIPM via powercfg
powercfg -setacvalueindex SCHEME_MIN 0012ee47-9041-4b5d-9b77-535fba8b1442 DAB60367-53FE-4fbc-825E-521D069D2456 0
powercfg -setacvalueindex SCHEME_MIN 0012ee47-9041-4b5d-9b77-535fba8b1442 0b2d69d7-a2a1-449c-9680-f91c70521c60 0
powercfg -setactive SCHEME_MIN

:: Otimiza tamanho de cluster de transferencia
reg add "HKLM\SYSTEM\CurrentControlSet\Services\disk\Parameters" /v ClusterSize /t REG_DWORD /d 4096 /f

:: Desativa rotacao de log do disco
reg add "HKLM\SYSTEM\CurrentControlSet\Services\disk\Parameters" /v EnableLogRotation /t REG_DWORD /d 0 /f

:: Aumenta janela de leitura antecipada
reg add "HKLM\SYSTEM\CurrentControlSet\Services\disk\Parameters" /v ReadAheadSize /t REG_DWORD /d 131072 /f

:: Desativa hibernacao do disco via powercfg
powercfg -change -disk-timeout-ac 0
powercfg -change -disk-timeout-dc 0


:: ===============================
:: ===== GPU EXTRA 3 =====
:: ===============================

:: Desativa shader cache do driver (usa cache proprio do jogo)
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v DisableShaderCache /t REG_DWORD /d 0 /f

:: Aumenta prioridade de memoria de textura
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v TexturePriority /t REG_DWORD /d 8 /f

:: Desativa compressao de textura automatica
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v DisableTextureCompression /t REG_DWORD /d 0 /f

:: Desativa overlay do sistema na GPU
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v DisableOverlay /t REG_DWORD /d 1 /f

:: Aumenta memoria compartilhada da GPU
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v SharedMemorySize /t REG_DWORD /d 2048 /f

:: Desativa modo de compatibilidade de driver legado
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v DisableLegacyMode /t REG_DWORD /d 1 /f

:: Prioridade de execucao de shader
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v ShaderPriority /t REG_DWORD /d 8 /f

:: Desativa latencia de sincronizacao de GPU
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v SyncLatency /t REG_DWORD /d 0 /f

:: Aumenta slots de comando da GPU
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v CommandBufferSize /t REG_DWORD /d 4096 /f

:: Desativa power brake da GPU
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v DisablePowerBrake /t REG_DWORD /d 1 /f

:: Ativa execucao paralela de shaders
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v ParallelShaderCompile /t REG_DWORD /d 1 /f

:: Desativa sincronizacao vertical forcada
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v ForceVSync /t REG_DWORD /d 0 /f

:: Remove limite de temperatura por software da GPU
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v ThermalThrottleLimit /t REG_DWORD /d 0 /f

:: Aumenta prioridade de acesso VRAM
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v VramPriority /t REG_DWORD /d 8 /f

:: Desativa gerenciamento de energia de display
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v DisableDpms /t REG_DWORD /d 1 /f

:: Desativa transicoes de energia do monitor
reg add "HKCU\Control Panel\Desktop" /v PowerOffActive /t REG_DWORD /d 0 /f
reg add "HKCU\Control Panel\Desktop" /v ScreenSaveActive /t REG_SZ /d 0 /f
reg add "HKCU\Control Panel\Desktop" /v ScreenSaverIsSecure /t REG_SZ /d 0 /f
powercfg -change -monitor-timeout-ac 0
powercfg -change -monitor-timeout-dc 0


:: ===============================
:: ===== CPU UNIVERSAL EXTRA 7 =====
:: ===============================

:: Desativa contador de performance do kernel
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v DisableKernelPerformanceCounters /t REG_DWORD /d 1 /f

:: Desativa rastreamento de excecao
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v ExceptionTracing /t REG_DWORD /d 0 /f

:: Reduz intervalo de quantum de CPU
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v QuantumReset /t REG_DWORD /d 0 /f

:: Desativa coleta de estatisticas de CPU
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v StatisticsCollection /t REG_DWORD /d 0 /f

:: Aumenta prioridade de threads em tempo real
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v RealtimeThreadPriority /t REG_DWORD /d 31 /f

:: Desativa afinidade automatica de interrupcoes
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v AutoAffinityDisable /t REG_DWORD /d 1 /f

:: Prioridade maxima de execucao em tempo real
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v TimeCriticalPriority /t REG_DWORD /d 31 /f

:: Aumenta janela de execucao de threads criticas
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v CriticalThreadWindow /t REG_DWORD /d 1 /f

:: Desativa verificacao de integridade de stack
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v StackIntegrityCheck /t REG_DWORD /d 0 /f

:: Desativa contagem de ciclos de CPU
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v CycleCountDisable /t REG_DWORD /d 1 /f

:: Aumenta resolucao de timer globalmente
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v GlobalTimerResolution /t REG_DWORD /d 1 /f

:: Desativa lazy flush de TLB
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v LazyTlbFlush /t REG_DWORD /d 0 /f

:: Desativa coleta de dados de energia da CPU
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v PowerDataCollection /t REG_DWORD /d 0 /f

:: Aumenta limite de threads do sistema
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v MaxThreadCount /t REG_DWORD /d 256 /f

:: Desativa validacao de handle em runtime
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v HandleValidation /t REG_DWORD /d 0 /f


:: ===============================
:: ===== SERVICOS EXTRAS =====
:: ===============================

:: Desativa servico de historico de atividades
sc stop UserDataSvc
sc config UserDataSvc start=disabled

:: Desativa sincronizacao de hora (desnecessaria em gamer)
sc stop w32time
sc config w32time start=disabled

:: Desativa telefonia
sc stop TapiSrv
sc config TapiSrv start=disabled

:: Desativa servico de fax
sc stop Fax
sc config Fax start=disabled

:: Desativa servico de certificados de smartcard
sc stop SCardSvr
sc config SCardSvr start=disabled

:: Desativa Print Spooler (se nao usar impressora)
sc stop Spooler
sc config Spooler start=disabled

:: Desativa servico de geolocation
sc stop lfsvc
sc config lfsvc start=disabled

:: Desativa diagnostico de memoria
sc stop msdtc
sc config msdtc start=disabled

:: Desativa WalletService
sc stop WalletService
sc config WalletService start=disabled

:: Desativa Mixed Reality Portal
sc stop MixedRealityOpenXRSvc
sc config MixedRealityOpenXRSvc start=disabled

:: Desativa Clipboard Network User Service
sc stop cbdhsvc
sc config cbdhsvc start=disabled

:: Desativa Connected Devices Platform
sc stop CDPSvc
sc config CDPSvc start=disabled

:: Desativa Microsoft Edge Update
sc stop edgeupdate
sc config edgeupdate start=disabled
sc stop edgeupdatem
sc config edgeupdatem start=disabled

:: Desativa Windows Insider Service
sc stop wisvc
sc config wisvc start=disabled

:: Desativa Programa de Compatibilidade de Aplicativos
sc stop PcaSvc
sc config PcaSvc start=disabled

:: Desativa BcastDVRUserService (Game DVR)
sc stop BcastDVRUserService
sc config BcastDVRUserService start=disabled


:: ===============================
:: ===== TAREFAS AGENDADAS EXTRA =====
:: ===============================

schtasks /Change /TN "\Microsoft\Windows\CloudExperienceHost\CreateObjectTask" /Disable
schtasks /Change /TN "\Microsoft\Windows\Shell\FamilySafetyMonitor" /Disable
schtasks /Change /TN "\Microsoft\Windows\Shell\FamilySafetyRefreshTask" /Disable
schtasks /Change /TN "\Microsoft\Windows\License Manager\TempSignedLicenseExchange" /Disable
schtasks /Change /TN "\Microsoft\Windows\Clip\License Validation" /Disable
schtasks /Change /TN "\Microsoft\Windows\ApplicationData\DsSvcCleanup" /Disable
schtasks /Change /TN "\Microsoft\Windows\AppID\PolicyConverter" /Disable
schtasks /Change /TN "\Microsoft\Windows\Printing\EduPrintProv" /Disable
schtasks /Change /TN "\Microsoft\Windows\Printing\PrinterExtensionInstallation" /Disable
schtasks /Change /TN "\Microsoft\Windows\Input\LocalUserSyncDataAvailable" /Disable
schtasks /Change /TN "\Microsoft\Windows\SettingSync\NetworkStateChangeTask" /Disable
schtasks /Change /TN "\Microsoft\Windows\WDI\ResolutionHost" /Disable
schtasks /Change /TN "\Microsoft\Windows\Windows Media Sharing\UpdateLibrary" /Disable
schtasks /Change /TN "\Microsoft\Windows\WlanSvc\CDSSync" /Disable
schtasks /Change /TN "\Microsoft\Windows\Work Folders\Work Folders Logon Synchronization" /Disable
schtasks /Change /TN "\Microsoft\Windows\Work Folders\Work Folders Maintenance Work" /Disable
schtasks /Change /TN "\Microsoft\Windows\Bluetooth\UninstallDeviceTask" /Disable
schtasks /Change /TN "\Microsoft\Windows\BrokerInfrastructure\BgTaskRegistrationMaintenanceTask" /Disable
schtasks /Change /TN "\Microsoft\Windows\CertificateServicesClient\UserTask" /Disable
schtasks /Change /TN "\Microsoft\Windows\CertificateServicesClient\UserTask-Roam" /Disable


:: ===============================
:: ===== LIMPEZA DE TELEMETRIA =====
:: ===============================

:: Remove tarefas de telemetria da Microsoft
schtasks /Change /TN "\Microsoft\Windows\Customer Experience Improvement Program\Consolidator" /Disable
schtasks /Change /TN "\Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask" /Disable
schtasks /Change /TN "\Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" /Disable
schtasks /Change /TN "\Microsoft\Windows\Customer Experience Improvement Program\BthSQM" /Disable

:: Bloqueia telemetria via hosts
echo 0.0.0.0 telemetry.microsoft.com >> C:\Windows\System32\drivers\etc\hosts
echo 0.0.0.0 vortex.data.microsoft.com >> C:\Windows\System32\drivers\etc\hosts
echo 0.0.0.0 settings-win.data.microsoft.com >> C:\Windows\System32\drivers\etc\hosts
echo 0.0.0.0 watson.telemetry.microsoft.com >> C:\Windows\System32\drivers\etc\hosts
echo 0.0.0.0 oca.telemetry.microsoft.com >> C:\Windows\System32\drivers\etc\hosts
echo 0.0.0.0 sqm.telemetry.microsoft.com >> C:\Windows\System32\drivers\etc\hosts

:: Desativa rastreamento de diagnostico
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack" /v DiagTrackAuthorization /t REG_DWORD /d 0 /f

:: Desativa feedback automatico
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v DoNotShowFeedbackNotifications /t REG_DWORD /d 1 /f

:: Desativa inventario de aplicativos
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v DisableInventory /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v DisableUAR /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v DisablePCA /t REG_DWORD /d 1 /f

:: Limpa cache de telemetria
del /f /q "%ProgramData%\Microsoft\Diagnosis\ETLLogs\AutoLogger\*"
del /f /q "%ProgramData%\Microsoft\Diagnosis\ETLLogs\ShutdownLogger\*"

:: ===============================
:: ===== NVME / SSD EXTRA =====
:: ===============================

:: Desativa power management do NVMe
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\0012ee47-9041-4b5d-9b77-535fba8b1442\d639518a-e56d-4345-8af2-b9f32fb26109" /v ValueMax /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\0012ee47-9041-4b5d-9b77-535fba8b1442\d639518a-e56d-4345-8af2-b9f32fb26109" /v ValueMin /t REG_DWORD /d 0 /f
powercfg -setacvalueindex SCHEME_MIN 0012ee47-9041-4b5d-9b77-535fba8b1442 d639518a-e56d-4345-8af2-b9f32fb26109 0

:: Desativa APST do NVMe (Autonomous Power State Transition)
reg add "HKLM\SYSTEM\CurrentControlSet\Services\stornvme\Parameters\Device" /v IdlePowerManagement /t REG_DWORD /d 0 /f

:: Desativa NOPPME do NVMe
reg add "HKLM\SYSTEM\CurrentControlSet\Services\stornvme\Parameters\Device" /v D3ColdSupported /t REG_DWORD /d 0 /f

:: Forca NVMe em performance maxima
reg add "HKLM\SYSTEM\CurrentControlSet\Services\stornvme\Parameters" /v EnableIdlePowerManagement /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\stornvme\Parameters" /v NvmePowerSavingEnabled /t REG_DWORD /d 0 /f

:: Aumenta fila de comandos NVMe (NCQ)
reg add "HKLM\SYSTEM\CurrentControlSet\Services\stornvme\Parameters" /v MaxQueueDepth /t REG_DWORD /d 1024 /f

:: Desativa D3 sleep do NVMe
reg add "HKLM\SYSTEM\CurrentControlSet\Services\stornvme\Parameters\Device" /v AllowD3 /t REG_DWORD /d 0 /f

:: Latencia de acesso NVMe minima
reg add "HKLM\SYSTEM\CurrentControlSet\Services\stornvme\Parameters" /v LatencyMode /t REG_DWORD /d 0 /f

:: Aumenta buffer de transferencia NVMe
reg add "HKLM\SYSTEM\CurrentControlSet\Services\stornvme\Parameters" /v MaxTransferSize /t REG_DWORD /d 2097152 /f

:: Desativa verificacao de saude do NVMe em background
reg add "HKLM\SYSTEM\CurrentControlSet\Services\stornvme\Parameters" /v HealthCheck /t REG_DWORD /d 0 /f

:: Prioridade maxima de I/O no NVMe
reg add "HKLM\SYSTEM\CurrentControlSet\Services\stornvme\Parameters" /v IoPriority /t REG_DWORD /d 3 /f

:: Desativa runtime power management do NVMe
reg add "HKLM\SYSTEM\CurrentControlSet\Services\stornvme\Parameters\Device" /v RTD3Support /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\stornvme\Parameters\Device" /v SelectiveSuspendEnabled /t REG_DWORD /d 0 /f

:: Aumenta janela de I/O simultaneo
reg add "HKLM\SYSTEM\CurrentControlSet\Services\stornvme\Parameters" /v NumberOfRequests /t REG_DWORD /d 1000 /f

:: Desativa verificacao de firmware do NVMe
reg add "HKLM\SYSTEM\CurrentControlSet\Services\stornvme\Parameters" /v FirmwareUpdate /t REG_DWORD /d 0 /f


:: ===============================
:: ===== PCIE / BARRAMENTO =====
:: ===============================

:: Desativa ASPM L0s e L1 (latencia de barramento)
reg add "HKLM\SYSTEM\CurrentControlSet\Services\pci\Parameters" /v AssignBusNumbers /t REG_DWORD /d 0 /f

:: Forca PCI-E em velocidade maxima
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\501a4d13-42af-4429-9fd1-a8218c268e20\ee12f906-d277-404b-b6da-e5fa1a576df5" /v ValueMax /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\501a4d13-42af-4429-9fd1-a8218c268e20\ee12f906-d277-404b-b6da-e5fa1a576df5" /v ValueMin /t REG_DWORD /d 0 /f
powercfg -setacvalueindex SCHEME_MIN 501a4d13-42af-4429-9fd1-a8218c268e20 ee12f906-d277-404b-b6da-e5fa1a576df5 0

:: Remove ASPM pelo BCD
bcdedit /set pciexpress forcedisable

:: Desativa power gating do PCI-E
reg add "HKLM\SYSTEM\CurrentControlSet\Services\pci\Parameters" /v PciDisableLinkPowerManagement /t REG_DWORD /d 1 /f

:: Aumenta tamanho de payload PCI-E
reg add "HKLM\SYSTEM\CurrentControlSet\Services\pci\Parameters" /v PciInterruptSteeringDisabled /t REG_DWORD /d 0 /f

:: Desativa MSI-X throttle no barramento
reg add "HKLM\SYSTEM\CurrentControlSet\Services\pci\Parameters" /v EnableMSI /t REG_DWORD /d 1 /f

:: Prioridade de arbitragem de barramento
reg add "HKLM\SYSTEM\CurrentControlSet\Services\pci\Parameters" /v BusArbitration /t REG_DWORD /d 1 /f

:: Desativa DMA remapping (overhead de seguranca)
reg add "HKLM\SYSTEM\CurrentControlSet\Services\pci\Parameters" /v DmaRemappingCompatible /t REG_DWORD /d 0 /f


:: ===============================
:: ===== RAM EXTRA =====
:: ===============================

:: Reserva mais RAM para processos em tempo real
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v ReservedSystemPtes /t REG_DWORD /d 0 /f

:: Desativa compressao de memoria do Windows
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v CompressedMemory /t REG_DWORD /d 0 /f

:: Aumenta tamanho de pagina de memoria
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v AllocationPreference /t REG_DWORD /d 0 /f

:: Desativa zero fill de paginas (mais rapido)
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v ZeroPagedMemory /t REG_DWORD /d 0 /f

:: Aumenta limite de commit de memoria
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v CommitLimit /t REG_DWORD /d 4294967295 /f

:: Desativa trim automatico de working set
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v DisableTrimOnMemoryPressure /t REG_DWORD /d 1 /f

:: Aumenta working set maximo
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v MaximumWorkingSetSize /t REG_DWORD /d 4294967295 /f

:: Desativa balao de memoria (memory ballooning)
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v BalloonMemory /t REG_DWORD /d 0 /f

:: Aumenta limite de non-paged pool
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v NonPagedPoolMaximum /t REG_DWORD /d 4294967295 /f

:: Desativa compressao de standby list
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v StandbyListCompression /t REG_DWORD /d 0 /f

:: Prioridade de alocacao de paginas fisicas
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v PhysicalPagesAllocationPriority /t REG_DWORD /d 8 /f

:: Desativa page combining (junta paginas identicas - overhead)
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v EnablePageCombining /t REG_DWORD /d 0 /f

:: Aumenta cache de sistema em RAM
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v SystemCacheWsMinimum /t REG_DWORD /d 4096 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v SystemCacheWsMaximum /t REG_DWORD /d 65536 /f

:: Desativa reducao de working set em idle
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v DisablePageCutback /t REG_DWORD /d 1 /f

:: Desativa swapping de memoria em background
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v BackgroundOnlyMemorySwap /t REG_DWORD /d 0 /f


:: ===============================
:: ===== AUDIO FPS =====
:: ===============================

:: Reduz latencia do audio (buffer minimo)
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v SystemResponsiveness /t REG_DWORD /d 0 /f

:: Prioridade maxima pro servico de audio
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Audio" /v "Priority" /t REG_DWORD /d 6 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Audio" /v "Scheduling Category" /t REG_SZ /d "Medium" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Audio" /v "SFIO Priority" /t REG_SZ /d "Normal" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Audio" /v "Background Only" /t REG_SZ /d "False" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Audio" /v "Clock Rate" /t REG_DWORD /d 10000 /f

:: Desativa melhorias de audio (consome CPU)
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\MMDevices\Audio\Render" /v DeviceState /t REG_DWORD /d 1 /f

:: Desativa audio espacial desnecessario
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\microphone" /v Value /t REG_SZ /d "Allow" /f

:: Prioridade do processo de audio
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\audiodg.exe\PerfOptions" /v CpuPriorityClass /t REG_DWORD /d 3 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\audiodg.exe\PerfOptions" /v IoPriority /t REG_DWORD /d 1 /f

:: Buffer de audio minimo
reg add "HKLM\SYSTEM\CurrentControlSet\Services\audiosrv\Parameters" /v ServiceDllUnloadOnStop /t REG_DWORD /d 1 /f


:: ===============================
:: ===== KERNEL EXTRA =====
:: ===============================

:: Desativa Event Tracing for Windows (ETW)
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application" /v Start /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System" /v Start /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Security" /v Start /t REG_DWORD /d 0 /f

:: Desativa rastreamento de kernel circular
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Circular Kernel Context Logger" /v Start /t REG_DWORD /d 0 /f

:: Desativa NT Kernel Logger
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\NT Kernel Logger" /v Start /t REG_DWORD /d 0 /f

:: Desativa WiFi Session logger
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WIFI Session" /v Start /t REG_DWORD /d 0 /f

:: Desativa Diaglog
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DiagLog" /v Start /t REG_DWORD /d 0 /f

:: Desativa SQM logger
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SQMLogger" /v Start /t REG_DWORD /d 0 /f

:: Desativa AppModel runtime logger
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\AppModel" /v Start /t REG_DWORD /d 0 /f

:: Desativa SDDL security logger
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DefenderApiLogger" /v Start /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DefenderAuditLogger" /v Start /t REG_DWORD /d 0 /f

:: Desativa rastreamento de I/O do kernel
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\IoQoSLogger" /v Start /t REG_DWORD /d 0 /f

:: Desativa log de rede do kernel
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Microsoft-Windows-Rdp-Graphics-RdpIdd-Trace" /v Start /t REG_DWORD /d 0 /f

:: Desativa cloud experience logger
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\CloudExperienceHostOobe" /v Start /t REG_DWORD /d 0 /f

:: Desativa UserNotPresentSession logger
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\UserNotPresentSession" /v Start /t REG_DWORD /d 0 /f

powercfg -setactive SCHEME_MIN

:: ===============================
:: ===== LATENCIA DE SISTEMA =====
:: ===============================

:: Desativa delay de boot completamente
bcdedit /set bootmenupolicy standard
bcdedit /set quietboot yes
bcdedit /set advancedoptions false
bcdedit /set optionsedit false
bcdedit /timeout 0

:: Remove verificacao de assinatura de driver
bcdedit /set loadoptions DISABLE_INTEGRITY_CHECKS
bcdedit /set testsigning off

:: Desativa recuperacao automatica de boot
bcdedit /set recoveryenabled no
bcdedit /set bootstatuspolicy ignoreallfailures

:: Aumenta prioridade de boot do sistema
bcdedit /set firstmegabytepolicy UseAll
bcdedit /set truncatememory 0xFFFFFFFFFFFFFFFF
bcdedit /set avoidlowmemory 0

:: Desativa nx (data execution prevention) parcialmente
bcdedit /set nx OptIn


:: ===============================
:: ===== INTERRUPT / MSI =====
:: ===============================

:: Ativa MSI mode pra GPU (menos latencia de interrupcao)
reg add "HKLM\SYSTEM\CurrentControlSet\Enum\PCI\VEN_10DE&DEV_0000\0000\Device Parameters\Interrupt Management\MessageSignaledInterruptProperties" /v MSISupported /t REG_DWORD /d 1 /f

:: Prioridade de interrupcao da GPU
reg add "HKLM\SYSTEM\CurrentControlSet\Enum\PCI\VEN_10DE&DEV_0000\0000\Device Parameters\Interrupt Management\Affinity Policy" /v DevicePriority /t REG_DWORD /d 3 /f

:: MSI pra placa de rede
reg add "HKLM\SYSTEM\CurrentControlSet\Enum\PCI\VEN_8086&DEV_0000\0000\Device Parameters\Interrupt Management\MessageSignaledInterruptProperties" /v MSISupported /t REG_DWORD /d 1 /f

:: Prioridade de interrupcao da placa de rede
reg add "HKLM\SYSTEM\CurrentControlSet\Enum\PCI\VEN_8086&DEV_0000\0000\Device Parameters\Interrupt Management\Affinity Policy" /v DevicePriority /t REG_DWORD /d 3 /f

:: Limita MSI pra um vetor (menos overhead)
reg add "HKLM\SYSTEM\CurrentControlSet\Enum\PCI\VEN_10DE&DEV_0000\0000\Device Parameters\Interrupt Management\MessageSignaledInterruptProperties" /v MessageNumberLimit /t REG_DWORD /d 1 /f

:: Afinidade de CPU pra interrupcoes criticas
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v IRQ1Priority /t REG_DWORD /d 3 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v IRQ12Priority /t REG_DWORD /d 3 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v IRQ14Priority /t REG_DWORD /d 2 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v IRQ15Priority /t REG_DWORD /d 2 /f


:: ===============================
:: ===== TIMER / RESOLUCAO =====
:: ===============================

:: Forca resolucao de timer em 0.5ms via BCD
bcdedit /set useplatformclock true
bcdedit /set disabledynamictick yes
bcdedit /set useplatformtick yes

:: Desativa synthetic timer
bcdedit /set synthetictimer 0

:: Aumenta resolucao do clock do sistema
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v ClockInterruptFrequency /t REG_DWORD /d 10000 /f

:: Desativa coalescing de timer (agrupa chamadas - causa latencia)
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v TimerCoalescingEnabled /t REG_DWORD /d 0 /f

:: Resolucao de timer por processo
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v PerProcessTimerResolution /t REG_DWORD /d 1 /f

:: Desativa timer de alta precisao legado
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v LegacyTimerDisable /t REG_DWORD /d 1 /f

:: Frequencia de interrupcao de timer
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v InterruptTimerFrequency /t REG_DWORD /d 10000 /f

:: Desativa timer slack (adiciona imprecisao)
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v TimerSlackEnabled /t REG_DWORD /d 0 /f

:: Resolucao maxima de sleep
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v MinimumTimerResolution /t REG_DWORD /d 5000 /f


:: ===============================
:: ===== EXPLORER / SHELL =====
:: ===============================

:: Desativa animacoes do explorer
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v ExtendedUIHoverTime /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v HideFileExt /t REG_DWORD /d 0 /f

:: Desativa thumbnail cache (libera disco e CPU)
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v DisableThumbnailCache /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v DisableThumbsDBOnNetworkFolders /t REG_DWORD /d 1 /f

:: Desativa preview de arquivos
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v ShowPreviewHandlers /t REG_DWORD /d 0 /f

:: Desativa atividades recentes do explorer
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v Start_TrackDocs /t REG_DWORD /d 0 /f

:: Remove delay de menu do explorer
reg add "HKCU\Control Panel\Desktop" /v MenuShowDelay /t REG_SZ /d 0 /f

:: Desativa verificacao de arquivos de rede
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v NoNetCrawling /t REG_DWORD /d 1 /f

:: Desativa autorun de midia
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoDriveTypeAutoRun /t REG_DWORD /d 255 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoDriveTypeAutoRun /t REG_DWORD /d 255 /f

:: Desativa Windows Tips
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /v DisableSoftLanding /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /v DisableWindowsConsumerFeatures /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /v DisableCloudOptimizedContent /t REG_DWORD /d 1 /f

:: Desativa acesso rapido do explorer
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" /v ShowFrequent /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" /v ShowRecent /t REG_DWORD /d 0 /f

:: Desativa Smart Screen
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v EnableSmartScreen /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v SmartScreenEnabled /t REG_SZ /d "Off" /f

:: Aumenta velocidade de resposta do explorer
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" /v DesktopProcess /t REG_DWORD /d 1 /f

:: Desativa historico de pesquisa
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" /v SearchboxTaskbarMode /t REG_DWORD /d 0 /f

:: Desativa Widgets da taskbar
reg add "HKLM\SOFTWARE\Policies\Microsoft\Dsh" /v AllowNewsAndInterests /t REG_DWORD /d 0 /f


:: ===============================
:: ===== SEGURANCA DESATIVADA =====
:: ===============================

:: Desativa UAC completamente (menos interrupcoes)
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v EnableLUA /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v ConsentPromptBehaviorAdmin /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v ConsentPromptBehaviorUser /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v PromptOnSecureDesktop /t REG_DWORD /d 0 /f

:: Desativa verificacao de reputacao de app
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v ValidateAdminCodeSignatures /t REG_DWORD /d 0 /f

:: Desativa protecao de kernel DMA
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Kernel DMA Protection" /v DeviceEnumerationPolicy /t REG_DWORD /d 0 /f

:: Desativa Windows Defender completamente
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v DisableAntiSpyware /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v DisableAntiVirus /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v DisableBehaviorMonitoring /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v DisableOnAccessProtection /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v DisableScanOnRealtimeEnable /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v DisableIOAVProtection /t REG_DWORD /d 1 /f

:: Desativa protecao em tempo real
reg add "HKLM\SOFTWARE\Microsoft\Windows Defender\Features" /v TamperProtection /t REG_DWORD /d 4 /f

:: Desativa scanning de scripts
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\MpEngine" /v MpDisableRecovery /t REG_DWORD /d 1 /f


:: ===============================
:: ===== POWER EXTRA =====
:: ===============================

:: Plano de energia Ultimate Performance (se disponivel)
powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61

:: Desativa todos os timeouts de energia
powercfg -change -monitor-timeout-ac 0
powercfg -change -monitor-timeout-dc 0
powercfg -change -disk-timeout-ac 0
powercfg -change -disk-timeout-dc 0
powercfg -change -standby-timeout-ac 0
powercfg -change -standby-timeout-dc 0
powercfg -change -hibernate-timeout-ac 0
powercfg -change -hibernate-timeout-dc 0

:: Desativa hibernacao completamente
powercfg -h off

:: Desativa connected standby
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v CsEnabled /t REG_DWORD /d 0 /f

:: Desativa Fast Startup (causa problemas com OC)
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v HiberbootEnabled /t REG_DWORD /d 0 /f

:: Desativa sleep states avancados
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v PlatformAoAcOverride /t REG_DWORD /d 0 /f

:: Remove power throttle global
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerThrottling" /v PowerThrottlingOff /t REG_DWORD /d 1 /f

:: Desativa sensor de energia
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v EnergyEstimationEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v EventProcessorEnabled /t REG_DWORD /d 0 /f

:: Prioridade de execucao de power request
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v PowerRequestSupported /t REG_DWORD /d 1 /f

:: Desativa monitoramento de bateria (desktop)
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v BatteryDischargeAction0 /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v BatteryDischargeAction1 /t REG_DWORD /d 0 /f

:: Desativa reducao de brilho automatica
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v DimDisplayTimeout /t REG_DWORD /d 0 /f


:: ===============================
:: ===== LIMPEZA FINAL =====
:: ===============================

:: Limpa prefetch
del /q /f /s C:\Windows\Prefetch\*

:: Limpa temp do usuario
del /q /f /s %temp%\*

:: Limpa temp do sistema
del /q /f /s C:\Windows\Temp\*

:: Limpa cache de miniaturas
del /q /f /s %localappdata%\Microsoft\Windows\Explorer\thumbcache_*

:: Limpa logs do sistema
del /q /f /s C:\Windows\Logs\*

:: Limpa cache de fonte
del /q /f /s C:\Windows\ServiceProfiles\LocalService\AppData\Local\FontCache\*

:: Limpa cache do DirectX Shader
del /q /f /s %localappdata%\D3DSCache\*

:: Limpa cache de GPU shader
del /q /f /s %localappdata%\NVIDIA\DXCache\*
del /q /f /s %localappdata%\NVIDIA\GLCache\*
del /q /f /s %appdata%\NVIDIA\ComputeCache\*

:: Limpa WER (relatorios de erro)
del /q /f /s C:\ProgramData\Microsoft\Windows\WER\*

:: Limpa cache DNS
ipconfig /flushdns

:: Limpa cache de ARP
arp -d *

:: Limpa cache de NetBIOS
nbtstat -R

:: Limpa rotas de rede desnecessarias
route -f

:: Limpa cache de icones do sistema
ie4uinit.exe -show

:: ===============================
:: ===== VISUAL / DWM EXTRA =====
:: ===============================

reg add "HKLM\SOFTWARE\Microsoft\Windows\Dwm" /v OverlayTestMode /t REG_DWORD /d 5 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\Dwm" /v UseWindowedPresentation /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\Dwm" /v ForceEffectMode /t REG_DWORD /d 2 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\Dwm" /v DisallowFlip3d /t REG_DWORD /d 1 /f


:: ===============================
:: ===== REGISTRO EXTRA =====
:: ===============================

:: Aumenta tamanho do registro do sistema
reg add "HKLM\SYSTEM\CurrentControlSet\Control" /v RegistrySizeLimit /t REG_DWORD /d 4294967295 /f

:: Desativa compressao do registro
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Configuration Manager" /v RegistryLazyFlushInterval /t REG_DWORD /d 1 /f

:: Aumenta cache do registro
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Configuration Manager" /v RegistryCacheSize /t REG_DWORD /d 4096 /f

:: Flush imediato do registro
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Configuration Manager" /v FlushLazyRegistry /t REG_DWORD /d 1 /f

:: Desativa log de transacao do registro
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Configuration Manager" /v TransactionLog /t REG_DWORD /d 0 /f

:: Aumenta threads do gerenciador do registro
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Configuration Manager" /v RegistryWorkerThreads /t REG_DWORD /d 4 /f


:: ===============================
:: ===== SERVICOS EXTRA 2 =====
:: ===============================

:: Desativa servico de impressao 3D
sc stop PrintWorkflowUserSvc
sc config PrintWorkflowUserSvc start=disabled

:: Desativa servico de pagamentos NFC
sc stop SEMgrSvc
sc config SEMgrSvc start=disabled

:: Desativa Remote Desktop
sc stop TermService
sc config TermService start=disabled
sc stop UmRdpService
sc config UmRdpService start=disabled
sc stop RdpVideoMiniport
sc config RdpVideoMiniport start=disabled
sc stop TlntSvr
sc config TlntSvr start=disabled

:: Desativa assistencia remota
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Remote Assistance" /v fAllowToGetHelp /t REG_DWORD /d 0 /f

:: Desativa Windows Connect Now
sc stop wcncsvc
sc config wcncsvc start=disabled

:: Desativa servico de sincronizacao
sc stop TimeBrokerSvc
sc config TimeBrokerSvc start=disabled

:: Desativa diagnostico de memoria automatico
sc stop WdiServiceHost
sc config WdiServiceHost start=disabled
sc stop WdiSystemHost
sc config WdiSystemHost start=disabled

:: Desativa coleta de dados de app
sc stop DPS
sc config DPS start=disabled

:: Desativa programa de trabalho em segundo plano
sc stop BITS
sc config BITS start=disabled


:: ===============================
:: ===== TAREFAS AGENDADAS EXTRA 2 =====
:: ===============================

schtasks /Change /TN "\Microsoft\Windows\Application Experience\AitAgent" /Disable
schtasks /Change /TN "\Microsoft\Windows\NetTrace\GatherNetworkInfo" /Disable
schtasks /Change /TN "\Microsoft\Windows\Time Synchronization\ForceSynchronizeTime" /Disable
schtasks /Change /TN "\Microsoft\Windows\Time Synchronization\SynchronizeTime" /Disable
schtasks /Change /TN "\Microsoft\Windows\WindowsUpdate\Automatic App Update" /Disable
schtasks /Change /TN "\Microsoft\Windows\WindowsUpdate\Scheduled Start" /Disable
schtasks /Change /TN "\Microsoft\Windows\WindowsUpdate\sih" /Disable
schtasks /Change /TN "\Microsoft\Windows\WindowsUpdate\sihboot" /Disable
schtasks /Change /TN "\Microsoft\Windows\UpdateOrchestrator\Reboot" /Disable
schtasks /Change /TN "\Microsoft\Windows\UpdateOrchestrator\Report Policies" /Disable
schtasks /Change /TN "\Microsoft\Windows\UpdateOrchestrator\Schedule Scan Static Task" /Disable
schtasks /Change /TN "\Microsoft\Windows\UpdateOrchestrator\UpdateModelTask" /Disable
schtasks /Change /TN "\Microsoft\Windows\UpdateOrchestrator\USO_UxBroker" /Disable
schtasks /Change /TN "\Microsoft\Windows\Speech\SpeechModelDownloadTask" /Disable
schtasks /Change /TN "\Microsoft\Windows\Maps\MapsToastTask" /Disable
schtasks /Change /TN "\Microsoft\Windows\Maps\MapsUpdateTask" /Disable
schtasks /Change /TN "\Microsoft\Windows\NlaSvc\WiFiTask" /Disable
schtasks /Change /TN "\Microsoft\Windows\WlanSvc\CDSSync" /Disable
schtasks /Change /TN "\Microsoft\Windows\PushToInstall\LoginCheck" /Disable
schtasks /Change /TN "\Microsoft\Windows\PushToInstall\Registration" /Disable
schtasks /Change /TN "\Microsoft\Windows\Store\UsageDataReporting" /Disable
schtasks /Change /TN "\Microsoft\Windows\Store\WSTask" /Disable
schtasks /Change /TN "\Microsoft\Windows\UNP\RunUpdateNotificationMgr" /Disable


:: ===============================
:: ===== OTIMIZACAO FINAL =====
:: ===============================

:: Desativa atualizacao automatica de drivers
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Device Metadata" /v PreventDeviceMetadataFromNetwork /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DriverSearching" /v DontPromptForWindowsUpdate /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DriverSearching" /v DontSearchWindowsUpdate /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DriverSearching" /v SearchOrderConfig /t REG_DWORD /d 0 /f

:: Desativa Windows Update completamente
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v DisableWindowsUpdateAccess /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v NoAutoUpdate /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v AUOptions /t REG_DWORD /d 1 /f

:: Desativa instalacao automatica de app da Store
reg add "HKLM\SOFTWARE\Policies\Microsoft\WindowsStore" /v AutoDownload /t REG_DWORD /d 2 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\WindowsStore" /v DisableStoreApps /t REG_DWORD /d 1 /f

:: Desativa Search Highlights
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v EnableDynamicContentInWSB /t REG_DWORD /d 0 /f

:: Desativa Bing no menu iniciar
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v BingSearchEnabled /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v CortanaConsent /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v AllowSearchToUseLocation /t REG_DWORD /d 0 /f

:: Desativa OneDrive
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\OneDrive" /v DisableFileSyncNGSC /t REG_DWORD /d 1 /f
taskkill /f /im OneDrive.exe
%SystemRoot%\System32\OneDriveSetup.exe /uninstall

:: Desativa Cortana
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v AllowCortana /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\Experience\AllowCortana" /v value /t REG_DWORD /d 0 /f

:: Desativa telemetria de app
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v AITEnable /t REG_DWORD /d 0 /f

:: Aplica plano de energia final
powercfg -setactive SCHEME_MIN

bcdedit /set useplatformtick yes
bcdedit /set disabledynamictick yes

sc stop "SysMain"
sc config "SysMain" start=disabled

sc stop "WSearch"
sc config "WSearch" start=disabled

sc stop "DiagTrack"
sc config "DiagTrack" start=disabled

sc stop "WerSvc"
sc config "WerSvc" start=disabled

sc stop "PcaSvc"
sc config "PcaSvc" start=disabled

sc stop "TrkWks"
sc config "TrkWks" start=disabled

sc stop "RemoteRegistry"
sc config "RemoteRegistry" start=disabled

sc stop "seclogon"
sc config "seclogon" start=disabled

bcdedit /set disabledynamictick yes
bcdedit /set useplatformtick yes
bcdedit /set tscsyncpolicy Enhanced

reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\0cc5b647-c1df-4637-891a-dec35c318583\0cc5b647-c1df-4637-891a-dec35c318583" /v ValueMax /t REG_DWORD /d 0 /f

reg add "HKCU\System\GameConfigStore" /v GameDVR_FSEBehaviorMode /t REG_DWORD /d 2 /f
