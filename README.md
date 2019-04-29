A Carbon Black Live Response artifact collection automation script, based totally on https://github.com/Jrotenberger/Powershell-IR-Scripts (I just made it easier to deploy via few commands (put 7za, put artifactme.bat, put investigation.zip, execfg artifactme.bat plus removed any executables not called by main powershell script to save space for initial upload) - at the end a file named: hostnameofthatmachine_artifacts.zip is created inside c:\windows\carbonblack\  ,ready for an easy extraction
All praise to Jrotenberger for making this script!

Additional info on what script collects:

A) amcache.hve–we can use it to view the processes that were run on the machine historically (there are few tools available to read the hvefile, RegRipperor AmcacheParserby Eric Zimmerman and many more).
B) All registry hives, allowing us to check for many places malware used to establish persistency, but also other information like USB devices, Firewall policies, routes etc.
C) Routing tables, dnsquery cache, logon sessions, temporary internet files, browser history, cookies.
D) All event logs that are enabled together with a list of all services and the ones autostarting, list of loaded drivers, scheduled tasks and clipboard content.
E) Many more as you can configure scripts to your liking to collect as many artifacts as you require for your investigation, you can also extract memory dump for additional visibility if the attacker was particularygood at covering their tracks.
