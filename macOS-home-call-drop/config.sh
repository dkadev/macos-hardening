#!/bin/bash
DAEMONS=()
DAEMONS+=('com.apple.AirPlayXPCHelper') #Airplay daemon
#DAEMONS+=('com.apple.AOSNotificationOSX') #Notifications
DAEMONS+=('com.apple.appleseed.fbahelperd') #Related to feedback
DAEMONS+=('com.apple.apsd') #Apple Push Notification Service (apsd) - it's calling home quite often + used by Facetime and Messages
DAEMONS+=('com.apple.awacsd') #Apple Wide Area Connectivity Service daemon - Back To My Mac Feature
DAEMONS+=('com.apple.awdd') #Sending out diagnostics & usage
DAEMONS+=('com.apple.CrashReporterSupportHelper') #Crash reporter
#DAEMONS+=('com.apple.eapolcfg_auth') #Perform privileged operations required by certain EAPOLClientConfiguration.h APIs
DAEMONS+=('com.apple.familycontrols') #Parental controls
#DAEMONS+=('com.apple.FileSyncAgent.sshd') #Most likely sshd on this machine
DAEMONS+=('com.apple.findmymac') #Find My Mac daemon
DAEMONS+=('com.apple.findmymacmessenger') #Related to find my mac daemon, probably acts on commands sent through FindMyDevice in iCloud
DAEMONS+=('com.apple.icloud.findmydeviced') #Related to find my mac
#DAEMONS+=('com.apple.iCloudStats') #Related to iCloud
DAEMONS+=('com.apple.laterscheduler') #Schedule something?
DAEMONS+=('com.apple.locationd') #Probably reading current location
#DAEMONS+=('com.apple.ManagedClient.cloudconfigurationd') #Related to manage current macOS user iCloud
#DAEMONS+=('com.apple.ManagedClient.enroll') #Related to manage current macOS user
#DAEMONS+=('com.apple.ManagedClient.startup') #Related to manage current macOS user
#DAEMONS+=('com.apple.ManagedClient') #Related to manage current macOS user
#DAEMONS+=('com.apple.mbicloudsetupd') #iCloud Settings
DAEMONS+=('com.apple.netbiosd') #Netbiosd is Microsoft's networking service. used to share files between macOS and Windows
#DAEMONS+=('com.apple.preferences.timezone.admintool') #Time setting daemon
#DAEMONS+=('com.apple.preferences.timezone.auto') #Time setting daemon
DAEMONS+=('com.apple.remotepairtool') #Pairing devices remotely
DAEMONS+=('com.apple.rpmuxd') #Daemon for remote debugging of mobile devices.
# DAEMONS+=('com.apple.screensharing') #Screensharing daemon
#DAEMONS+=('com.apple.security.FDERecoveryAgent') #Full Disk Ecnryption - Related to File Vault https://developer.apple.com/legacy/library/documentation/Darwin/Reference/ManPages/man8/FDERecoveryAgent.8.html
DAEMONS+=('com.apple.SubmitDiagInfo') #Feedback - most likely it submits your computer data when click 'About this mac'
#DAEMONS+=('com.apple.trustd') #Probably related to certificates

#CUSTOM DAEMONS
DAEMONS+=('com.apple.GameController.gamecontrollerd') #   
DAEMONS+=('com.apple.Kerberos.kadmind')
DAEMONS+=('com.apple.Kerberos.kdc')
DAEMONS+=('com.apple.Kerberos.kpasswdd')
DAEMONS+=('com.apple.netbiosd')
DAEMONS+=('com.apple.rapportd') #Comunicación entre productos Apple
DAEMONS+=('com.apple.ReportCrash')
DAEMONS+=('com.apple.ReportCrash.Root')
DAEMONS+=('com.apple.ReportGPURestart')
DAEMONS+=('com.apple.rtcreportingd') #Related to Home Sharing, most likely checking if device is auth for Home Sharing + Facetime
DAEMONS+=('com.apple.Siri.agent')
DAEMONS+=('com.apple.smbd')

DAEMONS+=('org.apache.httpd')
DAEMONS+=('org.cups.cups-lpd')
DAEMONS+=('org.cups.cupsd')	
DAEMONS+=('org.net-snmp.snmpd')
DAEMONS+=('org.ntp.ntpd')
DAEMONS+=('org.openldap.slapd')
DAEMONS+=('org.postfix.master')
# DAEMONS+=('') #
		
