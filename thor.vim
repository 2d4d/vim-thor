" VIM syntax file
" Language: THOR log files
" Author: Mathias Stuhlmacher
" Reference: https://github.com/stuhli/vim-thor

" check for existing syntax files
if exists("b:current_syntax")
    finish
endif

" regex for IP address
syn match ThorIp /\(\(25\_[0-5]\|2\_[0-4]\_[0-9]\|\_[01]\?\_[0-9]\_[0-9]\?\)\.\)\{3\}\(25\_[0-5]\|2\_[0-4]\_[0-9]\|\_[01]\?\_[0-9]\_[0-9]\?\)/

" important matches - analysis
syn match ThorImportant '\sAlert:\s'
syn match ThorImportant '^Alert:\s'
syn match ThorImportant 'ALERTS:'
syn match ThorImportant '\sError:\s'
syn match ThorImportant '^Error:\s'
syn match ThorImportant 'ERRORS:'
syn match ThorImportant 'Keyword found in Log Entry'
syn match ThorImportant 'Keyword found in eventlog entry'
syn match ThorImportant 'Malware file found'
syn match ThorImportant 'Malware filename in Log Entry found'
syn match ThorImportant 'Possibly Dangerous file found'
syn match ThorImportant '\sWarning:\s'
syn match ThorImportant '^Warning:\s'
syn match ThorImportant 'WARNINGS:'
syn match ThorImportant 'critical Sigma match on Eventlog record'
syn match ThorImportant 'high Sigma match on eventlog entry'
syn match ThorImportant 'high Sigma match on Eventlog record'

" important matches - ThorDb
syn match ThorImportant 'Could not create ThorDB table (most likely caused by insufficient privileges)'
syn match ThorImportant 'Found last scan start with same context'
syn match ThorImportant 'Previous scan was interrupted, resuming scan'
syn match ThorImportant 'Successfully created ThorDB'
syn match ThorImportant 'Successfully closed ThorDB'
syn match ThorImportant 'Successfully opened ThorDB'

" important matches - administration / qa
syn match ThorImportant 'Added virtual mapping'
syn match ThorImportant 'Argument List: \[.*\]'
syn match ThorImportant 'Available physical memory dropped below 50 MB'
syn match ThorImportant 'Effective argument List: \[.*\]'
syn match ThorImportant 'Following alert, warning, notice and debug messages are silenced due to license restrictions'
syn match ThorImportant 'Intense Scan Mode'
syn match ThorImportant 'Last scanned Element'
syn match ThorImportant 'Maximum runtime has exceeded, killing THOR'
syn match ThorImportant 'No valid license file found'
syn match ThorImportant 'Process with high memory usage'
syn match ThorImportant 'RAR decompress is disabled'
syn match ThorImportant 'Received interrupt signal.'
syn match ThorImportant 'Run on system: \S\+'
syn match ThorImportant 'System has been identified as domain controller'
syn match ThorImportant 'System is a domain controller'
syn match ThorImportant 'System is not a domain controller'
syn match ThorImportant "Signature file is older than \d\{1,3} days. Run 'thor-util upgrade' to get new signatures."
syn match ThorImportant 'Stopping THOR scan in order to avoid a memory outage (use --norescontrol to avoid this)'
syn match ThorImportant 'System Type: \S\+'
syn match ThorImportant "THOR should be started as 'As Administrator' to have full access to files, process memory and the security eventlog"
syn match ThorImportant "THOR should be started as 'root' user to have full access to files"
syn match ThorImportant 'THOR was terminated by interrupt command.'
syn match ThorImportant 'Thor Scan finished'
syn match ThorImportant 'Trial license detected'
syn match ThorImportant 'UPX decompress is disabled'
syn match ThorImportant 'User has admin rights: no'
syn match ThorImportant 'User has admin rights: yes'

" less important matches
syn match ThorBodyField '\sNotice:\s'
syn match ThorBodyField '^Notice:\s'

" highlight hashes for easier copypaste
" MD5
"syn match ThorHash '\s[a-f0-9]\{32}'
" SHA1
"syn match ThorHash '\s[a-f0-9]\{40}'
" SHA256
syn match ThorHash '\s[a-f0-9]\{64}'

