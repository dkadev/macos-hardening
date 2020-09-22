# MACOS HARDENING

Compilation of tools for macOS hardening as well as some useful commands to monitor and do research agents and daemons of services running on the machine. 
(ALTHOUGH IS A PUBLIC REPO ITS BEEN CREATED FOR PERSONAL USE, SO IF YOU WANT TO TRY THIS I'M NOT RESPONSIBLE FOR USE AND CONSEQUENCES)

## Useful commands

### Get active services:
     launchctl list | grep -v "\-\t0"
### Find a service:
     grep -lR [service] /System/Library/Launch* /Library/Launch* ~/Library/LaunchAgents

### Unload Daemons 
     sudo launchctl unload -w /System/Library/LaunchDaemons/
### Unload Agents
     launchctl unload -w /System/Library/LaunchAgents/

### More services info:
     defaults read /System/Library/LaunchAgents/com.apple.

## SANDBOX plist to prevent re-loading: 
/System/Library/Sandbox/com.apple.xpc.launchd.rootless.plist

## Some webs to research about services
https://web.archive.org/web/20170509011754/http://triviaware.com:80/macprocess/all  
https://www.heise.de/mac-and-i/artikel/Die-Systemprozesse-von-macOS-Sierra-3715619.html?seite=all

## Disable services

    bash disable.sh

Just mv .plist files to .plistbak (RENAMING)

## macOS-home-call-drop

Simple shell script to fix macOS privacy issues and remove mostly useless macOS calls to Cupertino.  
Edit **config.sh** to choose which services you want to disable. Most of them are described, uncomment to let script disable it.  

### Usage
MacOS High Sierra and up, requires that SIP is disabled.

#### Audit current settings
    bash homecall.sh audit

#### Fix
    bash homecall.sh fix

#### Optionally you can restore it back to default by
    bash homecall.sh restore


## osx-config-check

Checks your OSX machine against various hardened configuration settings.  

You can specify your own preferred configuration baseline by supplying your own [Hjson](https://hjson.org/) file instead of the provided one.  
Configurations come from sites like: [drduh's OS X Security and Privacy Guide](https://github.com/drduh/OS-X-Security-and-Privacy-Guide)  

### Usage

```bash
python app.py
```

This will take you through a series of interactive steps that checks your machine's configuration, and offers to fix misconfigurations for you.

Intermediate users and advanced users can also invoke various command-line arguments:
```
Usage: python app.py [OPTIONS]
OPTIONS:
	--debug-print        Enables verbose output for debugging the tool.
	--report-only        Only reports on compliance and does not offer to fix broken configurations.
	--disable-logs       Refrain from creating a log file with the results.
	--disable-prompt     Refrain from prompting user before applying fixes.
	--skip-sudo-checks   Do not perform checks that require sudo privileges.
	--help -h            Print this usage information.
```