AGENTS=()
AGENTS+=('com.apple.AirPlayUIAgent') #Related Airport
AGENTS+=('com.apple.AirPortBaseStationAgent') #Related Airport
# AGENTS+=('com.apple.AOSPushRelay') # Related to iCloud https://github.com/fix-macosx/yosemite-phone-home/blob/master/icloud-user-r0/System/Library/PrivateFrameworks/AOSKit.framework/Versions/A/Helpers/AOSPushRelay.app/Contents/MacOS/AOSPushRelay/20141019T072634Z-auser-%5B172.16.174.146%5D:49560-%5B17.110.240.83%5D:443.log
AGENTS+=('com.apple.appleseed.seedusaged') #Feedback assistant
AGENTS+=('com.apple.assistant_service') #Siri
#AGENTS+=('com.apple.assistant') #Keychain
#AGENTS+=('com.apple.bird') #Part of iCloud
AGENTS+=('com.apple.CalendarAgent') #Calendar events related to iCloud
AGENTS+=('com.apple.CallHistoryPluginHelper') #Related to call history (iCloud)
AGENTS+=('com.apple.CallHistorySyncHelper') #Related to call history syncing (iCloud)
# AGENTS+=('com.apple.cloudd') #Related to sync data to iCloud, most likely used by iMessage,Mail,iCloud drive, etc...
AGENTS+=('com.apple.cloudfamilyrestrictionsd-mac') #iCloud Family restrictions
# AGENTS+=('com.apple.cloudpaird') #Related to iCloud
AGENTS+=('com.apple.cloudphotosd') #Probably syncing your photos to iCloud
AGENTS+=('com.apple.DictationIM') #Dictation
AGENTS+=('com.apple.familycircled') #Family notifications, like reminders
AGENTS+=('com.apple.familycontrols.useragent') #Family notifications, like reminders
AGENTS+=('com.apple.familynotificationd') #Family notifications, like reminders
AGENTS+=('com.apple.gamed') #GameCenter
AGENTS+=('com.apple.geodMachServiceBridge') #Located in GeoServices.framework, related to locations maybe used for maps, maybe as well for things like find my mac, or just syping
AGENTS+=('com.apple.icloud.findmydeviced.findmydevice-user-agent') #Find my device?
# AGENTS+=('com.apple.icloud.fmfd') #Find my device?
# AGENTS+=('com.apple.iCloudUserNotifications') #iCloud notifications, like reminders
#AGENTS+=('com.apple.identityservicesd') #Used to auth some apps, as well used by iCloud
AGENTS+=('com.apple.imagent') #Facetime & Messages
#AGENTS+=('com.apple.IMLoggingAgent') #IMFoundation.framework - Not sure about this one, maybe used to log in to computer on start
AGENTS+=('com.apple.parentalcontrols.check') #Related to parental controls
AGENTS+=('com.apple.parsecd') #Used by Spotlight and/or Siri, probably some suggestions - CoreParsec.framework
AGENTS+=('com.apple.photoanalysisd') #Apple AI to analyse photos stored in Photos.app, most likely to match faces and scenery but it happens to make requests to Apple during process, i have not checked what are those requestes i have just blocked it with Little Snitch
AGENTS+=('com.apple.rtcreportingd') #Related to Home Sharing, most likely checking if device is auth for Home Sharing + Facetime
AGENTS+=('com.apple.SafariCloudHistoryPushAgent') #Good one, sending out your browsing history... :)
AGENTS+=('com.apple.SafariBookmarksSyncAgent') # Sincroniza marcadores de Safari
AGENTS+=('com.apple.Safari.SafeBrowsing.Service') # Navegación segura en safari
AGENTS+=('com.apple.safaridavclient') #Sending bookmarks to iCloud, even if you disable it may send your bookmarks to Apple
AGENTS+=('com.apple.SafariNotificationAgent') #Notifications in Safari
# AGENTS+=('com.apple.security.cloudkeychainproxy3') #Probably related to syncing keychain to iCloud
#AGENTS+=('com.apple.security.idskeychainsyncingproxy') #Most likely also related to keychain - IDSKeychainSyncingProxy.bundle
#AGENTS+=('com.apple.security.keychain-circle-notification') #Related to keychain
AGENTS+=('com.apple.sharingd') #Airdrop, Remote Disks, Shared Directories, Handoff
# AGENTS+=('com.apple.syncdefaultsd') ##Probably related to syncing keychain
AGENTS+=('com.apple.telephonyutilities.callservicesd') #Handling phone and Facetime calls

#CUSTOM AGENTS
AGENTS+=('com.apple.apsd') #		
AGENTS+=('com.apple.AirPlayXPCHelper') #        
AGENTS+=('com.apple.assistantd') #Relacionado con el sistema de Dictado por voz
AGENTS+=('com.apple.AddressBook.ContactsAccountsService') #        
AGENTS+=('com.apple.appleseed.fbahelperd') #        
AGENTS+=('com.apple.awacsd') #      
AGENTS+=('com.apple.awdd') #        
AGENTS+=('com.apple.corespeechd') #Relacionado con Siri
AGENTS+=('org.cups.cupsd') #        
AGENTS+=('com.apple.CloudPhotosConfiguration') #        
AGENTS+=('com.apple.CrashReporterSupportHelper') #        
AGENTS+=('com.apple.familycontrols') #        
AGENTS+=('com.apple.findmymac') #        
AGENTS+=('com.apple.findmymacmessenger ') #        
AGENTS+=('com.apple.GameController.gamecontrollerd') #        
AGENTS+=('com.apple.geod') #
AGENTS+=('com.apple.icloud.findmydeviced') #        
AGENTS+=('com.apple.keyboardservicesd') #        
AGENTS+=('com.apple.locationd') #        
AGENTS+=('com.apple.Maps.mapspushd') #
AGENTS+=('ccom.apple.Maps.pushdaemon') #
AGENTS+=('com.apple.netbiosd') #        
AGENTS+=('com.apple.passd') #Relacionado con Apple Pay
AGENTS+=('com.apple.photolibraryd') #Sincroniza fotos con iCloud
AGENTS+=('com.apple.rapportd') #Comunicación entre productos Apple
AGENTS+=('com.apple.remotepairtool') #        
AGENTS+=('com.apple.rpmuxd') #        
# AGENTS+=('com.apple.speech.speechsynthesisd') #Dictado y Siri
AGENTS+=('com.apple.studentd') #Classroomkit
AGENTS+=('com.apple.macos.studentd') #Classroomkit
AGENTS+=('com.apple.SubmitDiagInfo') #        
#AGENTS+=('') #

#EOF