" modules
syn match ThorModule 'MODULE:'
syn match ThorModule 'MODULE: AenService'
syn match ThorModule 'MODULE: Amcache'
syn match ThorModule 'MODULE: Apache2Polarion'
syn match ThorModule 'MODULE: Archive'
syn match ThorModule 'MODULE: ArchiveScan'
syn match ThorModule 'MODULE: ArchiveScan'
syn match ThorModule 'MODULE: AtJobs'
syn match ThorModule 'MODULE: Autoruns'
syn match ThorModule 'MODULE: CheckString'
syn match ThorModule 'MODULE: Control'
syn match ThorModule 'MODULE: DNSCache'
syn match ThorModule 'MODULE: DoublePulsar'
syn match ThorModule 'MODULE: DumpScan'
syn match ThorModule 'MODULE: dwmrcs'
syn match ThorModule 'MODULE: EnvCheck'
syn match ThorModule 'MODULE: Eventlog'
syn match ThorModule 'MODULE: Events'
syn match ThorModule 'MODULE: EVTX'
syn match ThorModule 'MODULE: Filescan'
syn match ThorModule 'MODULE: Firewall'
syn match ThorModule 'MODULE: GroupsXML'
syn match ThorModule 'MODULE: Hosts'
syn match ThorModule 'MODULE: HotfixCheck'
syn match ThorModule 'MODULE: Init'
syn match ThorModule 'MODULE: LSASessions'
syn match ThorModule 'MODULE: Lnk'
syn match ThorModule 'MODULE: LogScan'
syn match ThorModule 'MODULE: LoggedIn'
syn match ThorModule 'MODULE: Mutex'
syn match ThorModule 'MODULE: NetworkSessions'
syn match ThorModule 'MODULE: NetworkShares'
syn match ThorModule 'MODULE: OpenFiles'
syn match ThorModule 'MODULE: PerfHost'
syn match ThorModule 'MODULE: Pipes'
syn match ThorModule 'MODULE: Polarion'
syn match ThorModule 'MODULE: PolarionSvnserve'
syn match ThorModule 'MODULE: PostgreSQLPolarion'
syn match ThorModule 'MODULE: Prefetch'
syn match ThorModule 'MODULE: ProcessCheck'
syn match ThorModule 'MODULE: ProcessConnections'
syn match ThorModule 'MODULE: ProcessHandles'
syn match ThorModule 'MODULE: RegistryChecks'
syn match ThorModule 'MODULE: RegistryHive'
syn match ThorModule 'MODULE: Report'
syn match ThorModule 'MODULE: Rescontrol'
syn match ThorModule 'MODULE: Rootkit'
syn match ThorModule 'MODULE: RuntimeWatcher'
syn match ThorModule 'MODULE: SHIMCache'
syn match ThorModule 'MODULE: ScheduledTasks'
syn match ThorModule 'MODULE: ServiceCheck'
syn match ThorModule 'MODULE: Sigma'
syn match ThorModule 'MODULE: SignalHandler'
syn match ThorModule 'MODULE: Startup'
syn match ThorModule 'MODULE: ssh-agent'
syn match ThorModule 'MODULE: sshd'
syn match ThorModule 'MODULE: TeamViewer'
syn match ThorModule 'MODULE: ThorDB'
syn match ThorModule 'MODULE: UserDir'
syn match ThorModule 'MODULE: Users'
syn match ThorModule 'MODULE: VulnerabilityCheck'
syn match ThorModule 'MODULE: WER'
syn match ThorModule 'MODULE: WMIPersistence'
syn match ThorModule 'MODULE: WMIStartup'
syn match ThorModule 'MODULE: Zabbix Agent'

