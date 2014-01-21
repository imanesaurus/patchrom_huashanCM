.class Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnNative;
.super Ljava/lang/Object;
.source "IWnnNative.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    return-void
.end method

.method public static final native WriteOutDictionary(II)I
.end method

.method public static final native addWord(ILjava/lang/String;Ljava/lang/String;III)I
.end method

.method public static final native checkDecoEmojiDictionary(I)I
.end method

.method public static final native controlDecoEmojiDictionary(ILjava/lang/String;Ljava/lang/String;II)V
.end method

.method public static final native conv(II)I
.end method

.method public static final native createAdditionalDictionary(II)I
.end method

.method public static final native createAutoLearningDictionary(II)I
.end method

.method public static final native decoemojiFilter(II)V
.end method

.method public static final native deleteAdditionalDictionary(II)I
.end method

.method public static final native deleteAutoLearningDictionary(II)I
.end method

.method public static final native deleteDictionary(IIII)I
.end method

.method public static final native deleteSearchWord(II)I
.end method

.method public static final native deleteWord(II)I
.end method

.method public static final native destroy(I)V
.end method

.method public static final native emailAddressFilter(II)V
.end method

.method public static final native emojiFilter(II)V
.end method

.method public static final native forecast(III)I
.end method

.method public static final native getInfo()I
.end method

.method public static final native getInput(I)Ljava/lang/String;
.end method

.method public static final native getMorphemeHinsi(II)S
.end method

.method public static final native getMorphemeWord(II[Ljava/lang/String;)V
.end method

.method public static final native getMorphemeYomi(II[Ljava/lang/String;)V
.end method

.method public static final native getSegmentString(II)Ljava/lang/String;
.end method

.method public static final native getSegmentStroke(II)Ljava/lang/String;
.end method

.method public static final native getState(I)I
.end method

.method public static final native getWord(III)Ljava/lang/String;
.end method

.method public static final native getWordString(III)Ljava/lang/String;
.end method

.method public static final native getWordStroke(III)Ljava/lang/String;
.end method

.method public static final native getgijistr(III)I
.end method

.method public static final native init(ILjava/lang/String;)I
.end method

.method public static final native isGijiResult(II)I
.end method

.method public static final native isLearnDictionary(II)I
.end method

.method public static final native noconv(I)I
.end method

.method public static final native refreshConfFile(I)I
.end method

.method public static final native resetDecoEmojiDictionary(I)I
.end method

.method public static final native resetExtendedInfo(Ljava/lang/String;)I
.end method

.method public static final native saveAdditionalDictionary(II)I
.end method

.method public static final native saveAutoLearningDictionary(II)I
.end method

.method public static final native searchWord(III)I
.end method

.method public static final native select(IIII)I
.end method

.method public static final native setActiveLang(II)I
.end method

.method public static final native setBookshelf(II)I
.end method

.method public static final native setDownloadDictionary(IILjava/lang/String;Ljava/lang/String;IIIIIIZI)V
.end method

.method public static final native setFlexibleCharset(III)I
.end method

.method public static final native setInput(ILjava/lang/String;)I
.end method

.method public static final native setServicePackageName(ILjava/lang/String;)I
.end method

.method public static final native setState(I)I
.end method

.method public static final native setStateSystem(III)V
.end method

.method public static final native setdicByConf(ILjava/lang/String;I)I
.end method

.method public static final native splitWord(ILjava/lang/String;[I)V
.end method

.method public static final native undo(II)I
.end method

.method public static final native unmountDics(I)I
.end method
