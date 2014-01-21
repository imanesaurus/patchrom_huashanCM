#!/bin/bash
rm -f $2/drawable-hdpi/default_wallpaper.jpg
rm -f $2/drawable-nodpi/default_wallpaper.jpg
rm -f $2/drawable/notification_bg.xml
rm -f $2/drawable/notification_bg_low.xml

cd out/framework-res/res
rm -rf raw-bg raw-ca raw-cs raw-da raw-el raw-fa raw-fi raw-hi raw-hr raw-it raw-iw raw-ja raw-ko raw-lt raw-lv raw-nb raw-nl raw-pt raw-pt-rBR raw-pt-rPT raw-rm raw-ro raw-sk raw-sl raw-sr raw-sv raw-th raw-tl raw-tr
rm -rf values-af values-af-rZA values-am values-am-rET values-bg values-bg-rBG values-ca values-ca-rES values-cs values-cs-rCZ values-da values-da-rDK values-el values-el-rGR values-fa values-fa-rIR values-fi values-fi-rFI values-hi values-hi-rIN values-hr values-hr-rHR values-it values-it-rCH values-it-rIT values-iw values-iw-rIL values-ja values-ja-rJP values-ko values-ko-rKR values-lt values-lt-rLT values-lv values-lv-rLV values-ms values-ms-rMY values-nb values-nb-rNO values-nl values-nl-rBE values-nl-rNL values-pt values-pt-rBR values-pt-rPT values-rm values-rm-rCH values-ro values-ro-rRO values-sk values-sk-rSK values-sl values-sl-rSI values-sr values-sr-rRS values-sv values-sv-rSE values-sw values-th values-th-rTH values-tl values-tl-rPH values-tr values-tr-rTR values-zu values-zu-rZA
cd ../../..