" messages
syn match ThorMessage 'MESSAGE:'
syn match ThorMessage 'MESSAGE: A user named guest is active'
syn match ThorMessage 'MESSAGE: Activating soft mode due to low cpu count'
syn match ThorMessage 'MESSAGE: Adding \d\+ malware domains to yara process memory scan'
syn match ThorMessage 'MESSAGE: Adding custom directory exclude \S'
syn match ThorMessage 'MESSAGE: Adding rule set from .* as .* type'
syn match ThorMessage 'MESSAGE: Adding sigma logsources from \S\+'
syn match ThorMessage 'MESSAGE: Adding sigma rules from \d\+ files in \S\+'
syn match ThorMessage 'MESSAGE: Amcache entry'
syn match ThorMessage 'MESSAGE: Analyzing Amcache Hive'
syn match ThorMessage 'MESSAGE: Analyzing RUN Key ...'
syn match ThorMessage 'MESSAGE: Analyzing eventlog'
syn match ThorMessage 'MESSAGE: Analyzing prefetch directory'
syn match ThorMessage 'MESSAGE: Analyzing shellbag'
syn match ThorMessage 'MESSAGE: Analyzing SHIM Cache'
syn match ThorMessage 'MESSAGE: At Job detected'
syn match ThorMessage 'MESSAGE: Autoruns element located in a suspicious location'
syn match ThorMessage 'MESSAGE: Autostart entry'
syn match ThorMessage 'MESSAGE: Begin Time: \p\{3} \p\{3}\s\{1,2}\d\{1,2} \d\d:\d\d:\d\d \d\d\d\d'
syn match ThorMessage 'MESSAGE: CPU Count: \d\+'
syn match ThorMessage 'MESSAGE: Checking file for WMI persistence'
syn match ThorMessage 'MESSAGE: Checking for malicious Events (Windows objects)'
syn match ThorMessage 'MESSAGE: Checking for rootkit indicators'
syn match ThorMessage 'MESSAGE: Checking open files'
syn match ThorMessage 'MESSAGE: Connection output threshold reached. Output truncated.'
syn match ThorMessage "MESSAGE: Couldn't find any \S\+"
syn match ThorMessage 'MESSAGE: Could not open Eventlog \S\+'
syn match ThorMessage 'MESSAGE: Could not query process handles'
syn match ThorMessage 'MESSAGE: Could not read logfile'
syn match ThorMessage 'MESSAGE: Could not read username for process'
syn match ThorMessage 'MESSAGE: Currently logged in user'
syn match ThorMessage 'MESSAGE: DNS cache entry'
syn match ThorMessage 'MESSAGE: Deselected features: .*, \S\+'
syn match ThorMessage 'MESSAGE: Deselected modules: .*, \S\+'
syn match ThorMessage 'MESSAGE: End Time: \p\{3} \p\{3}\s\{1,2}\d\{1,2} \d\d:\d\d:\d\d \d\d\d\d'
syn match ThorMessage 'MESSAGE: Env variable'
syn match ThorMessage 'MESSAGE: Error Control for Service has an invalid value'
syn match ThorMessage 'MESSAGE: Error Control for Service is 0x0'
syn match ThorMessage 'MESSAGE: Error Report - Found AppCrash'
syn match ThorMessage 'MESSAGE: Error Report - Found AppHang'
syn match ThorMessage 'MESSAGE: Error Report - Found AppHang in uncommon folder'
syn match ThorMessage 'MESSAGE: Error Report - Found Critical'
syn match ThorMessage 'MESSAGE: Error Report - Found Kernel'
syn match ThorMessage 'MESSAGE: Error Report - Found NonCritical'
syn match ThorMessage 'MESSAGE: Established connection'
syn match ThorMessage 'MESSAGE: Evil user in list of running processes'
syn match ThorMessage 'MESSAGE: Evil user match in file handle details'
syn match ThorMessage 'MESSAGE: Failure command defined for service'
syn match ThorMessage 'MESSAGE: Finished module'
syn match ThorMessage 'MESSAGE: Finished scanning Eventlog \S\+'
syn match ThorMessage 'MESSAGE: Finished scanning Eventlog Windows PowerShell'
syn match ThorMessage 'MESSAGE: Firewall Rule Incoming'
syn match ThorMessage 'MESSAGE: Fixed typical THOR flag error'
syn match ThorMessage 'MESSAGE: Found decryptable password in Groups.xml'
syn match ThorMessage 'MESSAGE: Found decryptable password in Registry'
syn match ThorMessage 'MESSAGE: Found entry in suspicious directory (indicates a binary execution at a given date)'
syn match ThorMessage 'MESSAGE: Found task location in registry hive'
syn match ThorMessage 'MESSAGE: For details see the log files written to \[.*\]'
syn match ThorMessage 'MESSAGE: Hosts entry'
syn match ThorMessage 'MESSAGE: Hotfix'
syn match ThorMessage 'MESSAGE: Ignoring rule set from .* due to operating system type'
syn match ThorMessage 'MESSAGE: Ignoring rule set from .* due to soft mode'
syn match ThorMessage 'MESSAGE: IP Address \d\{1,2}:'
syn match ThorMessage 'MESSAGE: IPTables is configured to accept any traffic that is not explicitly dropped'
syn match ThorMessage 'MESSAGE: IPTables is unconfigured'
syn match ThorMessage 'MESSAGE: Keyword found in registry entry'
syn match ThorMessage 'MESSAGE: Known suspicious user session found'
syn match ThorMessage 'MESSAGE: Language: \w\w-\w\w, Zone: \w\{3,4}'
syn match ThorMessage 'MESSAGE: Language: \w\w_\w\w, Zone: \w\{3,4}'
syn match ThorMessage 'MESSAGE: Last logon of user happened on a Sunday'
syn match ThorMessage 'MESSAGE: License file found'
syn match ThorMessage 'MESSAGE: Listening process'
syn match ThorMessage 'MESSAGE: Lowering THOR cpu usage to 70% due to soft mode'
syn match ThorMessage 'MESSAGE: Lowering THOR process priority due to soft mode'
syn match ThorMessage 'MESSAGE: Malicious archived file found'
syn match ThorMessage 'MESSAGE: Max. file size to be scanned is .* MB, use --max_file_size to increase the limit'
syn match ThorMessage 'MESSAGE: medium Sigma match on eventlog entry'
syn match ThorMessage 'MESSAGE: Memory in Megabyte: \d\+'
syn match ThorMessage 'MESSAGE: Netbios Domain: \w\+'
syn match ThorMessage 'MESSAGE: No csv report file will be written'
syn match ThorMessage 'MESSAGE: No custom eventlog excludes defined'
syn match ThorMessage 'MESSAGE: No custom registry excludes defined'
syn match ThorMessage 'MESSAGE: No debugger registered for .* that is good'
syn match ThorMessage 'MESSAGE: No html report file will be written'
syn match ThorMessage 'MESSAGE: No json report file will be written'
syn match ThorMessage 'MESSAGE: No presence of DoublePulsar RDP implant'
syn match ThorMessage 'MESSAGE: No presence of DoublePulsar SMB implant'
syn match ThorMessage 'MESSAGE: Non default or uncommon'
syn match ThorMessage 'MESSAGE: Noteworthy archived file found'
syn match ThorMessage 'MESSAGE: Noteworthy DNS cache entry (suspicious TLD)'
syn match ThorMessage 'MESSAGE: Noticable Event ID'
syn match ThorMessage 'MESSAGE: Noticable file name in Amcache entry found'
syn match ThorMessage 'MESSAGE: Noticable file name in Log Entry found'
syn match ThorMessage 'MESSAGE: Noticable file name in eventlog entry found'
syn match ThorMessage 'MESSAGE: Noticable file name in link file found'
syn match ThorMessage 'MESSAGE: Noticable file name in registry hive entries found'
syn match ThorMessage 'MESSAGE: Noticable file name in registry hive entry found'
syn match ThorMessage 'MESSAGE: Noticable file name in registry entry found'
syn match ThorMessage 'MESSAGE: Noticable file name in SHIM Cache found'
syn match ThorMessage 'MESSAGE: Noticeable startup element WMI Run Key Evaluation'
syn match ThorMessage 'MESSAGE: Noticeable startup program WMI Run Key Evaluation'
syn match ThorMessage 'MESSAGE: Opened busy registry hive directly via MFT'
syn match ThorMessage 'MESSAGE: Outdated System - No hotfixes installed for the last 90 days.'
syn match ThorMessage 'MESSAGE: Platform DeepEval'
syn match ThorMessage 'MESSAGE: Platform:'
syn match ThorMessage 'MESSAGE: Process info'
syn match ThorMessage 'MESSAGE: RUN Key element'
syn match ThorMessage 'MESSAGE: Rare process start (<\d{1} executions) on the system'
syn match ThorMessage 'MESSAGE: Rare process start (<\d{1} executions) in suspicious location'
syn match ThorMessage 'MESSAGE: Reading iocs from .* as .* type'
syn match ThorMessage 'MESSAGE: Recently created profile'
syn match ThorMessage 'MESSAGE: Recently logged in user account'
syn match ThorMessage 'MESSAGE: Recently modified profile'
syn match ThorMessage 'MESSAGE: Results'
syn match ThorMessage 'MESSAGE: Running as user: \S\+'
syn match ThorMessage 'MESSAGE: SHIM Entry'
syn match ThorMessage 'MESSAGE: Scan took .* secs'
syn match ThorMessage 'MESSAGE: Scanning .* RECURSIVE'
syn match ThorMessage "MESSAGE: Scanning path '.*' ..."
syn match ThorMessage 'MESSAGE: Scanning registry'
syn match ThorMessage 'MESSAGE: Scanning target (default mode)'
syn match ThorMessage 'MESSAGE: Scheduled task found'
syn match ThorMessage 'MESSAGE: Selected features: .*, \S\+'
syn match ThorMessage 'MESSAGE: Selected modules: \S'
syn match ThorMessage 'MESSAGE: Selected modules: .*, \S\+'
syn match ThorMessage 'MESSAGE: Service entry'
syn match ThorMessage 'MESSAGE: Service seems to be vulnerable to privilege escalation - unquoted service paths'
syn match ThorMessage 'MESSAGE: Service with rare permissions on executable'
syn match ThorMessage 'MESSAGE: Session detected'
syn match ThorMessage 'MESSAGE: Share detected'
syn match ThorMessage 'MESSAGE: Sigma Database: \S\+'
syn match ThorMessage 'MESSAGE: Sigma rule triggered more than 10 times. Future matches will be suppressed. To show all matches use --showall.'
syn match ThorMessage 'MESSAGE: Signature Database: \d\{4}/\d\d/\d\d-\d\{6}'
syn match ThorMessage 'MESSAGE: Skipping double check due to --lab flag'
syn match ThorMessage 'MESSAGE: Skipping entries that are older than Mon Jan  1 00:00:00 0001 due to lookback for module'
syn match ThorMessage 'MESSAGE: Skipping module in resume mode - module has already been processed'
syn match ThorMessage 'MESSAGE: Soft Scan Mode'
syn match ThorMessage 'MESSAGE: Spectre / Meltdown related Microsoft Patch from 03. January 2018 cannot be applied on this system due to missing key'
syn match ThorMessage 'MESSAGE: Spectre / Meltdown related Microsoft Patch from 03. January 2018 is applicable on this system'
syn match ThorMessage 'MESSAGE: Starting module'
syn match ThorMessage 'MESSAGE: Startup Element'
syn match ThorMessage 'MESSAGE: Stopping log scan due to increasing file size'
syn match ThorMessage 'MESSAGE: Successfully compiled .* rules'
syn match ThorMessage 'MESSAGE: Successfully compiled \d\+ STIXv2 indicators (skipped \d\+ indicators)'
syn match ThorMessage 'MESSAGE: Successfully compiled \d\+ custom directory excludes'
syn match ThorMessage 'MESSAGE: Successfully compiled \d\+ false positive filters'
syn match ThorMessage 'MESSAGE: Successfully compiled \d\+ file type signatures'
syn match ThorMessage 'MESSAGE: Successfully compiled \d\+ filename ioc strings and \d\+ filename ioc regexs'
syn match ThorMessage 'MESSAGE: Successfully compiled \d\+ keyword ioc strings'
syn match ThorMessage 'MESSAGE: Successfully compiled \d\+ malicious handles and \d\+ regex malicious handles'
syn match ThorMessage 'MESSAGE: Successfully compiled \d\+ malware and \d\+ false positive hashes'
syn match ThorMessage 'MESSAGE: Successfully compiled \d\+ malware domains'
syn match ThorMessage 'MESSAGE: Successfully compiled \d\+ named pipe ioc strings and \d\+ named pipe ioc regexs'
syn match ThorMessage 'MESSAGE: Successfully lowered the THOR process priority'
syn match ThorMessage 'MESSAGE: Suspicious archived file found'
syn match ThorMessage 'MESSAGE: Suspicious Event ID'
syn match ThorMessage 'MESSAGE: Suspicious failure command defined for service'
syn match ThorMessage 'MESSAGE: Suspicious file found'
syn match ThorMessage 'MESSAGE: Suspicious file found in skipped directory'
syn match ThorMessage 'MESSAGE: Suspicious file name in Amcache entry found'
syn match ThorMessage 'MESSAGE: Suspicious file name in Log Entry found'
syn match ThorMessage 'MESSAGE: Suspicious file name in Shellbag entry found'
syn match ThorMessage 'MESSAGE: Suspicious file name in SHIM Cache found'
syn match ThorMessage 'MESSAGE: Suspicious file name in TARBZ2 detected'
syn match ThorMessage 'MESSAGE: Suspicious file name in TARGZ detected'
syn match ThorMessage 'MESSAGE: Suspicious file name in eventlog entry found'
syn match ThorMessage 'MESSAGE: Suspicious file name in link file found'
syn match ThorMessage 'MESSAGE: Suspicious file name in registry entry found'
syn match ThorMessage 'MESSAGE: Suspicious file name in registry hive entries found'
syn match ThorMessage 'MESSAGE: Suspicious file name in registry hive entry found'
syn match ThorMessage 'MESSAGE: Suspicious file name in ZIP detected'
syn match ThorMessage 'MESSAGE: Suspicious logged in user name'
syn match ThorMessage 'MESSAGE: Suspicious Service Type Combiation'
syn match ThorMessage 'MESSAGE: Suspicious user found'
syn match ThorMessage 'MESSAGE: Suspicious Trojan/Backdoor Local Port defined in Firewall rule'
syn match ThorMessage 'MESSAGE: suspicious named pipe found'
syn match ThorMessage 'MESSAGE: Syslog Export: off'
syn match ThorMessage 'MESSAGE: Syslog Export: on'
syn match ThorMessage 'MESSAGE: System Uptime: .* days'
syn match ThorMessage 'MESSAGE: System has not been .* system shutdown.'
syn match ThorMessage 'MESSAGE: System has been set to use all CPU cores'
syn match ThorMessage 'MESSAGE: Task'
syn match ThorMessage 'MESSAGE: The following paths will be scanned: \S'
syn match ThorMessage 'MESSAGE: Thor Build: .* (\d\{4}-\d\d-\d\d \d\d:\d\d:\d\d)'
syn match ThorMessage 'MESSAGE: Thor Scan started'
syn match ThorMessage 'MESSAGE: Thor Version: \d\+.\d\+.\d\+'
syn match ThorMessage 'MESSAGE: Tomcat credentials weakness'
syn match ThorMessage 'MESSAGE: Uncommon size of registry key'
syn match ThorMessage 'MESSAGE: User account'
syn match ThorMessage 'MESSAGE: WMI info'
syn match ThorMessage 'MESSAGE: Working Directory: \S\+'
syn match ThorMessage 'MESSAGE: Writing csv report file to: \S\+'
syn match ThorMessage 'MESSAGE: Writing html report file to: \S\+'
syn match ThorMessage 'MESSAGE: Writing report file to: \S\+'
syn match ThorMessage 'MESSAGE: YARA Rule Match in eventlog entry'
syn match ThorMessage 'MESSAGE: YARA Rule Match in Log Entry'
syn match ThorMessage 'MESSAGE: YARA Rule Match in registry entry'
syn match ThorMessage 'MESSAGE: YARA Rule Match in registry hive entries'
syn match ThorMessage 'MESSAGE: YARA Rule Match in registry hive entry'
syn match ThorMessage 'MESSAGE: YARA Rule Match in scheduled task'
syn match ThorMessage 'MESSAGE: YARA rule match on process memory'
syn match ThorMessage 'MESSAGE: YARA Score Rule Match'

