.class public Lcom/android/inputmethod/latin/ExpandableDictionary;
.super Lcom/android/inputmethod/latin/Dictionary;
.source "ExpandableDictionary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/ExpandableDictionary$LoadDictionaryTask;,
        Lcom/android/inputmethod/latin/ExpandableDictionary$NextHistoryWord;,
        Lcom/android/inputmethod/latin/ExpandableDictionary$NextStaticWord;,
        Lcom/android/inputmethod/latin/ExpandableDictionary$NextWord;,
        Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;,
        Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    }
.end annotation


# static fields
.field private static final BASE_CHARS:[C


# instance fields
.field private mCodes:[[I

.field private mContext:Landroid/content/Context;

.field private mInputLength:I

.field private final mLookedUpString:[C

.field private mMaxDepth:I

.field private mRequiresReload:Z

.field private mRoots:Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;

.field private mUpdatingDictionary:Z

.field private mUpdatingLock:Ljava/lang/Object;

.field private mWordBuilder:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 736
    const/16 v0, 0x500

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/inputmethod/latin/ExpandableDictionary;->BASE_CHARS:[C

    return-void

    :array_0
    .array-data 0x2
        0x0t 0x0t
        0x1t 0x0t
        0x2t 0x0t
        0x3t 0x0t
        0x4t 0x0t
        0x5t 0x0t
        0x6t 0x0t
        0x7t 0x0t
        0x8t 0x0t
        0x9t 0x0t
        0xat 0x0t
        0xbt 0x0t
        0xct 0x0t
        0xdt 0x0t
        0xet 0x0t
        0xft 0x0t
        0x10t 0x0t
        0x11t 0x0t
        0x12t 0x0t
        0x13t 0x0t
        0x14t 0x0t
        0x15t 0x0t
        0x16t 0x0t
        0x17t 0x0t
        0x18t 0x0t
        0x19t 0x0t
        0x1at 0x0t
        0x1bt 0x0t
        0x1ct 0x0t
        0x1dt 0x0t
        0x1et 0x0t
        0x1ft 0x0t
        0x20t 0x0t
        0x21t 0x0t
        0x22t 0x0t
        0x23t 0x0t
        0x24t 0x0t
        0x25t 0x0t
        0x26t 0x0t
        0x27t 0x0t
        0x28t 0x0t
        0x29t 0x0t
        0x2at 0x0t
        0x2bt 0x0t
        0x2ct 0x0t
        0x2dt 0x0t
        0x2et 0x0t
        0x2ft 0x0t
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x3at 0x0t
        0x3bt 0x0t
        0x3ct 0x0t
        0x3dt 0x0t
        0x3et 0x0t
        0x3ft 0x0t
        0x40t 0x0t
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
        0x47t 0x0t
        0x48t 0x0t
        0x49t 0x0t
        0x4at 0x0t
        0x4bt 0x0t
        0x4ct 0x0t
        0x4dt 0x0t
        0x4et 0x0t
        0x4ft 0x0t
        0x50t 0x0t
        0x51t 0x0t
        0x52t 0x0t
        0x53t 0x0t
        0x54t 0x0t
        0x55t 0x0t
        0x56t 0x0t
        0x57t 0x0t
        0x58t 0x0t
        0x59t 0x0t
        0x5at 0x0t
        0x5bt 0x0t
        0x5ct 0x0t
        0x5dt 0x0t
        0x5et 0x0t
        0x5ft 0x0t
        0x60t 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
        0x67t 0x0t
        0x68t 0x0t
        0x69t 0x0t
        0x6at 0x0t
        0x6bt 0x0t
        0x6ct 0x0t
        0x6dt 0x0t
        0x6et 0x0t
        0x6ft 0x0t
        0x70t 0x0t
        0x71t 0x0t
        0x72t 0x0t
        0x73t 0x0t
        0x74t 0x0t
        0x75t 0x0t
        0x76t 0x0t
        0x77t 0x0t
        0x78t 0x0t
        0x79t 0x0t
        0x7at 0x0t
        0x7bt 0x0t
        0x7ct 0x0t
        0x7dt 0x0t
        0x7et 0x0t
        0x7ft 0x0t
        0x80t 0x0t
        0x81t 0x0t
        0x82t 0x0t
        0x83t 0x0t
        0x84t 0x0t
        0x85t 0x0t
        0x86t 0x0t
        0x87t 0x0t
        0x88t 0x0t
        0x89t 0x0t
        0x8at 0x0t
        0x8bt 0x0t
        0x8ct 0x0t
        0x8dt 0x0t
        0x8et 0x0t
        0x8ft 0x0t
        0x90t 0x0t
        0x91t 0x0t
        0x92t 0x0t
        0x93t 0x0t
        0x94t 0x0t
        0x95t 0x0t
        0x96t 0x0t
        0x97t 0x0t
        0x98t 0x0t
        0x99t 0x0t
        0x9at 0x0t
        0x9bt 0x0t
        0x9ct 0x0t
        0x9dt 0x0t
        0x9et 0x0t
        0x9ft 0x0t
        0x20t 0x0t
        0xa1t 0x0t
        0xa2t 0x0t
        0xa3t 0x0t
        0xa4t 0x0t
        0xa5t 0x0t
        0xa6t 0x0t
        0xa7t 0x0t
        0x20t 0x0t
        0xa9t 0x0t
        0x61t 0x0t
        0xabt 0x0t
        0xact 0x0t
        0xadt 0x0t
        0xaet 0x0t
        0x20t 0x0t
        0xb0t 0x0t
        0xb1t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x20t 0x0t
        0xbct 0x3t
        0xb6t 0x0t
        0xb7t 0x0t
        0x20t 0x0t
        0x31t 0x0t
        0x6ft 0x0t
        0xbbt 0x0t
        0x31t 0x0t
        0x31t 0x0t
        0x33t 0x0t
        0xbft 0x0t
        0x41t 0x0t
        0x41t 0x0t
        0x41t 0x0t
        0x41t 0x0t
        0x41t 0x0t
        0x41t 0x0t
        0xc6t 0x0t
        0x43t 0x0t
        0x45t 0x0t
        0x45t 0x0t
        0x45t 0x0t
        0x45t 0x0t
        0x49t 0x0t
        0x49t 0x0t
        0x49t 0x0t
        0x49t 0x0t
        0xd0t 0x0t
        0x4et 0x0t
        0x4ft 0x0t
        0x4ft 0x0t
        0x4ft 0x0t
        0x4ft 0x0t
        0x4ft 0x0t
        0xd7t 0x0t
        0x4ft 0x0t
        0x55t 0x0t
        0x55t 0x0t
        0x55t 0x0t
        0x55t 0x0t
        0x59t 0x0t
        0xdet 0x0t
        0x73t 0x0t
        0x61t 0x0t
        0x61t 0x0t
        0x61t 0x0t
        0x61t 0x0t
        0x61t 0x0t
        0x61t 0x0t
        0xe6t 0x0t
        0x63t 0x0t
        0x65t 0x0t
        0x65t 0x0t
        0x65t 0x0t
        0x65t 0x0t
        0x69t 0x0t
        0x69t 0x0t
        0x69t 0x0t
        0x69t 0x0t
        0xf0t 0x0t
        0x6et 0x0t
        0x6ft 0x0t
        0x6ft 0x0t
        0x6ft 0x0t
        0x6ft 0x0t
        0x6ft 0x0t
        0xf7t 0x0t
        0x6ft 0x0t
        0x75t 0x0t
        0x75t 0x0t
        0x75t 0x0t
        0x75t 0x0t
        0x79t 0x0t
        0xfet 0x0t
        0x79t 0x0t
        0x41t 0x0t
        0x61t 0x0t
        0x41t 0x0t
        0x61t 0x0t
        0x41t 0x0t
        0x61t 0x0t
        0x43t 0x0t
        0x63t 0x0t
        0x43t 0x0t
        0x63t 0x0t
        0x43t 0x0t
        0x63t 0x0t
        0x43t 0x0t
        0x63t 0x0t
        0x44t 0x0t
        0x64t 0x0t
        0x10t 0x1t
        0x11t 0x1t
        0x45t 0x0t
        0x65t 0x0t
        0x45t 0x0t
        0x65t 0x0t
        0x45t 0x0t
        0x65t 0x0t
        0x45t 0x0t
        0x65t 0x0t
        0x45t 0x0t
        0x65t 0x0t
        0x47t 0x0t
        0x67t 0x0t
        0x47t 0x0t
        0x67t 0x0t
        0x47t 0x0t
        0x67t 0x0t
        0x47t 0x0t
        0x67t 0x0t
        0x48t 0x0t
        0x68t 0x0t
        0x26t 0x1t
        0x27t 0x1t
        0x49t 0x0t
        0x69t 0x0t
        0x49t 0x0t
        0x69t 0x0t
        0x49t 0x0t
        0x69t 0x0t
        0x49t 0x0t
        0x69t 0x0t
        0x49t 0x0t
        0x31t 0x1t
        0x49t 0x0t
        0x69t 0x0t
        0x4at 0x0t
        0x6at 0x0t
        0x4bt 0x0t
        0x6bt 0x0t
        0x38t 0x1t
        0x4ct 0x0t
        0x6ct 0x0t
        0x4ct 0x0t
        0x6ct 0x0t
        0x4ct 0x0t
        0x6ct 0x0t
        0x4ct 0x0t
        0x6ct 0x0t
        0x41t 0x1t
        0x42t 0x1t
        0x4et 0x0t
        0x6et 0x0t
        0x4et 0x0t
        0x6et 0x0t
        0x4et 0x0t
        0x6et 0x0t
        0xbct 0x2t
        0x4at 0x1t
        0x4bt 0x1t
        0x4ft 0x0t
        0x6ft 0x0t
        0x4ft 0x0t
        0x6ft 0x0t
        0x4ft 0x0t
        0x6ft 0x0t
        0x52t 0x1t
        0x53t 0x1t
        0x52t 0x0t
        0x72t 0x0t
        0x52t 0x0t
        0x72t 0x0t
        0x52t 0x0t
        0x72t 0x0t
        0x53t 0x0t
        0x73t 0x0t
        0x53t 0x0t
        0x73t 0x0t
        0x53t 0x0t
        0x73t 0x0t
        0x53t 0x0t
        0x73t 0x0t
        0x54t 0x0t
        0x74t 0x0t
        0x54t 0x0t
        0x74t 0x0t
        0x66t 0x1t
        0x67t 0x1t
        0x55t 0x0t
        0x75t 0x0t
        0x55t 0x0t
        0x75t 0x0t
        0x55t 0x0t
        0x75t 0x0t
        0x55t 0x0t
        0x75t 0x0t
        0x55t 0x0t
        0x75t 0x0t
        0x55t 0x0t
        0x75t 0x0t
        0x57t 0x0t
        0x77t 0x0t
        0x59t 0x0t
        0x79t 0x0t
        0x59t 0x0t
        0x5at 0x0t
        0x7at 0x0t
        0x5at 0x0t
        0x7at 0x0t
        0x5at 0x0t
        0x7at 0x0t
        0x73t 0x0t
        0x80t 0x1t
        0x81t 0x1t
        0x82t 0x1t
        0x83t 0x1t
        0x84t 0x1t
        0x85t 0x1t
        0x86t 0x1t
        0x87t 0x1t
        0x88t 0x1t
        0x89t 0x1t
        0x8at 0x1t
        0x8bt 0x1t
        0x8ct 0x1t
        0x8dt 0x1t
        0x8et 0x1t
        0x8ft 0x1t
        0x90t 0x1t
        0x91t 0x1t
        0x92t 0x1t
        0x93t 0x1t
        0x94t 0x1t
        0x95t 0x1t
        0x96t 0x1t
        0x97t 0x1t
        0x98t 0x1t
        0x99t 0x1t
        0x9at 0x1t
        0x9bt 0x1t
        0x9ct 0x1t
        0x9dt 0x1t
        0x9et 0x1t
        0x9ft 0x1t
        0x4ft 0x0t
        0x6ft 0x0t
        0xa2t 0x1t
        0xa3t 0x1t
        0xa4t 0x1t
        0xa5t 0x1t
        0xa6t 0x1t
        0xa7t 0x1t
        0xa8t 0x1t
        0xa9t 0x1t
        0xaat 0x1t
        0xabt 0x1t
        0xact 0x1t
        0xadt 0x1t
        0xaet 0x1t
        0x55t 0x0t
        0x75t 0x0t
        0xb1t 0x1t
        0xb2t 0x1t
        0xb3t 0x1t
        0xb4t 0x1t
        0xb5t 0x1t
        0xb6t 0x1t
        0xb7t 0x1t
        0xb8t 0x1t
        0xb9t 0x1t
        0xbat 0x1t
        0xbbt 0x1t
        0xbct 0x1t
        0xbdt 0x1t
        0xbet 0x1t
        0xbft 0x1t
        0xc0t 0x1t
        0xc1t 0x1t
        0xc2t 0x1t
        0xc3t 0x1t
        0x44t 0x0t
        0x44t 0x0t
        0x64t 0x0t
        0x4ct 0x0t
        0x4ct 0x0t
        0x6ct 0x0t
        0x4et 0x0t
        0x4et 0x0t
        0x6et 0x0t
        0x41t 0x0t
        0x61t 0x0t
        0x49t 0x0t
        0x69t 0x0t
        0x4ft 0x0t
        0x6ft 0x0t
        0x55t 0x0t
        0x75t 0x0t
        0xdct 0x0t
        0xfct 0x0t
        0xdct 0x0t
        0xfct 0x0t
        0xdct 0x0t
        0xfct 0x0t
        0xdct 0x0t
        0xfct 0x0t
        0xddt 0x1t
        0xc4t 0x0t
        0xe4t 0x0t
        0x26t 0x2t
        0x27t 0x2t
        0xc6t 0x0t
        0xe6t 0x0t
        0xe4t 0x1t
        0xe5t 0x1t
        0x47t 0x0t
        0x67t 0x0t
        0x4bt 0x0t
        0x6bt 0x0t
        0x4ft 0x0t
        0x6ft 0x0t
        0xeat 0x1t
        0xebt 0x1t
        0xb7t 0x1t
        0x92t 0x2t
        0x6at 0x0t
        0x44t 0x0t
        0x44t 0x0t
        0x64t 0x0t
        0x47t 0x0t
        0x67t 0x0t
        0xf6t 0x1t
        0xf7t 0x1t
        0x4et 0x0t
        0x6et 0x0t
        0xc5t 0x0t
        0xe5t 0x0t
        0xc6t 0x0t
        0xe6t 0x0t
        0xd8t 0x0t
        0xf8t 0x0t
        0x41t 0x0t
        0x61t 0x0t
        0x41t 0x0t
        0x61t 0x0t
        0x45t 0x0t
        0x65t 0x0t
        0x45t 0x0t
        0x65t 0x0t
        0x49t 0x0t
        0x69t 0x0t
        0x49t 0x0t
        0x69t 0x0t
        0x4ft 0x0t
        0x6ft 0x0t
        0x4ft 0x0t
        0x6ft 0x0t
        0x52t 0x0t
        0x72t 0x0t
        0x52t 0x0t
        0x72t 0x0t
        0x55t 0x0t
        0x75t 0x0t
        0x55t 0x0t
        0x75t 0x0t
        0x53t 0x0t
        0x73t 0x0t
        0x54t 0x0t
        0x74t 0x0t
        0x1ct 0x2t
        0x1dt 0x2t
        0x48t 0x0t
        0x68t 0x0t
        0x20t 0x2t
        0x21t 0x2t
        0x22t 0x2t
        0x23t 0x2t
        0x24t 0x2t
        0x25t 0x2t
        0x41t 0x0t
        0x61t 0x0t
        0x45t 0x0t
        0x65t 0x0t
        0xd6t 0x0t
        0xf6t 0x0t
        0xd5t 0x0t
        0xf5t 0x0t
        0x4ft 0x0t
        0x6ft 0x0t
        0x2et 0x2t
        0x2ft 0x2t
        0x59t 0x0t
        0x79t 0x0t
        0x34t 0x2t
        0x35t 0x2t
        0x36t 0x2t
        0x37t 0x2t
        0x38t 0x2t
        0x39t 0x2t
        0x3at 0x2t
        0x3bt 0x2t
        0x3ct 0x2t
        0x3dt 0x2t
        0x3et 0x2t
        0x3ft 0x2t
        0x40t 0x2t
        0x41t 0x2t
        0x42t 0x2t
        0x43t 0x2t
        0x44t 0x2t
        0x45t 0x2t
        0x46t 0x2t
        0x47t 0x2t
        0x48t 0x2t
        0x49t 0x2t
        0x4at 0x2t
        0x4bt 0x2t
        0x4ct 0x2t
        0x4dt 0x2t
        0x4et 0x2t
        0x4ft 0x2t
        0x50t 0x2t
        0x51t 0x2t
        0x52t 0x2t
        0x53t 0x2t
        0x54t 0x2t
        0x55t 0x2t
        0x56t 0x2t
        0x57t 0x2t
        0x58t 0x2t
        0x59t 0x2t
        0x5at 0x2t
        0x5bt 0x2t
        0x5ct 0x2t
        0x5dt 0x2t
        0x5et 0x2t
        0x5ft 0x2t
        0x60t 0x2t
        0x61t 0x2t
        0x62t 0x2t
        0x63t 0x2t
        0x64t 0x2t
        0x65t 0x2t
        0x66t 0x2t
        0x67t 0x2t
        0x68t 0x2t
        0x69t 0x2t
        0x6at 0x2t
        0x6bt 0x2t
        0x6ct 0x2t
        0x6dt 0x2t
        0x6et 0x2t
        0x6ft 0x2t
        0x70t 0x2t
        0x71t 0x2t
        0x72t 0x2t
        0x73t 0x2t
        0x74t 0x2t
        0x75t 0x2t
        0x76t 0x2t
        0x77t 0x2t
        0x78t 0x2t
        0x79t 0x2t
        0x7at 0x2t
        0x7bt 0x2t
        0x7ct 0x2t
        0x7dt 0x2t
        0x7et 0x2t
        0x7ft 0x2t
        0x80t 0x2t
        0x81t 0x2t
        0x82t 0x2t
        0x83t 0x2t
        0x84t 0x2t
        0x85t 0x2t
        0x86t 0x2t
        0x87t 0x2t
        0x88t 0x2t
        0x89t 0x2t
        0x8at 0x2t
        0x8bt 0x2t
        0x8ct 0x2t
        0x8dt 0x2t
        0x8et 0x2t
        0x8ft 0x2t
        0x90t 0x2t
        0x91t 0x2t
        0x92t 0x2t
        0x93t 0x2t
        0x94t 0x2t
        0x95t 0x2t
        0x96t 0x2t
        0x97t 0x2t
        0x98t 0x2t
        0x99t 0x2t
        0x9at 0x2t
        0x9bt 0x2t
        0x9ct 0x2t
        0x9dt 0x2t
        0x9et 0x2t
        0x9ft 0x2t
        0xa0t 0x2t
        0xa1t 0x2t
        0xa2t 0x2t
        0xa3t 0x2t
        0xa4t 0x2t
        0xa5t 0x2t
        0xa6t 0x2t
        0xa7t 0x2t
        0xa8t 0x2t
        0xa9t 0x2t
        0xaat 0x2t
        0xabt 0x2t
        0xact 0x2t
        0xadt 0x2t
        0xaet 0x2t
        0xaft 0x2t
        0x68t 0x0t
        0x66t 0x2t
        0x6at 0x0t
        0x72t 0x0t
        0x79t 0x2t
        0x7bt 0x2t
        0x81t 0x2t
        0x77t 0x0t
        0x79t 0x0t
        0xb9t 0x2t
        0xbat 0x2t
        0xbbt 0x2t
        0xbct 0x2t
        0xbdt 0x2t
        0xbet 0x2t
        0xbft 0x2t
        0xc0t 0x2t
        0xc1t 0x2t
        0xc2t 0x2t
        0xc3t 0x2t
        0xc4t 0x2t
        0xc5t 0x2t
        0xc6t 0x2t
        0xc7t 0x2t
        0xc8t 0x2t
        0xc9t 0x2t
        0xcat 0x2t
        0xcbt 0x2t
        0xcct 0x2t
        0xcdt 0x2t
        0xcet 0x2t
        0xcft 0x2t
        0xd0t 0x2t
        0xd1t 0x2t
        0xd2t 0x2t
        0xd3t 0x2t
        0xd4t 0x2t
        0xd5t 0x2t
        0xd6t 0x2t
        0xd7t 0x2t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0xdet 0x2t
        0xdft 0x2t
        0x63t 0x2t
        0x6ct 0x0t
        0x73t 0x0t
        0x78t 0x0t
        0x95t 0x2t
        0xe5t 0x2t
        0xe6t 0x2t
        0xe7t 0x2t
        0xe8t 0x2t
        0xe9t 0x2t
        0xeat 0x2t
        0xebt 0x2t
        0xect 0x2t
        0xedt 0x2t
        0xeet 0x2t
        0xeft 0x2t
        0xf0t 0x2t
        0xf1t 0x2t
        0xf2t 0x2t
        0xf3t 0x2t
        0xf4t 0x2t
        0xf5t 0x2t
        0xf6t 0x2t
        0xf7t 0x2t
        0xf8t 0x2t
        0xf9t 0x2t
        0xfat 0x2t
        0xfbt 0x2t
        0xfct 0x2t
        0xfdt 0x2t
        0xfet 0x2t
        0xfft 0x2t
        0x0t 0x3t
        0x1t 0x3t
        0x2t 0x3t
        0x3t 0x3t
        0x4t 0x3t
        0x5t 0x3t
        0x6t 0x3t
        0x7t 0x3t
        0x8t 0x3t
        0x9t 0x3t
        0xat 0x3t
        0xbt 0x3t
        0xct 0x3t
        0xdt 0x3t
        0xet 0x3t
        0xft 0x3t
        0x10t 0x3t
        0x11t 0x3t
        0x12t 0x3t
        0x13t 0x3t
        0x14t 0x3t
        0x15t 0x3t
        0x16t 0x3t
        0x17t 0x3t
        0x18t 0x3t
        0x19t 0x3t
        0x1at 0x3t
        0x1bt 0x3t
        0x1ct 0x3t
        0x1dt 0x3t
        0x1et 0x3t
        0x1ft 0x3t
        0x20t 0x3t
        0x21t 0x3t
        0x22t 0x3t
        0x23t 0x3t
        0x24t 0x3t
        0x25t 0x3t
        0x26t 0x3t
        0x27t 0x3t
        0x28t 0x3t
        0x29t 0x3t
        0x2at 0x3t
        0x2bt 0x3t
        0x2ct 0x3t
        0x2dt 0x3t
        0x2et 0x3t
        0x2ft 0x3t
        0x30t 0x3t
        0x31t 0x3t
        0x32t 0x3t
        0x33t 0x3t
        0x34t 0x3t
        0x35t 0x3t
        0x36t 0x3t
        0x37t 0x3t
        0x38t 0x3t
        0x39t 0x3t
        0x3at 0x3t
        0x3bt 0x3t
        0x3ct 0x3t
        0x3dt 0x3t
        0x3et 0x3t
        0x3ft 0x3t
        0x0t 0x3t
        0x1t 0x3t
        0x42t 0x3t
        0x13t 0x3t
        0x8t 0x3t
        0x45t 0x3t
        0x46t 0x3t
        0x47t 0x3t
        0x48t 0x3t
        0x49t 0x3t
        0x4at 0x3t
        0x4bt 0x3t
        0x4ct 0x3t
        0x4dt 0x3t
        0x4et 0x3t
        0x4ft 0x3t
        0x50t 0x3t
        0x51t 0x3t
        0x52t 0x3t
        0x53t 0x3t
        0x54t 0x3t
        0x55t 0x3t
        0x56t 0x3t
        0x57t 0x3t
        0x58t 0x3t
        0x59t 0x3t
        0x5at 0x3t
        0x5bt 0x3t
        0x5ct 0x3t
        0x5dt 0x3t
        0x5et 0x3t
        0x5ft 0x3t
        0x60t 0x3t
        0x61t 0x3t
        0x62t 0x3t
        0x63t 0x3t
        0x64t 0x3t
        0x65t 0x3t
        0x66t 0x3t
        0x67t 0x3t
        0x68t 0x3t
        0x69t 0x3t
        0x6at 0x3t
        0x6bt 0x3t
        0x6ct 0x3t
        0x6dt 0x3t
        0x6et 0x3t
        0x6ft 0x3t
        0x70t 0x3t
        0x71t 0x3t
        0x72t 0x3t
        0x73t 0x3t
        0xb9t 0x2t
        0x75t 0x3t
        0x76t 0x3t
        0x77t 0x3t
        0x78t 0x3t
        0x79t 0x3t
        0x20t 0x0t
        0x7bt 0x3t
        0x7ct 0x3t
        0x7dt 0x3t
        0x3bt 0x0t
        0x7ft 0x3t
        0x80t 0x3t
        0x81t 0x3t
        0x82t 0x3t
        0x83t 0x3t
        0x20t 0x0t
        0xa8t 0x0t
        0x91t 0x3t
        0xb7t 0x0t
        0x95t 0x3t
        0x97t 0x3t
        0x99t 0x3t
        0x8bt 0x3t
        0x9ft 0x3t
        0x8dt 0x3t
        0xa5t 0x3t
        0xa9t 0x3t
        0xcat 0x3t
        0x91t 0x3t
        0x92t 0x3t
        0x93t 0x3t
        0x94t 0x3t
        0x95t 0x3t
        0x96t 0x3t
        0x97t 0x3t
        0x98t 0x3t
        0x99t 0x3t
        0x9at 0x3t
        0x9bt 0x3t
        0x9ct 0x3t
        0x9dt 0x3t
        0x9et 0x3t
        0x9ft 0x3t
        0xa0t 0x3t
        0xa1t 0x3t
        0xa2t 0x3t
        0xa3t 0x3t
        0xa4t 0x3t
        0xa5t 0x3t
        0xa6t 0x3t
        0xa7t 0x3t
        0xa8t 0x3t
        0xa9t 0x3t
        0x99t 0x3t
        0xa5t 0x3t
        0xb1t 0x3t
        0xb5t 0x3t
        0xb7t 0x3t
        0xb9t 0x3t
        0xcbt 0x3t
        0xb1t 0x3t
        0xb2t 0x3t
        0xb3t 0x3t
        0xb4t 0x3t
        0xb5t 0x3t
        0xb6t 0x3t
        0xb7t 0x3t
        0xb8t 0x3t
        0xb9t 0x3t
        0xbat 0x3t
        0xbbt 0x3t
        0xbct 0x3t
        0xbdt 0x3t
        0xbet 0x3t
        0xbft 0x3t
        0xc0t 0x3t
        0xc1t 0x3t
        0xc2t 0x3t
        0xc3t 0x3t
        0xc4t 0x3t
        0xc5t 0x3t
        0xc6t 0x3t
        0xc7t 0x3t
        0xc8t 0x3t
        0xc9t 0x3t
        0xb9t 0x3t
        0xc5t 0x3t
        0xbft 0x3t
        0xc5t 0x3t
        0xc9t 0x3t
        0xcft 0x3t
        0xb2t 0x3t
        0xb8t 0x3t
        0xa5t 0x3t
        0xd2t 0x3t
        0xd2t 0x3t
        0xc6t 0x3t
        0xc0t 0x3t
        0xd7t 0x3t
        0xd8t 0x3t
        0xd9t 0x3t
        0xdat 0x3t
        0xdbt 0x3t
        0xdct 0x3t
        0xddt 0x3t
        0xdet 0x3t
        0xdft 0x3t
        0xe0t 0x3t
        0xe1t 0x3t
        0xe2t 0x3t
        0xe3t 0x3t
        0xe4t 0x3t
        0xe5t 0x3t
        0xe6t 0x3t
        0xe7t 0x3t
        0xe8t 0x3t
        0xe9t 0x3t
        0xeat 0x3t
        0xebt 0x3t
        0xect 0x3t
        0xedt 0x3t
        0xeet 0x3t
        0xeft 0x3t
        0xbat 0x3t
        0xc1t 0x3t
        0xc2t 0x3t
        0xf3t 0x3t
        0x98t 0x3t
        0xb5t 0x3t
        0xf6t 0x3t
        0xf7t 0x3t
        0xf8t 0x3t
        0xa3t 0x3t
        0xfat 0x3t
        0xfbt 0x3t
        0xfct 0x3t
        0xfdt 0x3t
        0xfet 0x3t
        0xfft 0x3t
        0x15t 0x4t
        0x15t 0x4t
        0x2t 0x4t
        0x13t 0x4t
        0x4t 0x4t
        0x5t 0x4t
        0x6t 0x4t
        0x6t 0x4t
        0x8t 0x4t
        0x9t 0x4t
        0xat 0x4t
        0xbt 0x4t
        0x1at 0x4t
        0x18t 0x4t
        0x23t 0x4t
        0xft 0x4t
        0x10t 0x4t
        0x11t 0x4t
        0x12t 0x4t
        0x13t 0x4t
        0x14t 0x4t
        0x15t 0x4t
        0x16t 0x4t
        0x17t 0x4t
        0x18t 0x4t
        0x18t 0x4t
        0x1at 0x4t
        0x1bt 0x4t
        0x1ct 0x4t
        0x1dt 0x4t
        0x1et 0x4t
        0x1ft 0x4t
        0x20t 0x4t
        0x21t 0x4t
        0x22t 0x4t
        0x23t 0x4t
        0x24t 0x4t
        0x25t 0x4t
        0x26t 0x4t
        0x27t 0x4t
        0x28t 0x4t
        0x29t 0x4t
        0x2at 0x4t
        0x2bt 0x4t
        0x2ct 0x4t
        0x2dt 0x4t
        0x2et 0x4t
        0x2ft 0x4t
        0x30t 0x4t
        0x31t 0x4t
        0x32t 0x4t
        0x33t 0x4t
        0x34t 0x4t
        0x35t 0x4t
        0x36t 0x4t
        0x37t 0x4t
        0x38t 0x4t
        0x38t 0x4t
        0x3at 0x4t
        0x3bt 0x4t
        0x3ct 0x4t
        0x3dt 0x4t
        0x3et 0x4t
        0x3ft 0x4t
        0x40t 0x4t
        0x41t 0x4t
        0x42t 0x4t
        0x43t 0x4t
        0x44t 0x4t
        0x45t 0x4t
        0x46t 0x4t
        0x47t 0x4t
        0x48t 0x4t
        0x49t 0x4t
        0x4at 0x4t
        0x4bt 0x4t
        0x4ct 0x4t
        0x4dt 0x4t
        0x4et 0x4t
        0x4ft 0x4t
        0x35t 0x4t
        0x35t 0x4t
        0x52t 0x4t
        0x33t 0x4t
        0x54t 0x4t
        0x55t 0x4t
        0x56t 0x4t
        0x56t 0x4t
        0x58t 0x4t
        0x59t 0x4t
        0x5at 0x4t
        0x5bt 0x4t
        0x3at 0x4t
        0x38t 0x4t
        0x43t 0x4t
        0x5ft 0x4t
        0x60t 0x4t
        0x61t 0x4t
        0x62t 0x4t
        0x63t 0x4t
        0x64t 0x4t
        0x65t 0x4t
        0x66t 0x4t
        0x67t 0x4t
        0x68t 0x4t
        0x69t 0x4t
        0x6at 0x4t
        0x6bt 0x4t
        0x6ct 0x4t
        0x6dt 0x4t
        0x6et 0x4t
        0x6ft 0x4t
        0x70t 0x4t
        0x71t 0x4t
        0x72t 0x4t
        0x73t 0x4t
        0x74t 0x4t
        0x75t 0x4t
        0x74t 0x4t
        0x75t 0x4t
        0x78t 0x4t
        0x79t 0x4t
        0x7at 0x4t
        0x7bt 0x4t
        0x7ct 0x4t
        0x7dt 0x4t
        0x7et 0x4t
        0x7ft 0x4t
        0x80t 0x4t
        0x81t 0x4t
        0x82t 0x4t
        0x83t 0x4t
        0x84t 0x4t
        0x85t 0x4t
        0x86t 0x4t
        0x87t 0x4t
        0x88t 0x4t
        0x89t 0x4t
        0x8at 0x4t
        0x8bt 0x4t
        0x8ct 0x4t
        0x8dt 0x4t
        0x8et 0x4t
        0x8ft 0x4t
        0x90t 0x4t
        0x91t 0x4t
        0x92t 0x4t
        0x93t 0x4t
        0x94t 0x4t
        0x95t 0x4t
        0x96t 0x4t
        0x97t 0x4t
        0x98t 0x4t
        0x99t 0x4t
        0x9at 0x4t
        0x9bt 0x4t
        0x9ct 0x4t
        0x9dt 0x4t
        0x9et 0x4t
        0x9ft 0x4t
        0xa0t 0x4t
        0xa1t 0x4t
        0xa2t 0x4t
        0xa3t 0x4t
        0xa4t 0x4t
        0xa5t 0x4t
        0xa6t 0x4t
        0xa7t 0x4t
        0xa8t 0x4t
        0xa9t 0x4t
        0xaat 0x4t
        0xabt 0x4t
        0xact 0x4t
        0xadt 0x4t
        0xaet 0x4t
        0xaft 0x4t
        0xb0t 0x4t
        0xb1t 0x4t
        0xb2t 0x4t
        0xb3t 0x4t
        0xb4t 0x4t
        0xb5t 0x4t
        0xb6t 0x4t
        0xb7t 0x4t
        0xb8t 0x4t
        0xb9t 0x4t
        0xbat 0x4t
        0xbbt 0x4t
        0xbct 0x4t
        0xbdt 0x4t
        0xbet 0x4t
        0xbft 0x4t
        0xc0t 0x4t
        0x16t 0x4t
        0x36t 0x4t
        0xc3t 0x4t
        0xc4t 0x4t
        0xc5t 0x4t
        0xc6t 0x4t
        0xc7t 0x4t
        0xc8t 0x4t
        0xc9t 0x4t
        0xcat 0x4t
        0xcbt 0x4t
        0xcct 0x4t
        0xcdt 0x4t
        0xcet 0x4t
        0xcft 0x4t
        0x10t 0x4t
        0x30t 0x4t
        0x10t 0x4t
        0x30t 0x4t
        0xd4t 0x4t
        0xd5t 0x4t
        0x15t 0x4t
        0x35t 0x4t
        0xd8t 0x4t
        0xd9t 0x4t
        0xd8t 0x4t
        0xd9t 0x4t
        0x16t 0x4t
        0x36t 0x4t
        0x17t 0x4t
        0x37t 0x4t
        0xe0t 0x4t
        0xe1t 0x4t
        0x18t 0x4t
        0x38t 0x4t
        0x18t 0x4t
        0x38t 0x4t
        0x1et 0x4t
        0x3et 0x4t
        0xe8t 0x4t
        0xe9t 0x4t
        0xe8t 0x4t
        0xe9t 0x4t
        0x2dt 0x4t
        0x4dt 0x4t
        0x23t 0x4t
        0x43t 0x4t
        0x23t 0x4t
        0x43t 0x4t
        0x23t 0x4t
        0x43t 0x4t
        0x27t 0x4t
        0x47t 0x4t
        0xf6t 0x4t
        0xf7t 0x4t
        0x2bt 0x4t
        0x4bt 0x4t
        0xfat 0x4t
        0xfbt 0x4t
        0xfct 0x4t
        0xfdt 0x4t
        0xfet 0x4t
        0xfft 0x4t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "dictType"

    .prologue
    const/16 v1, 0x30

    .line 155
    invoke-direct {p0, p2}, Lcom/android/inputmethod/latin/Dictionary;-><init>(Ljava/lang/String;)V

    .line 40
    new-array v0, v1, [C

    iput-object v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mWordBuilder:[C

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mUpdatingLock:Ljava/lang/Object;

    .line 636
    new-array v0, v1, [C

    iput-object v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mLookedUpString:[C

    .line 156
    iput-object p1, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mContext:Landroid/content/Context;

    .line 157
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/ExpandableDictionary;->clearDictionary()V

    .line 158
    new-array v0, v1, [[I

    iput-object v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mCodes:[[I

    .line 159
    return-void
.end method

.method static synthetic access$000(Lcom/android/inputmethod/latin/ExpandableDictionary;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mUpdatingLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/inputmethod/latin/ExpandableDictionary;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mUpdatingDictionary:Z

    return p1
.end method

.method private addWordAndShortcutsFromNode(Lcom/android/inputmethod/latin/ExpandableDictionary$Node;[CIILjava/util/ArrayList;)Z
    .locals 10
    .parameter "node"
    .parameter "word"
    .parameter "depth"
    .parameter "finalFreq"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/inputmethod/latin/ExpandableDictionary$Node;",
            "[CII",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p5, suggestions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;>;"
    const/16 v9, 0x12

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 393
    if-lez p4, :cond_1

    iget-boolean v5, p1, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mShortcutOnly:Z

    if-nez v5, :cond_1

    .line 398
    new-instance v5, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;

    new-instance v6, Ljava/lang/String;

    add-int/lit8 v7, p3, 0x1

    invoke-direct {v6, p2, v3, v7}, Ljava/lang/String;-><init>([CII)V

    iget-object v7, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mDictType:Ljava/lang/String;

    invoke-direct {v5, v6, p4, v4, v7}, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;-><init>(Ljava/lang/CharSequence;IILjava/lang/String;)V

    invoke-virtual {p5, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v5, v9, :cond_1

    .line 411
    :cond_0
    :goto_0
    return v3

    .line 402
    :cond_1
    iget-object v5, p1, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mShortcutTargets:Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    .line 403
    iget-object v5, p1, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mShortcutTargets:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 404
    .local v0, length:I
    const/4 v2, 0x0

    .local v2, shortcutIndex:I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 405
    iget-object v5, p1, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mShortcutTargets:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [C

    .line 406
    .local v1, shortcut:[C
    new-instance v5, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;

    new-instance v6, Ljava/lang/String;

    array-length v7, v1

    invoke-direct {v6, v1, v3, v7}, Ljava/lang/String;-><init>([CII)V

    const/4 v7, 0x7

    iget-object v8, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mDictType:Ljava/lang/String;

    invoke-direct {v5, v6, p4, v7, v8}, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;-><init>(Ljava/lang/CharSequence;IILjava/lang/String;)V

    invoke-virtual {p5, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gt v5, v9, :cond_0

    .line 404
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0           #length:I
    .end local v1           #shortcut:[C
    .end local v2           #shortcutIndex:I
    :cond_2
    move v3, v4

    .line 411
    goto :goto_0
.end method

.method private addWordRec(Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;Ljava/lang/String;ILjava/lang/String;ILcom/android/inputmethod/latin/ExpandableDictionary$Node;)V
    .locals 14
    .parameter "children"
    .parameter "word"
    .parameter "depth"
    .parameter "shortcutTarget"
    .parameter "frequency"
    .parameter "parentNode"

    .prologue
    .line 207
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v13

    .line 208
    .local v13, wordLength:I
    move/from16 v0, p3

    if-gt v13, v0, :cond_1

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    invoke-virtual/range {p2 .. p3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 211
    .local v8, c:C
    iget v9, p1, Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;->mLength:I

    .line 212
    .local v9, childrenLength:I
    const/4 v7, 0x0

    .line 213
    .local v7, childNode:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    if-ge v10, v9, :cond_2

    .line 214
    iget-object v1, p1, Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;->mData:[Lcom/android/inputmethod/latin/ExpandableDictionary$Node;

    aget-object v12, v1, v10

    .line 215
    .local v12, node:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    iget-char v1, v12, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mCode:C

    if-ne v1, v8, :cond_5

    .line 216
    move-object v7, v12

    .line 220
    .end local v12           #node:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    :cond_2
    if-eqz p4, :cond_6

    const/4 v11, 0x1

    .line 221
    .local v11, isShortcutOnly:Z
    :goto_2
    if-nez v7, :cond_3

    .line 222
    new-instance v7, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;

    .end local v7           #childNode:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    invoke-direct {v7}, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;-><init>()V

    .line 223
    .restart local v7       #childNode:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    iput-char v8, v7, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mCode:C

    .line 224
    move-object/from16 v0, p6

    iput-object v0, v7, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mParent:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;

    .line 225
    iput-boolean v11, v7, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mShortcutOnly:Z

    .line 226
    invoke-virtual {p1, v7}, Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;->add(Lcom/android/inputmethod/latin/ExpandableDictionary$Node;)V

    .line 228
    :cond_3
    add-int/lit8 v1, p3, 0x1

    if-ne v13, v1, :cond_8

    if-eqz p4, :cond_8

    .line 230
    const/4 v1, 0x1

    iput-boolean v1, v7, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mTerminal:Z

    .line 231
    if-eqz v11, :cond_7

    .line 232
    iget-object v1, v7, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mShortcutTargets:Ljava/util/ArrayList;

    if-nez v1, :cond_4

    .line 233
    invoke-static {}, Lcom/android/inputmethod/latin/CollectionUtils;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v7, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mShortcutTargets:Ljava/util/ArrayList;

    .line 235
    :cond_4
    iget-object v1, v7, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mShortcutTargets:Ljava/util/ArrayList;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    :goto_3
    iget v1, v7, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mFrequency:I

    move/from16 v0, p5

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v7, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mFrequency:I

    .line 240
    iget v1, v7, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mFrequency:I

    const/16 v2, 0xff

    if-le v1, v2, :cond_0

    const/16 v1, 0xff

    iput v1, v7, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mFrequency:I

    goto :goto_0

    .line 213
    .end local v11           #isShortcutOnly:Z
    .restart local v12       #node:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 220
    .end local v12           #node:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    :cond_6
    const/4 v11, 0x0

    goto :goto_2

    .line 237
    .restart local v11       #isShortcutOnly:Z
    :cond_7
    const/4 v1, 0x0

    iput-boolean v1, v7, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mShortcutOnly:Z

    goto :goto_3

    .line 243
    :cond_8
    iget-object v1, v7, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mChildren:Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;

    if-nez v1, :cond_9

    .line 244
    new-instance v1, Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;

    invoke-direct {v1}, Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;-><init>()V

    iput-object v1, v7, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mChildren:Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;

    .line 246
    :cond_9
    iget-object v2, v7, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mChildren:Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;

    add-int/lit8 v4, p3, 0x1

    move-object v1, p0

    move-object/from16 v3, p2

    move-object/from16 v5, p4

    move/from16 v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/inputmethod/latin/ExpandableDictionary;->addWordRec(Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;Ljava/lang/String;ILjava/lang/String;ILcom/android/inputmethod/latin/ExpandableDictionary$Node;)V

    goto :goto_0
.end method

.method private static computeSkippedWordFinalFreq(III)I
    .locals 2
    .parameter "freq"
    .parameter "snr"
    .parameter "inputLength"

    .prologue
    .line 374
    const/4 v0, 0x3

    if-lt p2, v0, :cond_0

    .line 375
    mul-int v0, p0, p1

    add-int/lit8 v1, p2, -0x2

    mul-int/2addr v0, v1

    add-int/lit8 v1, p2, -0x1

    div-int/2addr v0, v1

    .line 377
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private reverseLookUp(Ljava/util/LinkedList;Ljava/util/ArrayList;)V
    .locals 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/inputmethod/latin/ExpandableDictionary$NextWord;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 648
    .local p1, terminalNodes:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/inputmethod/latin/ExpandableDictionary$NextWord;>;"
    .local p2, suggestions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;>;"
    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/inputmethod/latin/ExpandableDictionary$NextWord;

    .line 649
    .local v3, nextWord:Lcom/android/inputmethod/latin/ExpandableDictionary$NextWord;
    invoke-interface {v3}, Lcom/android/inputmethod/latin/ExpandableDictionary$NextWord;->getWordNode()Lcom/android/inputmethod/latin/ExpandableDictionary$Node;

    move-result-object v4

    .line 650
    .local v4, node:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    invoke-interface {v3}, Lcom/android/inputmethod/latin/ExpandableDictionary$NextWord;->getFrequency()I

    move-result v0

    .line 651
    .local v0, freq:I
    const/16 v2, 0x30

    .line 653
    .local v2, index:I
    :cond_1
    add-int/lit8 v2, v2, -0x1

    .line 654
    iget-object v5, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mLookedUpString:[C

    iget-char v6, v4, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mCode:C

    aput-char v6, v5, v2

    .line 655
    iget-object v4, v4, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mParent:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;

    .line 656
    if-eqz v4, :cond_2

    if-gtz v2, :cond_1

    .line 661
    :cond_2
    if-ltz v0, :cond_0

    if-nez v4, :cond_0

    .line 662
    new-instance v5, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;

    new-instance v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mLookedUpString:[C

    rsub-int/lit8 v8, v2, 0x30

    invoke-direct {v6, v7, v2, v8}, Ljava/lang/String;-><init>([CII)V

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mDictType:Ljava/lang/String;

    invoke-direct {v5, v6, v0, v7, v8}, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;-><init>(Ljava/lang/CharSequence;IILjava/lang/String;)V

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 667
    .end local v0           #freq:I
    .end local v2           #index:I
    .end local v3           #nextWord:Lcom/android/inputmethod/latin/ExpandableDictionary$NextWord;
    .end local v4           #node:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    :cond_3
    return-void
.end method

.method private runBigramReverseLookUp(Ljava/lang/CharSequence;Ljava/util/ArrayList;)V
    .locals 5
    .parameter "previousWord"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 609
    .local p2, suggestions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;>;"
    iget-object v1, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mRoots:Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/inputmethod/latin/ExpandableDictionary;->searchNode(Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;Ljava/lang/CharSequence;II)Lcom/android/inputmethod/latin/ExpandableDictionary$Node;

    move-result-object v0

    .line 611
    .local v0, prevWord:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mNGrams:Ljava/util/LinkedList;

    if-eqz v1, :cond_0

    .line 612
    iget-object v1, v0, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mNGrams:Ljava/util/LinkedList;

    invoke-direct {p0, v1, p2}, Lcom/android/inputmethod/latin/ExpandableDictionary;->reverseLookUp(Ljava/util/LinkedList;Ljava/util/ArrayList;)V

    .line 614
    :cond_0
    return-void
.end method

.method private searchNode(Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;Ljava/lang/CharSequence;II)Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    .locals 7
    .parameter "children"
    .parameter "word"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 682
    iget v0, p1, Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;->mLength:I

    .line 683
    .local v0, count:I
    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 684
    .local v1, currentChar:C
    const/4 v2, 0x0

    .local v2, j:I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 685
    iget-object v5, p1, Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;->mData:[Lcom/android/inputmethod/latin/ExpandableDictionary$Node;

    aget-object v3, v5, v2

    .line 686
    .local v3, node:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    iget-char v5, v3, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mCode:C

    if-ne v5, v1, :cond_1

    .line 687
    add-int/lit8 v5, p4, -0x1

    if-ne p3, v5, :cond_0

    .line 688
    iget-boolean v5, v3, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mTerminal:Z

    if-eqz v5, :cond_1

    .line 699
    .end local v3           #node:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    :goto_1
    return-object v3

    .line 692
    .restart local v3       #node:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    :cond_0
    iget-object v5, v3, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mChildren:Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;

    if-eqz v5, :cond_1

    .line 693
    iget-object v5, v3, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mChildren:Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;

    add-int/lit8 v6, p3, 0x1

    invoke-direct {p0, v5, p2, v6, p4}, Lcom/android/inputmethod/latin/ExpandableDictionary;->searchNode(Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;Ljava/lang/CharSequence;II)Lcom/android/inputmethod/latin/ExpandableDictionary$Node;

    move-result-object v4

    .line 694
    .local v4, returnNode:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    if-eqz v4, :cond_1

    move-object v3, v4

    goto :goto_1

    .line 684
    .end local v4           #returnNode:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 699
    .end local v3           #node:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private searchWord(Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;Ljava/lang/String;ILcom/android/inputmethod/latin/ExpandableDictionary$Node;)Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    .locals 8
    .parameter "children"
    .parameter "word"
    .parameter "depth"
    .parameter "parentNode"

    .prologue
    .line 576
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    .line 577
    .local v5, wordLength:I
    invoke-virtual {p2, p3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 579
    .local v0, c:C
    iget v2, p1, Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;->mLength:I

    .line 580
    .local v2, childrenLength:I
    const/4 v1, 0x0

    .line 581
    .local v1, childNode:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 582
    iget-object v6, p1, Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;->mData:[Lcom/android/inputmethod/latin/ExpandableDictionary$Node;

    aget-object v4, v6, v3

    .line 583
    .local v4, node:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    iget-char v6, v4, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mCode:C

    if-ne v6, v0, :cond_2

    .line 584
    move-object v1, v4

    .line 588
    .end local v4           #node:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    :cond_0
    if-nez v1, :cond_1

    .line 589
    new-instance v1, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;

    .end local v1           #childNode:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    invoke-direct {v1}, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;-><init>()V

    .line 590
    .restart local v1       #childNode:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    iput-char v0, v1, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mCode:C

    .line 591
    iput-object p4, v1, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mParent:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;

    .line 592
    invoke-virtual {p1, v1}, Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;->add(Lcom/android/inputmethod/latin/ExpandableDictionary$Node;)V

    .line 594
    :cond_1
    add-int/lit8 v6, p3, 0x1

    if-ne v5, v6, :cond_3

    .line 596
    const/4 v6, 0x1

    iput-boolean v6, v1, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mTerminal:Z

    .line 602
    .end local v1           #childNode:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    :goto_1
    return-object v1

    .line 581
    .restart local v1       #childNode:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    .restart local v4       #node:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 599
    .end local v4           #node:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    :cond_3
    iget-object v6, v1, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mChildren:Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;

    if-nez v6, :cond_4

    .line 600
    new-instance v6, Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;

    invoke-direct {v6}, Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;-><init>()V

    iput-object v6, v1, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mChildren:Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;

    .line 602
    :cond_4
    iget-object v6, v1, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mChildren:Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;

    add-int/lit8 v7, p3, 0x1

    invoke-direct {p0, v6, p2, v7, v1}, Lcom/android/inputmethod/latin/ExpandableDictionary;->searchWord(Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;Ljava/lang/String;ILcom/android/inputmethod/latin/ExpandableDictionary$Node;)Lcom/android/inputmethod/latin/ExpandableDictionary$Node;

    move-result-object v1

    goto :goto_1
.end method

.method private setBigramAndGetFrequency(Ljava/lang/String;Ljava/lang/String;ILcom/android/inputmethod/latin/UserHistoryForgettingCurveUtils$ForgettingCurveParams;)I
    .locals 9
    .parameter "word1"
    .parameter "word2"
    .parameter "frequency"
    .parameter "fcp"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 549
    iget-object v5, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mRoots:Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/android/inputmethod/latin/ExpandableDictionary;->searchWord(Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;Ljava/lang/String;ILcom/android/inputmethod/latin/ExpandableDictionary$Node;)Lcom/android/inputmethod/latin/ExpandableDictionary$Node;

    move-result-object v1

    .line 550
    .local v1, firstWord:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    iget-object v5, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mRoots:Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;

    invoke-direct {p0, v5, p2, v7, v8}, Lcom/android/inputmethod/latin/ExpandableDictionary;->searchWord(Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;Ljava/lang/String;ILcom/android/inputmethod/latin/ExpandableDictionary$Node;)Lcom/android/inputmethod/latin/ExpandableDictionary$Node;

    move-result-object v4

    .line 551
    .local v4, secondWord:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    iget-object v0, v1, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mNGrams:Ljava/util/LinkedList;

    .line 552
    .local v0, bigrams:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/inputmethod/latin/ExpandableDictionary$NextWord;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 553
    :cond_0
    invoke-static {}, Lcom/android/inputmethod/latin/CollectionUtils;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v5

    iput-object v5, v1, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mNGrams:Ljava/util/LinkedList;

    .line 554
    iget-object v0, v1, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mNGrams:Ljava/util/LinkedList;

    .line 562
    :cond_1
    if-eqz p4, :cond_4

    .line 564
    iget-object v5, v1, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mNGrams:Ljava/util/LinkedList;

    new-instance v6, Lcom/android/inputmethod/latin/ExpandableDictionary$NextHistoryWord;

    invoke-direct {v6, v4, p4}, Lcom/android/inputmethod/latin/ExpandableDictionary$NextHistoryWord;-><init>(Lcom/android/inputmethod/latin/ExpandableDictionary$Node;Lcom/android/inputmethod/latin/UserHistoryForgettingCurveUtils$ForgettingCurveParams;)V

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 568
    .end local p3
    :goto_0
    return p3

    .line 556
    .restart local p3
    :cond_2
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/inputmethod/latin/ExpandableDictionary$NextWord;

    .line 557
    .local v3, nw:Lcom/android/inputmethod/latin/ExpandableDictionary$NextWord;
    invoke-interface {v3}, Lcom/android/inputmethod/latin/ExpandableDictionary$NextWord;->getWordNode()Lcom/android/inputmethod/latin/ExpandableDictionary$Node;

    move-result-object v5

    if-ne v5, v4, :cond_3

    .line 558
    invoke-interface {v3}, Lcom/android/inputmethod/latin/ExpandableDictionary$NextWord;->notifyTypedAgainAndGetFrequency()I

    move-result p3

    goto :goto_0

    .line 566
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #nw:Lcom/android/inputmethod/latin/ExpandableDictionary$NextWord;
    :cond_4
    iget-object v5, v1, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mNGrams:Ljava/util/LinkedList;

    new-instance v6, Lcom/android/inputmethod/latin/ExpandableDictionary$NextStaticWord;

    invoke-direct {v6, v4, p3}, Lcom/android/inputmethod/latin/ExpandableDictionary$NextStaticWord;-><init>(Lcom/android/inputmethod/latin/ExpandableDictionary$Node;I)V

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static toLowerCase(C)C
    .locals 2
    .parameter "c"

    .prologue
    .line 718
    move v0, p0

    .line 719
    .local v0, baseChar:C
    sget-object v1, Lcom/android/inputmethod/latin/ExpandableDictionary;->BASE_CHARS:[C

    array-length v1, v1

    if-ge p0, v1, :cond_0

    .line 720
    sget-object v1, Lcom/android/inputmethod/latin/ExpandableDictionary;->BASE_CHARS:[C

    aget-char v0, v1, p0

    .line 722
    :cond_0
    const/16 v1, 0x41

    if-lt v0, v1, :cond_2

    const/16 v1, 0x5a

    if-gt v0, v1, :cond_2

    .line 723
    or-int/lit8 v1, v0, 0x20

    int-to-char v0, v1

    .line 727
    .end local v0           #baseChar:C
    :cond_1
    :goto_0
    return v0

    .line 724
    .restart local v0       #baseChar:C
    :cond_2
    const/16 v1, 0x7f

    if-le v0, v1, :cond_1

    .line 725
    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public addWord(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .parameter "word"
    .parameter "shortcutTarget"
    .parameter "frequency"

    .prologue
    .line 199
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x30

    if-lt v0, v1, :cond_0

    .line 203
    :goto_0
    return-void

    .line 202
    :cond_0
    iget-object v1, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mRoots:Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/inputmethod/latin/ExpandableDictionary;->addWordRec(Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;Ljava/lang/String;ILjava/lang/String;ILcom/android/inputmethod/latin/ExpandableDictionary$Node;)V

    goto :goto_0
.end method

.method protected clearDictionary()V
    .locals 1

    .prologue
    .line 703
    new-instance v0, Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;

    invoke-direct {v0}, Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mRoots:Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;

    .line 704
    return-void
.end method

.method protected getBigramWord(Ljava/lang/String;Ljava/lang/String;)Lcom/android/inputmethod/latin/ExpandableDictionary$NextWord;
    .locals 9
    .parameter "word1"
    .parameter "word2"

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 356
    iget-object v6, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mRoots:Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7, v8, v5}, Lcom/android/inputmethod/latin/ExpandableDictionary;->searchWord(Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;Ljava/lang/String;ILcom/android/inputmethod/latin/ExpandableDictionary$Node;)Lcom/android/inputmethod/latin/ExpandableDictionary$Node;

    move-result-object v1

    .line 357
    .local v1, firstWord:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    iget-object v6, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mRoots:Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;

    invoke-direct {p0, v6, p2, v8, v5}, Lcom/android/inputmethod/latin/ExpandableDictionary;->searchWord(Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;Ljava/lang/String;ILcom/android/inputmethod/latin/ExpandableDictionary$Node;)Lcom/android/inputmethod/latin/ExpandableDictionary$Node;

    move-result-object v4

    .line 358
    .local v4, secondWord:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    iget-object v0, v1, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mNGrams:Ljava/util/LinkedList;

    .line 359
    .local v0, bigrams:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/inputmethod/latin/ExpandableDictionary$NextWord;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    move-object v3, v5

    .line 368
    :goto_0
    return-object v3

    .line 362
    :cond_1
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/inputmethod/latin/ExpandableDictionary$NextWord;

    .line 363
    .local v3, nw:Lcom/android/inputmethod/latin/ExpandableDictionary$NextWord;
    invoke-interface {v3}, Lcom/android/inputmethod/latin/ExpandableDictionary$NextWord;->getWordNode()Lcom/android/inputmethod/latin/ExpandableDictionary$Node;

    move-result-object v6

    if-ne v6, v4, :cond_2

    goto :goto_0

    .end local v3           #nw:Lcom/android/inputmethod/latin/ExpandableDictionary$NextWord;
    :cond_3
    move-object v3, v5

    .line 368
    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getSuggestions(Lcom/android/inputmethod/latin/WordComposer;Ljava/lang/CharSequence;Lcom/android/inputmethod/keyboard/ProximityInfo;)Ljava/util/ArrayList;
    .locals 3
    .parameter "composer"
    .parameter "prevWord"
    .parameter "proximityInfo"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/inputmethod/latin/WordComposer;",
            "Ljava/lang/CharSequence;",
            "Lcom/android/inputmethod/keyboard/ProximityInfo;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 252
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/ExpandableDictionary;->reloadDictionaryIfRequired()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 264
    :cond_0
    :goto_0
    return-object v0

    .line 253
    :cond_1
    invoke-virtual {p1}, Lcom/android/inputmethod/latin/WordComposer;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 254
    invoke-virtual {p1}, Lcom/android/inputmethod/latin/WordComposer;->size()I

    move-result v1

    const/16 v2, 0x30

    if-ge v1, v2, :cond_0

    .line 257
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/inputmethod/latin/ExpandableDictionary;->getWordsInner(Lcom/android/inputmethod/latin/WordComposer;Ljava/lang/CharSequence;Lcom/android/inputmethod/keyboard/ProximityInfo;)Ljava/util/ArrayList;

    move-result-object v0

    .line 259
    .local v0, suggestions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;>;"
    goto :goto_0

    .line 261
    .end local v0           #suggestions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;>;"
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 262
    invoke-static {}, Lcom/android/inputmethod/latin/CollectionUtils;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 263
    .restart local v0       #suggestions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;>;"
    invoke-direct {p0, p2, v0}, Lcom/android/inputmethod/latin/ExpandableDictionary;->runBigramReverseLookUp(Ljava/lang/CharSequence;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method protected getWordsInner(Lcom/android/inputmethod/latin/WordComposer;Ljava/lang/CharSequence;Lcom/android/inputmethod/keyboard/ProximityInfo;)Ljava/util/ArrayList;
    .locals 16
    .parameter "codes"
    .parameter "prevWordForBigrams"
    .parameter "proximityInfo"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/inputmethod/latin/WordComposer;",
            "Ljava/lang/CharSequence;",
            "Lcom/android/inputmethod/keyboard/ProximityInfo;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 281
    invoke-static {}, Lcom/android/inputmethod/latin/CollectionUtils;->newArrayList()Ljava/util/ArrayList;

    move-result-object v10

    .line 282
    .local v10, suggestions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/android/inputmethod/latin/WordComposer;->size()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mInputLength:I

    .line 283
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mCodes:[[I

    array-length v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mInputLength:I

    if-ge v1, v2, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mInputLength:I

    new-array v1, v1, [[I

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mCodes:[[I

    .line 284
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/inputmethod/latin/WordComposer;->getInputPointers()Lcom/android/inputmethod/latin/InputPointers;

    move-result-object v11

    .line 285
    .local v11, ips:Lcom/android/inputmethod/latin/InputPointers;
    invoke-virtual {v11}, Lcom/android/inputmethod/latin/InputPointers;->getXCoordinates()[I

    move-result-object v13

    .line 286
    .local v13, xCoordinates:[I
    invoke-virtual {v11}, Lcom/android/inputmethod/latin/InputPointers;->getYCoordinates()[I

    move-result-object v15

    .line 288
    .local v15, yCoordinates:[I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mInputLength:I

    if-ge v9, v1, :cond_5

    .line 290
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mCodes:[[I

    aget-object v1, v1, v9

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mCodes:[[I

    aget-object v1, v1, v9

    array-length v1, v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_2

    .line 291
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mCodes:[[I

    const/16 v2, 0x10

    new-array v2, v2, [I

    aput-object v2, v1, v9

    .line 293
    :cond_2
    if-eqz v13, :cond_3

    array-length v1, v13

    if-ge v9, v1, :cond_3

    aget v12, v13, v9

    .line 295
    .local v12, x:I
    :goto_1
    if-eqz v13, :cond_4

    array-length v1, v15

    if-ge v9, v1, :cond_4

    aget v14, v15, v9

    .line 297
    .local v14, y:I
    :goto_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/android/inputmethod/latin/WordComposer;->getCodeAt(I)I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mCodes:[[I

    aget-object v2, v2, v9

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v14, v1, v2}, Lcom/android/inputmethod/keyboard/ProximityInfo;->fillArrayWithNearestKeyCodes(III[I)V

    .line 288
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 293
    .end local v12           #x:I
    .end local v14           #y:I
    :cond_3
    const/4 v12, -0x1

    goto :goto_1

    .line 295
    .restart local v12       #x:I
    :cond_4
    const/4 v14, -0x1

    goto :goto_2

    .line 299
    .end local v12           #x:I
    :cond_5
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mInputLength:I

    mul-int/lit8 v1, v1, 0x3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mMaxDepth:I

    .line 300
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mRoots:Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mWordBuilder:[C

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, -0x1

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v1 .. v10}, Lcom/android/inputmethod/latin/ExpandableDictionary;->getWordsRec(Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;Lcom/android/inputmethod/latin/WordComposer;[CIZIIILjava/util/ArrayList;)V

    .line 301
    .end local v9           #i:I
    const/4 v9, 0x0

    .restart local v9       #i:I
    :goto_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mInputLength:I

    if-ge v9, v1, :cond_6

    .line 302
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mRoots:Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mWordBuilder:[C

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v1 .. v10}, Lcom/android/inputmethod/latin/ExpandableDictionary;->getWordsRec(Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;Lcom/android/inputmethod/latin/WordComposer;[CIZIIILjava/util/ArrayList;)V

    .line 301
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 304
    :cond_6
    return-object v10
.end method

.method protected getWordsRec(Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;Lcom/android/inputmethod/latin/WordComposer;[CIZIIILjava/util/ArrayList;)V
    .locals 29
    .parameter "roots"
    .parameter "codes"
    .parameter "word"
    .parameter "depth"
    .parameter "completion"
    .parameter "snr"
    .parameter "inputIndex"
    .parameter "skipPos"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;",
            "Lcom/android/inputmethod/latin/WordComposer;",
            "[CIZIII",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 437
    .local p9, suggestions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;>;"
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;->mLength:I

    move/from16 v21, v0

    .line 438
    .local v21, count:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mInputLength:I

    move/from16 v20, v0

    .line 440
    .local v20, codeSize:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mMaxDepth:I

    move/from16 v0, p4

    if-le v0, v2, :cond_1

    .line 525
    :cond_0
    return-void

    .line 444
    :cond_1
    move/from16 v0, v20

    move/from16 v1, p7

    if-gt v0, v1, :cond_5

    .line 445
    const/16 v23, 0x0

    .line 450
    .local v23, currentChars:[I
    :goto_0
    const/16 v25, 0x0

    .local v25, i:I
    :goto_1
    move/from16 v0, v25

    move/from16 v1, v21

    if-ge v0, v1, :cond_0

    .line 451
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;->mData:[Lcom/android/inputmethod/latin/ExpandableDictionary$Node;

    aget-object v3, v2, v25

    .line 452
    .local v3, node:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    iget-char v0, v3, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mCode:C

    move/from16 v19, v0

    .line 453
    .local v19, c:C
    invoke-static/range {v19 .. v19}, Lcom/android/inputmethod/latin/ExpandableDictionary;->toLowerCase(C)C

    move-result v27

    .line 454
    .local v27, lowerC:C
    iget-boolean v0, v3, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mTerminal:Z

    move/from16 v28, v0

    .line 455
    .local v28, terminal:Z
    iget-object v8, v3, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mChildren:Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;

    .line 456
    .local v8, children:Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;
    iget v0, v3, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mFrequency:I

    move/from16 v24, v0

    .line 457
    .local v24, freq:I
    if-nez p5, :cond_2

    if-nez v23, :cond_7

    .line 458
    :cond_2
    aput-char v19, p3, p4

    .line 459
    if-eqz v28, :cond_3

    .line 461
    if-gez p8, :cond_6

    .line 462
    mul-int v6, v24, p6

    .local v6, finalFreq:I
    :goto_2
    move-object/from16 v2, p0

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v7, p9

    .line 466
    invoke-direct/range {v2 .. v7}, Lcom/android/inputmethod/latin/ExpandableDictionary;->addWordAndShortcutsFromNode(Lcom/android/inputmethod/latin/ExpandableDictionary$Node;[CIILjava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 471
    .end local v6           #finalFreq:I
    :cond_3
    if-eqz v8, :cond_4

    .line 472
    add-int/lit8 v11, p4, 0x1

    const/4 v12, 0x1

    move-object/from16 v7, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v13, p6

    move/from16 v14, p7

    move/from16 v15, p8

    move-object/from16 v16, p9

    invoke-virtual/range {v7 .. v16}, Lcom/android/inputmethod/latin/ExpandableDictionary;->getWordsRec(Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;Lcom/android/inputmethod/latin/WordComposer;[CIZIIILjava/util/ArrayList;)V

    .line 450
    :cond_4
    :goto_3
    add-int/lit8 v25, v25, 0x1

    goto :goto_1

    .line 447
    .end local v3           #node:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    .end local v8           #children:Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;
    .end local v19           #c:C
    .end local v23           #currentChars:[I
    .end local v24           #freq:I
    .end local v25           #i:I
    .end local v27           #lowerC:C
    .end local v28           #terminal:Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mCodes:[[I

    aget-object v23, v2, p7

    .restart local v23       #currentChars:[I
    goto :goto_0

    .line 464
    .restart local v3       #node:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    .restart local v8       #children:Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;
    .restart local v19       #c:C
    .restart local v24       #freq:I
    .restart local v25       #i:I
    .restart local v27       #lowerC:C
    .restart local v28       #terminal:Z
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mInputLength:I

    move/from16 v0, v24

    move/from16 v1, p6

    invoke-static {v0, v1, v2}, Lcom/android/inputmethod/latin/ExpandableDictionary;->computeSkippedWordFinalFreq(III)I

    move-result v6

    .restart local v6       #finalFreq:I
    goto :goto_2

    .line 475
    .end local v6           #finalFreq:I
    :cond_7
    const/16 v2, 0x27

    move/from16 v0, v19

    if-ne v0, v2, :cond_8

    const/4 v2, 0x0

    aget v2, v23, v2

    const/16 v4, 0x27

    if-ne v2, v4, :cond_9

    :cond_8
    move/from16 v0, p4

    move/from16 v1, p8

    if-ne v0, v1, :cond_a

    .line 478
    :cond_9
    aput-char v19, p3, p4

    .line 479
    if-eqz v8, :cond_4

    .line 480
    add-int/lit8 v11, p4, 0x1

    move-object/from16 v7, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v12, p5

    move/from16 v13, p6

    move/from16 v14, p7

    move/from16 v15, p8

    move-object/from16 v16, p9

    invoke-virtual/range {v7 .. v16}, Lcom/android/inputmethod/latin/ExpandableDictionary;->getWordsRec(Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;Lcom/android/inputmethod/latin/WordComposer;[CIZIIILjava/util/ArrayList;)V

    goto :goto_3

    .line 485
    :cond_a
    if-ltz p8, :cond_e

    const/16 v18, 0x1

    .line 486
    .local v18, alternativesSize:I
    :goto_4
    const/16 v26, 0x0

    .local v26, j:I
    :goto_5
    move/from16 v0, v26

    move/from16 v1, v18

    if-ge v0, v1, :cond_4

    .line 487
    if-lez v26, :cond_f

    const/16 v17, 0x1

    .line 488
    .local v17, addedAttenuation:I
    :goto_6
    aget v22, v23, v26

    .line 489
    .local v22, currentChar:I
    const/4 v2, -0x1

    move/from16 v0, v22

    if-eq v0, v2, :cond_4

    .line 492
    move/from16 v0, v22

    move/from16 v1, v27

    if-eq v0, v1, :cond_b

    move/from16 v0, v22

    move/from16 v1, v19

    if-ne v0, v1, :cond_d

    .line 493
    :cond_b
    aput-char v19, p3, p4

    .line 495
    add-int/lit8 v2, p7, 0x1

    move/from16 v0, v20

    if-ne v0, v2, :cond_11

    .line 496
    if-eqz v28, :cond_c

    .line 498
    if-gez p8, :cond_10

    .line 499
    mul-int v2, v24, p6

    mul-int v2, v2, v17

    mul-int/lit8 v6, v2, 0x2

    .restart local v6       #finalFreq:I
    :goto_7
    move-object/from16 v2, p0

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v7, p9

    .line 505
    invoke-direct/range {v2 .. v7}, Lcom/android/inputmethod/latin/ExpandableDictionary;->addWordAndShortcutsFromNode(Lcom/android/inputmethod/latin/ExpandableDictionary$Node;[CIILjava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 511
    .end local v6           #finalFreq:I
    :cond_c
    if-eqz v8, :cond_d

    .line 512
    add-int/lit8 v11, p4, 0x1

    const/4 v12, 0x1

    mul-int v13, p6, v17

    add-int/lit8 v14, p7, 0x1

    move-object/from16 v7, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v15, p8

    move-object/from16 v16, p9

    invoke-virtual/range {v7 .. v16}, Lcom/android/inputmethod/latin/ExpandableDictionary;->getWordsRec(Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;Lcom/android/inputmethod/latin/WordComposer;[CIZIIILjava/util/ArrayList;)V

    .line 486
    :cond_d
    :goto_8
    add-int/lit8 v26, v26, 0x1

    goto :goto_5

    .line 485
    .end local v17           #addedAttenuation:I
    .end local v18           #alternativesSize:I
    .end local v22           #currentChar:I
    .end local v26           #j:I
    :cond_e
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v18, v0

    goto :goto_4

    .line 487
    .restart local v18       #alternativesSize:I
    .restart local v26       #j:I
    :cond_f
    const/16 v17, 0x2

    goto :goto_6

    .line 502
    .restart local v17       #addedAttenuation:I
    .restart local v22       #currentChar:I
    :cond_10
    mul-int v2, p6, v17

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mInputLength:I

    move/from16 v0, v24

    invoke-static {v0, v2, v4}, Lcom/android/inputmethod/latin/ExpandableDictionary;->computeSkippedWordFinalFreq(III)I

    move-result v6

    .restart local v6       #finalFreq:I
    goto :goto_7

    .line 516
    .end local v6           #finalFreq:I
    :cond_11
    if-eqz v8, :cond_d

    .line 517
    add-int/lit8 v11, p4, 0x1

    const/4 v12, 0x0

    mul-int v13, p6, v17

    add-int/lit8 v14, p7, 0x1

    move-object/from16 v7, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v15, p8

    move-object/from16 v16, p9

    invoke-virtual/range {v7 .. v16}, Lcom/android/inputmethod/latin/ExpandableDictionary;->getWordsRec(Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;Lcom/android/inputmethod/latin/WordComposer;[CIZIIILjava/util/ArrayList;)V

    goto :goto_8
.end method

.method public declared-synchronized isValidWord(Ljava/lang/CharSequence;)Z
    .locals 5
    .parameter "word"

    .prologue
    const/4 v1, 0x0

    .line 309
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mUpdatingLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 311
    :try_start_1
    iget-boolean v3, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mRequiresReload:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/ExpandableDictionary;->startDictionaryLoadingTaskLocked()V

    .line 312
    :cond_0
    iget-boolean v3, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mUpdatingDictionary:Z

    if-eqz v3, :cond_2

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 320
    :cond_1
    :goto_0
    monitor-exit p0

    return v1

    .line 313
    :cond_2
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 314
    :try_start_3
    iget-object v2, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mRoots:Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;

    const/4 v3, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-direct {p0, v2, p1, v3, v4}, Lcom/android/inputmethod/latin/ExpandableDictionary;->searchNode(Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;Ljava/lang/CharSequence;II)Lcom/android/inputmethod/latin/ExpandableDictionary$Node;

    move-result-object v0

    .line 320
    .local v0, node:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    if-eqz v0, :cond_1

    iget-boolean v2, v0, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mShortcutOnly:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    .line 313
    .end local v0           #node:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 309
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public loadDictionary()V
    .locals 2

    .prologue
    .line 162
    iget-object v1, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mUpdatingLock:Ljava/lang/Object;

    monitor-enter v1

    .line 163
    :try_start_0
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/ExpandableDictionary;->startDictionaryLoadingTaskLocked()V

    .line 164
    monitor-exit v1

    .line 165
    return-void

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public loadDictionaryAsync()V
    .locals 0

    .prologue
    .line 188
    return-void
.end method

.method reloadDictionaryIfRequired()Z
    .locals 2

    .prologue
    .line 272
    iget-object v1, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mUpdatingLock:Ljava/lang/Object;

    monitor-enter v1

    .line 274
    :try_start_0
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mRequiresReload:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/ExpandableDictionary;->startDictionaryLoadingTaskLocked()V

    .line 275
    :cond_0
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mUpdatingDictionary:Z

    monitor-exit v1

    return v0

    .line 276
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected removeBigram(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .parameter "word1"
    .parameter "word2"

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x0

    .line 325
    iget-object v7, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mRoots:Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8, v6, v9}, Lcom/android/inputmethod/latin/ExpandableDictionary;->searchWord(Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;Ljava/lang/String;ILcom/android/inputmethod/latin/ExpandableDictionary$Node;)Lcom/android/inputmethod/latin/ExpandableDictionary$Node;

    move-result-object v2

    .line 326
    .local v2, firstWord:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    iget-object v7, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mRoots:Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;

    invoke-direct {p0, v7, p2, v6, v9}, Lcom/android/inputmethod/latin/ExpandableDictionary;->searchWord(Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;Ljava/lang/String;ILcom/android/inputmethod/latin/ExpandableDictionary$Node;)Lcom/android/inputmethod/latin/ExpandableDictionary$Node;

    move-result-object v5

    .line 327
    .local v5, secondWord:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    iget-object v1, v2, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mNGrams:Ljava/util/LinkedList;

    .line 328
    .local v1, bigrams:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/inputmethod/latin/ExpandableDictionary$NextWord;>;"
    const/4 v0, 0x0

    .line 329
    .local v0, bigramNode:Lcom/android/inputmethod/latin/ExpandableDictionary$NextWord;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v7

    if-nez v7, :cond_1

    .line 342
    :cond_0
    :goto_0
    return v6

    .line 332
    :cond_1
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/inputmethod/latin/ExpandableDictionary$NextWord;

    .line 333
    .local v4, nw:Lcom/android/inputmethod/latin/ExpandableDictionary$NextWord;
    invoke-interface {v4}, Lcom/android/inputmethod/latin/ExpandableDictionary$NextWord;->getWordNode()Lcom/android/inputmethod/latin/ExpandableDictionary$Node;

    move-result-object v7

    if-ne v7, v5, :cond_2

    .line 334
    move-object v0, v4

    .line 339
    .end local v4           #nw:Lcom/android/inputmethod/latin/ExpandableDictionary$NextWord;
    :cond_3
    if-eqz v0, :cond_0

    .line 342
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v6

    goto :goto_0
.end method

.method public setBigramAndGetFrequency(Ljava/lang/String;Ljava/lang/String;Lcom/android/inputmethod/latin/UserHistoryForgettingCurveUtils$ForgettingCurveParams;)I
    .locals 1
    .parameter "word1"
    .parameter "word2"
    .parameter "fcp"

    .prologue
    .line 532
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/inputmethod/latin/ExpandableDictionary;->setBigramAndGetFrequency(Ljava/lang/String;Ljava/lang/String;ILcom/android/inputmethod/latin/UserHistoryForgettingCurveUtils$ForgettingCurveParams;)I

    move-result v0

    return v0
.end method

.method public startDictionaryLoadingTaskLocked()V
    .locals 1

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mUpdatingDictionary:Z

    if-nez v0, :cond_0

    .line 169
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mUpdatingDictionary:Z

    .line 170
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mRequiresReload:Z

    .line 171
    new-instance v0, Lcom/android/inputmethod/latin/ExpandableDictionary$LoadDictionaryTask;

    invoke-direct {v0, p0}, Lcom/android/inputmethod/latin/ExpandableDictionary$LoadDictionaryTask;-><init>(Lcom/android/inputmethod/latin/ExpandableDictionary;)V

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/ExpandableDictionary$LoadDictionaryTask;->start()V

    .line 173
    :cond_0
    return-void
.end method
