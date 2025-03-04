#!/bin/bash

# Samsung A7 Bloatware Removal Script
# Automatically removes common Samsung, Google, and Carrier apps

# Ensure the device is connected
adb devices

# List of Samsung bloatware to remove
adb shell pm uninstall --user 0 com.sec.android.app.samsungapps     # Samsung Galaxy Store
adb shell pm uninstall --user 0 com.samsung.android.app.settings.bixby  # Bixby Settings
adb shell pm uninstall --user 0 com.samsung.android.bixby.service   # Bixby Service
adb shell pm uninstall --user 0 com.samsung.android.scloud         # Samsung Cloud
adb shell pm uninstall --user 0 com.samsung.android.mdx.kit        # Samsung SmartThings Kit
adb shell pm uninstall --user 0 com.samsung.android.mdx.quickboard # Samsung QuickBoard
adb shell pm uninstall --user 0 com.samsung.android.lool           # Device Care
adb shell pm uninstall --user 0 com.samsung.android.game.gos       # Game Optimization Service
adb shell pm uninstall --user 0 com.samsung.android.app.appsedge   # Edge Apps
adb shell pm uninstall --user 0 com.samsung.android.beaconmanager  # Samsung Beacon
adb shell pm uninstall --user 0 com.samsung.android.messaging      # Samsung Messages
adb shell pm uninstall --user 0 com.samsung.android.video          # Samsung Video Player
adb shell pm uninstall --user 0 com.samsung.android.smartcallprovider # Smart Call
adb shell pm uninstall --user 0 com.samsung.android.fast           # Samsung Fast Share
adb shell pm uninstall --user 0 com.samsung.android.bbc.bbcagent   # BBC Agent (Samsung Security)
adb shell pm uninstall --user 0 com.samsung.android.app.contacts   # Samsung Contacts
adb shell pm uninstall --user 0 com.samsung.android.app.watchmanager2 # Galaxy Watch Manager
adb shell pm uninstall --user 0 com.samsung.android.peripheral.framework # Samsung Peripheral Framework
adb shell pm uninstall --user 0 com.samsung.android.knox.analytics.uploader # Knox Analytics
adb shell pm uninstall --user 0 com.samsung.android.knox.containercore # Knox Container
adb shell pm uninstall --user 0 com.samsung.android.knox.attestation # Knox Attestation Service
adb shell pm uninstall --user 0 com.samsung.android.dqagent        # Samsung Device Quality Agent
adb shell pm uninstall --user 0 com.samsung.android.app.routines   # Samsung Routines
adb shell pm uninstall --user 0 com.samsung.android.game.home      # Game Home App
adb shell pm uninstall --user 0 com.samsung.android.kidsinstaller  # Samsung Kids Installer
adb shell pm uninstall --user 0 com.samsung.android.wallpaper.res  # Samsung Wallpapers
adb shell pm uninstall --user 0 com.samsung.android.providers.trash # Trash Manager
adb shell pm uninstall --user 0 com.samsung.android.wifi.resources # Samsung Wi-Fi Resources
adb shell pm uninstall --user 0 com.samsung.android.wifi.p2paware.resources # WiFi P2P
adb shell pm uninstall --user 0 com.samsung.android.wifi.softapwpathree.resources # WiFi SoftAP

# List of Carrier Bloatware to remove
adb shell pm uninstall --user 0 com.sprint.ms.cdm      # Sprint App
adb shell pm uninstall --user 0 com.sprint.ce.updater  # Sprint Carrier Updater
adb shell pm uninstall --user 0 com.sprint.ms.smf.services # Sprint Services
adb shell pm uninstall --user 0 com.tmobile.pr.mytmobile # T-Mobile App
adb shell pm uninstall --user 0 com.tmobile.pr.adapt   # T-Mobile Adapt
adb shell pm uninstall --user 0 com.samsung.android.cidmanager # Carrier ID Manager
adb shell pm uninstall --user 0 com.samsung.android.networkdiagnostic # Carrier Diagnostics

# List of Google Bloatware to remove
adb shell pm uninstall --user 0 com.google.android.youtube  # YouTube
adb shell pm uninstall --user 0 com.google.android.apps.tachyon  # Google Duo
adb shell pm uninstall --user 0 com.google.android.gm      # Gmail
adb shell pm uninstall --user 0 com.google.android.apps.maps  # Google Maps
adb shell pm uninstall --user 0 com.google.android.syncadapters.calendar  # Google Calendar Sync
adb shell pm uninstall --user 0 com.google.android.feedback # Google Feedback
adb shell pm uninstall --user 0 com.google.android.partnersetup # Google Partner Setup
adb shell pm uninstall --user 0 com.google.android.modulemetadata  # Google Metadata
adb shell pm uninstall --user 0 com.google.android.ondevicepersonalization.services  # Google AI Personalization
adb shell pm uninstall --user 0 com.google.android.networkstack  # Google Network Stack
adb shell pm uninstall --user 0 com.google.android.printservice.recommendation  # Google Print Service
adb shell pm uninstall --user 0 com.google.android.cellbroadcastreceiver # Google Cell Broadcasts
adb shell pm uninstall --user 0 com.google.android.ext.shared  # Google Shared Modules
adb shell pm uninstall --user 0 com.google.android.ext.services # Google External Services
adb shell pm uninstall --user 0 com.google.android.webview # Google WebView (can cause app crashes)

# Uninstall common social media apps
adb shell pm uninstall --user 0 com.twitter.android  # Twitter
adb shell pm uninstall --user 0 com.instagram.android  # Instagram
adb shell pm uninstall --user 0 com.snapchat.android  # Snapchat
adb shell pm uninstall --user 0 org.telegram.messenger  # Telegram
adb shell pm uninstall --user 0 com.microsoft.skydrive # Microsoft OneDrive
adb shell pm uninstall --user 0 com.mxtech.videoplayer.ad  # MX Player (Preinstalled)
adb shell pm uninstall --user 0 com.android.chrome # Google Chrome (If using alternative browser)
adb shell pm uninstall --user 0 com.samsung.android.video # Samsung Video Player

# Optional: Clean up and refresh the system
adb shell pm trim-caches  # Clears cached files
adb reboot  # Reboot the tablet to apply changes

echo "Bloatware removal completed. Your device will now reboot."