" scan ID
syn match ThorScanid 'SCANID:\s\S\+'
syn match ThorScanid 'ScanID:\s\S\+'

" fields
syn match ThorBodyField 'ACCESSED:'
syn match ThorBodyField 'ACTIVE:'
syn match ThorBodyField 'ACTIVE_MODULE:'
syn match ThorBodyField 'APPPATH:'
syn match ThorBodyField 'APPPATH_\d\{1,2}:'
syn match ThorBodyField 'ARCH:'
syn match ThorBodyField 'ARCHIVE:'
syn match ThorBodyField 'ARCHIVE_TYPE:'
syn match ThorBodyField 'ARGUMENTS:'
syn match ThorBodyField 'AUTHOR_\d\{1,2}:'
syn match ThorBodyField 'BADPWCOUNT:'
syn match ThorBodyField 'CAPTION:'
syn match ThorBodyField 'CHANGED:'
syn match ThorBodyField 'CHUNK_OFFSET:'
syn match ThorBodyField 'CLIENT:'
syn match ThorBodyField 'CLIENT_TYPE:'
syn match ThorBodyField 'CMD:'
syn match ThorBodyField 'COMMAND:'
syn match ThorBodyField 'COMMENT:'
syn match ThorBodyField 'COMPANY:'
syn match ThorBodyField 'CONNECTION_COUNT:'
syn match ThorBodyField 'CONTEXT:'
syn match ThorBodyField 'COUND:'
syn match ThorBodyField 'COUNT:'
syn match ThorBodyField 'CORES:'
syn match ThorBodyField 'CPU_COUNT:'
syn match ThorBodyField 'CREATED:'
syn match ThorBodyField 'CURRENT_ELEMENT_\d\{1,2}:'
syn match ThorBodyField 'CURRENT_PATH:'
syn match ThorBodyField 'DATE:'
syn match ThorBodyField 'DATE_\d\{1,2}:'
syn match ThorBodyField 'DESC:'
syn match ThorBodyField 'DESCRIPTION:'
syn match ThorBodyField 'DESC_\d\{1,2}:'
syn match ThorBodyField 'DOMAIN:'
syn match ThorBodyField 'ELEMENT:'
syn match ThorBodyField 'ENABLED:'
syn match ThorBodyField 'ENTRIES:'
syn match ThorBodyField 'ENTRY:'
syn match ThorBodyField 'ENTRY_\d\{1,2}:'
syn match ThorBodyField 'ERROR:'
syn match ThorBodyField 'ERROR_\d\{1,2}:'
syn match ThorBodyField 'EVENTCONSUMER:'
syn match ThorBodyField 'EVENTCONSUMERNAME:'
syn match ThorBodyField 'EVENTFILTER:'
syn match ThorBodyField 'EVENTFILTERNAME:'
syn match ThorBodyField 'EVENT_CHANNEL:'
syn match ThorBodyField 'EVENT_COMPUTER:'
syn match ThorBodyField 'EVENT_ID:'
syn match ThorBodyField 'EVENT_LEVEL:'
syn match ThorBodyField 'EVENT_TIME:'
syn match ThorBodyField 'EXE:'
syn match ThorBodyField 'EXE_\d\{1,2}:'
syn match ThorBodyField 'EXE_MAGIC:'
syn match ThorBodyField 'EXE_MODE:'
syn match ThorBodyField 'EXE_OWNER:'
syn match ThorBodyField 'EXECUTABLE:'
syn match ThorBodyField 'EXEC_FLAG:'
syn match ThorBodyField 'EXISTS_\d\{1,2}:'
syn match ThorBodyField 'EXISTS_\d\{1,2}_\d\{1,2}:'
syn match ThorBodyField 'EXPIRES:'
syn match ThorBodyField 'EXT:'
syn match ThorBodyField 'FALSEPOSITIVES_\d\{1,2}:'
syn match ThorBodyField 'FAULT_IN_MODULE:'
syn match ThorBodyField 'FAULT_IN_MODULE_\d\{1,2}:'
syn match ThorBodyField 'FILE:'
syn match ThorBodyField 'FILE_\d\{1,2}:'
syn match ThorBodyField 'FILE_\d\{1,2}_\d\{1,2}:'
syn match ThorBodyField 'FILE_EXISTS:'
syn match ThorBodyField 'FILTERTYPE:'
syn match ThorBodyField 'FIRST_BYTES:'
syn match ThorBodyField 'FIRSTBYTES:'
syn match ThorBodyField 'FIRSTBYTES_\d\{1,2}:'
syn match ThorBodyField 'FIRSTBYTES_\d\{1,2}_\d\{1,2}:'
syn match ThorBodyField 'FIRST_RUN:'
syn match ThorBodyField 'FULL_NAME:'
syn match ThorBodyField 'GROUPID:'
syn match ThorBodyField 'GUID:'
syn match ThorBodyField 'HIVE:'
syn match ThorBodyField 'HOME:'
syn match ThorBodyField 'HOSTNAME:'
syn match ThorBodyField 'HOTFIX_ID:'
syn match ThorBodyField 'IDLE:'
syn match ThorBodyField 'IMAGE_NAME:'
syn match ThorBodyField 'IMAGE_PATH:'
syn match ThorBodyField 'IMPHASH:'
syn match ThorBodyField 'INSTALLED_BY:'
syn match ThorBodyField 'INSTALLED_ON:'
syn match ThorBodyField 'IP:'
syn match ThorBodyField 'IS_ADMIN:'
syn match ThorBodyField 'JOB:'
syn match ThorBodyField 'KERNEL_\S\+:'
syn match ThorBodyField 'KEY:'
syn match ThorBodyField 'KEYWORD:'
syn match ThorBodyField 'LASTRUN:'
syn match ThorBodyField 'LAST_LOGON:'
syn match ThorBodyField 'LAST_RESULT:'
syn match ThorBodyField 'LAST_RUN:'
syn match ThorBodyField 'LAST_STOPPED:'
syn match ThorBodyField 'LAUNCH_STRING:'
syn match ThorBodyField 'LEGAL_COPYRIGHT:'
syn match ThorBodyField 'LICENSE:'
syn match ThorBodyField 'LISTEN_PORTS:'
syn match ThorBodyField 'LOCATION:'
syn match ThorBodyField 'LOCKED:'
syn match ThorBodyField 'LOG_ACCESSED:'
syn match ThorBodyField 'LOG_CREATED:'
syn match ThorBodyField 'LOG_MODIFIED:'
syn match ThorBodyField 'LOGONTYPE:'
syn match ThorBodyField 'MAX_RUNTIME:'
syn match ThorBodyField 'MATCHED_STRINGS:'
syn match ThorBodyField 'MATCHING_STRINGS:'
syn match ThorBodyField 'MATCHED_\d\{1,2}:'
syn match ThorBodyField 'MATCH_STRINGS:'
syn match ThorBodyField 'MD5:'
syn match ThorBodyField 'MD5_\d\{1,2}:'
syn match ThorBodyField 'MD5_\d\{1,2}_\d\{1,2}:'
syn match ThorBodyField 'MODIFIED:'
syn match ThorBodyField 'MODULE:'
syn match ThorBodyField 'MODULE_\d\{1,2}:'
syn match ThorBodyField 'NAME:'
syn match ThorBodyField 'NAME_\d\{1,2}:'
syn match ThorBodyField 'NEXTRUN:'
syn match ThorBodyField 'NOTICES:'
syn match ThorBodyField 'NO_EXPIRE:'
syn match ThorBodyField 'NUM_LOCKS:'
syn match ThorBodyField 'NUM_LOGONS:'
syn match ThorBodyField 'NUM_OPENS:'
syn match ThorBodyField 'ORIGINAL_PATH:'
syn match ThorBodyField 'OTHER_DOMAINS:'
syn match ThorBodyField 'OWNER:'
syn match ThorBodyField 'OWNER_\d\{1,2}:'
syn match ThorBodyField 'PARENT:'
syn match ThorBodyField 'PASS_AGE:'
syn match ThorBodyField 'PASSWORD:'
syn match ThorBodyField 'PATH:'
syn match ThorBodyField 'PATTERN:'
syn match ThorBodyField 'PERM:'
syn match ThorBodyField 'PERMISSIONS:'
syn match ThorBodyField 'PID:'
syn match ThorBodyField 'PIPE:'
syn match ThorBodyField 'PORT:'
syn match ThorBodyField 'PPID:'
syn match ThorBodyField 'PROC:'
syn match ThorBodyField 'PROCESS:'
syn match ThorBodyField 'PRODUCT:'
syn match ThorBodyField 'REASON:'
syn match ThorBodyField 'REASON_\d\{1,2}:'
syn match ThorBodyField 'REGISTRY_PATH:'
syn match ThorBodyField 'REF:'
syn match ThorBodyField 'REFERENCE:'
syn match ThorBodyField 'REF_\d\{1,2}:'
syn match ThorBodyField 'REPLACED:'
syn match ThorBodyField 'RIP:'
syn match ThorBodyField 'RPORT:'
syn match ThorBodyField 'RULE:'
syn match ThorBodyField 'RULEDATE:'
syn match ThorBodyField 'RULEDATE_\d\{1,2}:'
syn match ThorBodyField 'RULE_\S\+:'
syn match ThorBodyField 'RULENAME_\d\{1,2}:'
syn match ThorBodyField 'RUNLEVEL:'
syn match ThorBodyField 'SCANNED:'
syn match ThorBodyField 'SCANNER:'
syn match ThorBodyField 'SCORE:'
syn match ThorBodyField 'SCORE_\d\{1,2}:'
syn match ThorBodyField 'SERVER:'
syn match ThorBodyField 'SERVICE_NAME:'
syn match ThorBodyField 'SIGNATURE:'
syn match ThorBodyField 'SIGTYPE:'
syn match ThorBodyField 'SIGTYPE_\d\{1,2}:'
syn match ThorBodyField 'SHA1:'
syn match ThorBodyField 'SHA1_\d\{1,2}:'
syn match ThorBodyField 'SHA1_\d\{1,2}_\d\{1,2}:'
syn match ThorBodyField 'SHA256:'
syn match ThorBodyField 'SHA256_\d\{1,2}:'
syn match ThorBodyField 'SHA256_\d\{1,2}_\d\{1,2}:'
syn match ThorBodyField 'SHARE_NAME:'
syn match ThorBodyField 'SHELL:'
syn match ThorBodyField 'SIZE:'
syn match ThorBodyField 'SIZE_\d\{1,2}:'
syn match ThorBodyField 'START:'
syn match ThorBodyField 'STARTS:'
syn match ThorBodyField 'START_TYPE:'
syn match ThorBodyField 'STATUS:'
syn match ThorBodyField 'STRING:'
syn match ThorBodyField 'STRING:'
syn match ThorBodyField 'SUBSCORE_\d\{1,2}:'
syn match ThorBodyField 'TAGS:'
syn match ThorBodyField 'TAGS_\d\{1,2}:'
syn match ThorBodyField 'TARGET:'
syn match ThorBodyField 'TARGET_SIZE:'
syn match ThorBodyField 'TASK_PATH:'
syn match ThorBodyField 'TASKS:'
syn match ThorBodyField 'TIME:'
syn match ThorBodyField 'TIMESTAMP:'
syn match ThorBodyField 'TIMESTAMP_\d\{1,2}:'
syn match ThorBodyField 'TOOK:'
syn match ThorBodyField 'TYPE:'
syn match ThorBodyField 'TYPE_\d\{1,2}:'
syn match ThorBodyField 'UNIT:'
syn match ThorBodyField 'UNIT_MODE:'
syn match ThorBodyField 'UNIT_OWNER:'
syn match ThorBodyField 'UNIT_PATH:'
syn match ThorBodyField 'USER:'
syn match ThorBodyField 'USERID:'
syn match ThorBodyField 'USERNAME:'
syn match ThorBodyField 'VALID:'
syn match ThorBodyField 'VALUE:'
syn match ThorBodyField 'VAR:'
syn match ThorBodyField 'VERSION:'
syn match ThorBodyField 'WITH:'
syn match ThorBodyField 'WORKER:'

