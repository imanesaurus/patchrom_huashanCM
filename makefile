#
# Makefile for leo
#

# The original zip file, MUST be specified by each product
local-zip-file     := stockrom.zip

# The output zip file of MIUI rom, the default is porting_miui.zip if not specified
local-out-zip-file := MIUI_`date '+%d.%b.%Y-%H.%M.%S'`_huashanCM.zip

# the location for local-ota to save target-file
local-previous-target-dir := 

# All apps from original ZIP, but has smali files chanded
local-modified-apps := V4A SPN XperiaSettings L36hSettings AGE LatinIME Emoji

local-modified-jars :=

# All apks from MIUI
local-miui-removed-apps := MediaProvider BaiduNetworkLocation Userbook VoiceAssist 

local-miui-modified-apps := AntiSpam Backup Browser BugReport Calculator Calendar CalendarProvider CloudService Contacts \
			ContactsProvider DeskClock DownloadProvider DownloadProviderUi Email Exchange2 FileExplorer MiuiCompass \
			MiuiGallery MiuiHome MiuiSystemUI MiuiVideoPlayer MiWallpaper Mms Music NetworkAssistant Notes PackageInstaller Phone \
			PaymentService Provision QuickSearchBox Settings SoundRecorder TelephonyProvider ThemeManager Transfer VpnDialogs \
			Weather WeatherProvider XiaomiServiceFramework YellowPage SettingsProvider LBESEC_MIUI GuardProvider

# Config density for co-developers to use the aaps with HDPI or XHDPI resource,
# Default configrations are HDPI for ics branch and XHDPI for jellybean branch
local-density := XHDPI

include phoneapps.mk

# To include the local targets before and after zip the final ZIP file, 
# and the local-targets should:
# (1) be defined after including porting.mk if using any global variable(see porting.mk)
# (2) the name should be leaded with local- to prevent any conflict with global targets
local-pre-zip := local-pre-zip-misc
local-after-zip:= local-put-to-phone

# The local targets after the zip file is generated, could include 'zip2sd' to 
# deliver the zip file to phone, or to customize other actions

include $(PORT_BUILD)/porting.mk

# To define any local-target
updater := $(ZIP_DIR)/META-INF/com/google/android/updater-script
pre_install_data_packages := out/pre_install_apk_pkgname.txt
local-pre-zip-misc:
	cp other/build.prop $(ZIP_DIR)/system/build.prop
	cp other/Camera.apk $(ZIP_DIR)/system/app/Camera.apk
	cp other/system_fonts.xml $(ZIP_DIR)/system/etc/system_fonts.xml
# To Fix Headset Button
	cp other/Generic.kl $(ZIP_DIR)/system/usr/keylayout/Generic.kl
# To added GAPPS
	cp -rf other/gapps/* $(ZIP_DIR)
# To added XLOUD and Xrealty Engine
	cp -rf other/xloud/* $(ZIP_DIR)/system
# To replace spn
#	cp other/spn-conf.xml $(ZIP_DIR)/system/etc/spn-conf.xml
# To added V4A
	cp other/libv4a_fx_ics.so $(ZIP_DIR)/system/lib/soundfx/libv4a_fx_ics.so
	cp other/audio_effects.conf $(ZIP_DIR)/system/etc/audio_effects.conf
	cp other/audio_effects.conf $(ZIP_DIR)/system/vendor/etc/audio_effects.conf
# To replace kernel
	cp other/boot.img $(ZIP_DIR)/boot.img
	cp other/installd $(ZIP_DIR)/system/bin/installd
	cp other/09batterytweaks $(ZIP_DIR)/system/etc/init.d
# To replace FM icon
	cp -rf other/miui_mod_icons/* $(ZIP_DIR)/system/media/theme/miui_mod_icons/
# To add Emoji keyboard
	cp -f other/libiwnn.so $(ZIP_DIR)/system/lib/libiwnn.so
# To add MiuiSettings
#	cp other/MiuiSettings.apk $(ZIP_DIR)/system/app/MiuiSettings.apk
	rm -rf $(ZIP_DIR)/system/addon.d
	rm -rf $(ZIP_DIR)/system/bin/backuptool.functions
	rm -rf $(ZIP_DIR)/system/bin/backuptool.sh
	
	@echo Remove usless stuff
	rm -rf $(ZIP_DIR)/system/media/video/*.mp4
	rm -rf $(ZIP_DIR)/system/tts/lang_pico/*.bin
out/framework2.jar : out/framework.jar

%.phone : out/%.jar
	@echo push -- to --- phone
	adb remount
	adb push $< /system/framework
	adb shell chmod 644 /system/framework/$*.jar
	#adb shell stop
	#adb shell start
	#adb reboot

%.sign-plat : out/%
	java -jar $(TOOL_DIR)/signapk.jar $(PORT_ROOT)/build/security/platform.x509.pem $(PORT_ROOT)/build/security/platform.pk8  $< $<.signed
	@echo push -- to --- phone
	adb remount
	adb push $<.signed /system/app/$*
	adb shell chmod 644 /system/app/$*
