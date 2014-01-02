#!/bin/bash
$1 $2
cd ..
. build/envsetup.sh
cd huashan
mkdir AntiSpam Backup Browser BugReport Calculator Calendar CalendarProvider CloudService Contacts ContactsProvider DeskClock DownloadProvider DownloadProviderUi Email Exchange2 FileExplorer MiuiCompass MiuiGallery MiuiVideoPlayer MiWallpaper Music SettingsProvider MusicFX LBESEC_MIUI GuardProvider NetworkAssistant Notes PackageInstaller PaymentService Provision QuickSearchBox SoundRecorder TelephonyProvider Transfer VpnDialogs Weather WeatherProvider XiaomiServiceFramework YellowPage

make fullota PORT_PRODUCT=$1 BUILD_NUMBER=$2

rmdir AntiSpam Backup Browser BugReport Calculator Calendar CalendarProvider CloudService Contacts ContactsProvider DeskClock DownloadProvider DownloadProviderUi Email Exchange2 FileExplorer MiuiCompass MiuiGallery MiuiVideoPlayer MiWallpaper Music SettingsProvider MusicFX LBESEC_MIUI GuardProvider NetworkAssistant Notes PackageInstaller PaymentService Provision QuickSearchBox SoundRecorder TelephonyProvider Transfer VpnDialogs Weather WeatherProvider XiaomiServiceFramework YellowPage

exit