" inline fields
syn match ThorBodyInlineField '$\{0,1}AccessList:'
syn match ThorBodyInlineField '$\{0,1}AccessMask:'
syn match ThorBodyInlineField '$\{0,1}AccessReason:'
syn match ThorBodyInlineField '$\{0,1}AccountExpires:'
syn match ThorBodyInlineField '$\{0,1}AccountName:'
syn match ThorBodyInlineField '$\{0,1}AdditionalInfo:'
syn match ThorBodyInlineField '$\{0,1}AdditionalInfo2:'
syn match ThorBodyInlineField '$\{0,1}AllowedToDelegateTo:'
syn match ThorBodyInlineField '$\{0,1}Application:'
syn match ThorBodyInlineField '$\{0,1}AuthenticationPackageName:'
syn match ThorBodyInlineField '$\{0,1}CommandLine:'
syn match ThorBodyInlineField '$\{0,1}Company:'
syn match ThorBodyInlineField '$\{0,1}CurrentDirectory:'
syn match ThorBodyInlineField '$\{0,1}Description:'
syn match ThorBodyInlineField '$\{0,1}DestAddress:'
syn match ThorBodyInlineField '$\{0,1}DestPort:'
syn match ThorBodyInlineField '$\{0,1}Details:'
syn match ThorBodyInlineField '$\{0,1}DisplayName:'
syn match ThorBodyInlineField '$\{0,1}Direction:'
syn match ThorBodyInlineField '$\{0,1}ElevatedToken:'
syn match ThorBodyInlineField '$\{0,1}EventID:'
syn match ThorBodyInlineField '$\{0,1}EventType:'
syn match ThorBodyInlineField '$\{0,1}FailureReason:'
syn match ThorBodyInlineField '$\{0,1}FileVersion:'
syn match ThorBodyInlineField '$\{0,1}FilterRTID:'
syn match ThorBodyInlineField '$\{0,1}HandleId:'
syn match ThorBodyInlineField '$\{0,1}Hashes:'
syn match ThorBodyInlineField '$\{0,1}HomeDirectory:'
syn match ThorBodyInlineField '$\{0,1}HomePath:'
syn match ThorBodyInlineField '$\{0,1}Image:'
syn match ThorBodyInlineField '$\{0,1}ImagePath:'
syn match ThorBodyInlineField '$\{0,1}ImpersonationLevel:'
syn match ThorBodyInlineField '$\{0,1}IntegrityLevel:'
syn match ThorBodyInlineField '$\{0,1}IpAddress:'
syn match ThorBodyInlineField '$\{0,1}IpPort:'
syn match ThorBodyInlineField '$\{0,1}KeyLength:'
syn match ThorBodyInlineField '$\{0,1}LayerName:'
syn match ThorBodyInlineField '$\{0,1}LayerRTID:'
syn match ThorBodyInlineField '$\{0,1}LmPackageName:'
syn match ThorBodyInlineField '$\{0,1}LogonGuid:'
syn match ThorBodyInlineField '$\{0,1}LogonHours:'
syn match ThorBodyInlineField '$\{0,1}LogonId:'
syn match ThorBodyInlineField '$\{0,1}LogonProcessName:'
syn match ThorBodyInlineField '$\{0,1}LogonType:'
syn match ThorBodyInlineField '$\{0,1}MandatoryLabel:'
syn match ThorBodyInlineField '$\{0,1}MasterKeyId:'
syn match ThorBodyInlineField '$\{0,1}MessageNumber:'
syn match ThorBodyInlineField '$\{0,1}MessageTotal:'
syn match ThorBodyInlineField '$\{0,1}NewProcessId:'
syn match ThorBodyInlineField '$\{0,1}NewProcessName:'
syn match ThorBodyInlineField '$\{0,1}NewUacValue:'
syn match ThorBodyInlineField '$\{0,1}ObjectName:'
syn match ThorBodyInlineField '$\{0,1}ObjectServer:'
syn match ThorBodyInlineField '$\{0,1}ObjectType:'
syn match ThorBodyInlineField '$\{0,1}OldUacValue:'
syn match ThorBodyInlineField '$\{0,1}OperationType:'
syn match ThorBodyInlineField '$\{0,1}OriginalFileName:'
syn match ThorBodyInlineField '$\{0,1}PackageName:'
syn match ThorBodyInlineField '$\{0,1}ParentCommandLine:'
syn match ThorBodyInlineField '$\{0,1}ParentImage:'
syn match ThorBodyInlineField '$\{0,1}ParentProcessGuid:'
syn match ThorBodyInlineField '$\{0,1}ParentProcessId:'
syn match ThorBodyInlineField '$\{0,1}ParentProcessName:'
syn match ThorBodyInlineField '$\{0,1}PasswordLastSet:'
syn match ThorBodyInlineField '$\{0,1}PrimaryGroupId:'
syn match ThorBodyInlineField '$\{0,1}PrivilegeList:'
syn match ThorBodyInlineField '$\{0,1}ProcessId:'
syn match ThorBodyInlineField '$\{0,1}ProcessID:'
syn match ThorBodyInlineField '$\{0,1}ProcessGuid:'
syn match ThorBodyInlineField '$\{0,1}ProcessName:'
syn match ThorBodyInlineField '$\{0,1}Product:'
syn match ThorBodyInlineField '$\{0,1}ProfilePath:'
syn match ThorBodyInlineField '$\{0,1}Properties:'
syn match ThorBodyInlineField '$\{0,1}Protocol:'
syn match ThorBodyInlineField '$\{0,1}RecoveryKeyId:'
syn match ThorBodyInlineField '$\{0,1}RecoveryServer:'
syn match ThorBodyInlineField '$\{0,1}RelativeTargetName:'
syn match ThorBodyInlineField '$\{0,1}RemoteMachineID:'
syn match ThorBodyInlineField '$\{0,1}RemoteUserID:'
syn match ThorBodyInlineField '$\{0,1}ResourceAttributes:'
syn match ThorBodyInlineField '$\{0,1}RestrictedAdminMode:'
syn match ThorBodyInlineField '$\{0,1}RestrictedSidCount:'
syn match ThorBodyInlineField '$\{0,1}RuleName:'
syn match ThorBodyInlineField '$\{0,1}SamAccountName:'
syn match ThorBodyInlineField '$\{0,1}ScriptBlockText:'
syn match ThorBodyInlineField '$\{0,1}ScriptPath:'
syn match ThorBodyInlineField '$\{0,1}ServiceName:'
syn match ThorBodyInlineField '$\{0,1}ServiceType:'
syn match ThorBodyInlineField '$\{0,1}SidHistory:'
syn match ThorBodyInlineField '$\{0,1}ShareLocalPath:'
syn match ThorBodyInlineField '$\{0,1}ShareName:'
syn match ThorBodyInlineField '$\{0,1}SourceAddress:'
syn match ThorBodyInlineField '$\{0,1}SourcePort:'
syn match ThorBodyInlineField '$\{0,1}Status:'
syn match ThorBodyInlineField '$\{0,1}StartType:'
syn match ThorBodyInlineField '$\{0,1}Str\d\{1,2}:'
syn match ThorBodyInlineField '$\{0,1}SubjectDomainName:'
syn match ThorBodyInlineField '$\{0,1}SubjectLogonId:'
syn match ThorBodyInlineField '$\{0,1}SubjectUserName:'
syn match ThorBodyInlineField '$\{0,1}SubjectUserSid:'
syn match ThorBodyInlineField '$\{0,1}SubStatus:'
syn match ThorBodyInlineField '$\{0,1}TargetDomainName:'
syn match ThorBodyInlineField '$\{0,1}TargetLinkedLogonId:'
syn match ThorBodyInlineField '$\{0,1}TargetLogonId:'
syn match ThorBodyInlineField '$\{0,1}TargetObject:'
syn match ThorBodyInlineField '$\{0,1}TargetOutboundDomainName:'
syn match ThorBodyInlineField '$\{0,1}TargetOutboundUserName:'
syn match ThorBodyInlineField '$\{0,1}TargetSid:'
syn match ThorBodyInlineField '$\{0,1}TargetUserName:'
syn match ThorBodyInlineField '$\{0,1}TargetUserSid:'
syn match ThorBodyInlineField '$\{0,1}TerminalSessionId:'
syn match ThorBodyInlineField '$\{0,1}TokenElevationType:'
syn match ThorBodyInlineField '$\{0,1}TransactionId:'
syn match ThorBodyInlineField '$\{0,1}TransmittedServices:'
syn match ThorBodyInlineField '$\{0,1}User:'
syn match ThorBodyInlineField '$\{0,1}UserAccountControl:'
syn match ThorBodyInlineField '$\{0,1}UserParameters:'
syn match ThorBodyInlineField '$\{0,1}UserPrincipalName:'
syn match ThorBodyInlineField '$\{0,1}UserWorkstations:'
syn match ThorBodyInlineField '$\{0,1}UtcTime:'
syn match ThorBodyInlineField '$\{0,1}VirtualAccount:'
syn match ThorBodyInlineField '$\{0,1}Workstation:'
syn match ThorBodyInlineField '$\{0,1}WorkstationName:'

" set colors
highlight ThorBodyField ctermfg=cyan
highlight ThorBodyInlineField ctermfg=green
highlight ThorHash ctermfg=magenta
highlight ThorImportant ctermfg=red
highlight ThorIp ctermfg=green
highlight ThorMessage ctermfg=yellow
highlight ThorModule ctermfg=brown
highlight ThorScanid ctermfg=blue

let b:current_syntax = "thor"
