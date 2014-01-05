#!/bin/bash
#
# $1: dir for original miui app 
# $2: dir for target miui app
#

XMLMERGYTOOL=$PORT_ROOT/tools/ResValuesModify/jar/ResValuesModify
in=$PORT_ROOT/multi/indonesia/Indonesian/main
ar=$PORT_ROOT/multi/arabic/Arabic/main
hu=$PORT_ROOT/multi/hungarian/Hungarian/main
pl=$PORT_ROOT/multi/polish/Polish/main
fr=$PORT_ROOT/multi/french/French/main
de=$PORT_ROOT/multi/german/German/main
es=$PORT_ROOT/multi/spain/Spanish/main
GIT_APPLY=$PORT_ROOT/tools/git.apply
curdir=`pwd`

function adjustDpi() {
    xhdpi=( $(ls out/$1/res/drawable-xhdpi) )

    for PNG in "${xhdpi[@]}"; do
        rm -f out/$1/res/drawable-hdpi/$PNG
        rm -f out/$1/res/drawable-xxhdpi/$PNG
    done
#    rm out/$1/res/mipmap-mdpi
#    rm out/$1/res/mipmap-hdpi
#    rm out/$1/res/mipmap-xxhdpi
}

function addMultilang() {
    for file in `find $in $ar $hu $pl $fr $de $es -name $1.apk`
    do
	cp -u -r $file/* out/$1
	find out/$1/res -name "drawable-pl-hdpi" | xargs rm -rf
	find out/$1/res -name "drawable-pl-xxhdpi" | xargs rm -rf
    done
}


function appendPart() {
    for file in `find $1/smali -name *.part`
    do
		filepath=`dirname $file`
		filename=`basename $file .part`
		dstfile="out/$filepath/$filename"
        cat $file >> $dstfile
    done
}

if [ $1 = "AntiSpam" ];then
	addMultilang $1
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "Backup" ];then
	addMultilang $1
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "Browser" ];then
	addMultilang $1
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "BugReport" ];then
	addMultilang $1
	adjustDpi $1
	sed -i -e 's/<category android:name=\"android.intent.category.LAUNCHER\" \/>/<!--category android:name=\"android.intent.category.LAUNCHER\" \/-->/' out/$1/AndroidManifest.xml
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "Calculator" ];then
	addMultilang $1
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "Calendar" ];then
	addMultilang $1
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "CalendarProvider" ];then
	addMultilang $1
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "CloudService" ];then
	addMultilang $1
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "Contacts" ];then
	addMultilang $1
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "ContactsProvider" ];then
	addMultilang $1
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "DeskClock" ];then
	addMultilang $1
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "DownloadProvider" ];then
	addMultilang $1
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "DownloadProviderUi" ];then
	addMultilang $1
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "Email" ];then
	addMultilang $1
	adjustDpi $1
	sed -i -e 's/main_content\"\"/main_contentq\"/' $2/res/values/ids.xml
	sed -i -e 's/main_content\"\"/main_contentq\"/' $2/res/values/public.xml
	sed -i -e 's/main_content\"/main_contentq/' $2/res/values-sw600dp/styles.xml
	sed -i -e 's/main_content\"/main_contentq/' $2/res/values-sw720dp-port/styles.xml
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "Exchange2" ];then
	addMultilang $1
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "FileExplorer" ];then
	addMultilang $1
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "MiuiCompass" ];then
	addMultilang $1
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "MiuiGallery" ];then
	addMultilang $1
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "Settings" ];then
#    cp $1/*.part out/
#    cd out
#    $GIT_APPLY Settings.part
#    cd ..
#    for file in `find $2 -name *.rej`
#    do
#	echo "Fatal error: Settings patch fail"
#        exit 1
#    done
	addMultilang $1
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
    	$XMLMERGYTOOL $1/res/values-hdpi $2/res/values-hdpi
fi

if [ $1 = "Mms" ];then
	$XMLMERGYTOOL $1/res/values $2/res/values

	addMultilang $1
	adjustDpi $1
	sed -i -e 's/android:screenOrientation=\"portrait\" //' out/$1/AndroidManifest.xml
	sed -i -e 's/ android:screenOrientation=\"portrait\"//' out/$1/AndroidManifest.xml
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "MiuiVideoPlayer" ];then
	addMultilang $1
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "MiWallpaper" ];then
	addMultilang $1
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "Phone" ];then
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "ThemeManager" ];then
#    cp other/ThemeManager.part out/
#    cd out
#    $GIT_APPLY ThemeManager.part
#    cd ..
#    for file in `find $2 -name *.rej`
#    do
#	echo "Fatal error: ThemeManager patch fail"
#        exit 1
#    done
#
    $XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "MiuiHome" ];then
    $XMLMERGYTOOL $1/res/values $2/res/values
    cp $1/*.part out/
    cd out
    $GIT_APPLY MiuiHome.part
    cd ..
    for file in `find $2 -name *.rej`
    do
	echo "Fatal error: MiuiHome patch fail"
        exit 1
    done

	addMultilang $1
	adjustDpi $1
fi

if [ $1 = "MiuiSystemUI" ];then
    cp $1/*.part out/
    cd out
    $GIT_APPLY MiuiSystemUI.part
    cd ..
    for file in `find $2 -name *.rej`
    do
	echo "Fatal error: MiuiSystemUI patch fail"
        exit 1
    done
	addMultilang $1
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
	$XMLMERGYTOOL $1/res/values-xhdpi $2/res/values-xhdpi
fi

if [ $1 = "Music" ];then
	addMultilang $1
	adjustDpi $1
	sed -i 's#@string/app_class#com.miui.player.Application#g' $2/AndroidManifest.xml
fi

if [ $1 = "NetworkAssistant" ];then
	addMultilang $1
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "Notes" ];then
	addMultilang $1
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "PackageInstaller" ];then
	addMultilang $1
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "PaymentService" ];then
	addMultilang $1
	adjustDpi $1
	sed -i -e 's/<category android:name=\"android.intent.category.LAUNCHER\" \/>/<!--category android:name=\"android.intent.category.LAUNCHER\" \/-->/' out/$1/AndroidManifest.xml
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "Phone" ];then
    cp $1/*.part out/
    cd out
    $GIT_APPLY Phone.part
    cd ..
    for file in `find $2 -name *.rej`
    do
	echo "Fatal error: Phone patch fail"
        exit 1
    done

	addMultilang $1
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "Provision" ];then
	addMultilang $1
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "QuickSearchBox" ];then
	addMultilang $1
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "SoundRecorder" ];then
	addMultilang $1
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "TelephonyProvider" ];then
	addMultilang $1
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "ThemeManager" ];then
	addMultilang $1
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "Transfer" ];then
	addMultilang $1
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

#if [ $1 = "Updater" ];then
#	addMultilang $1
#	adjustDpi $1
#	cp -f $1/res/drawable-en-xhdpi/miui_title.png  out/$1/res/drawable-pl-xhdpi/miui_title.png
#	$XMLMERGYTOOL $1/res/values $2/res/values
#fi
#
if [ $1 = "VpnDialogs" ];then
	addMultilang $1
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "Weather" ];then
	addMultilang $1
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "WeatherProvider" ];then
	addMultilang $1
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "XiaomiServiceFramework" ];then
	addMultilang $1
	adjustDpi $1
	sed -i -e 's/<category android:name=\"android.intent.category.LAUNCHER\" \/>/<!--category android:name=\"android.intent.category.LAUNCHER\" \/-->/' out/$1/AndroidManifest.xml
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "YellowPage" ];then
	addMultilang $1
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "SettingsProvider" ];then
	addMultilang $1
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "LBESEC_MIUI" ];then
	addMultilang $1
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "GuardProvider" ];then
	addMultilang $1
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "TelocationProvider" ];then
	addMultilang $1
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi
