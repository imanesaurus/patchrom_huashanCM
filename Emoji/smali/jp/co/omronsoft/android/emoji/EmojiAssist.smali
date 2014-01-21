.class public Ljp/co/omronsoft/android/emoji/EmojiAssist;
.super Ljava/lang/Object;
.source "EmojiAssist.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/co/omronsoft/android/emoji/EmojiAssist$UpdateHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final DECO_EMOJI_CHAR:C = '\u3013'

.field public static final DECO_EMOJI_KEY:Ljava/lang/String; = "decoEmoji"

.field private static final TAG:Ljava/lang/String; = "EmojiAssist"

.field private static final TYPE_EMOJIFUNCTION_1:I = 0x1

.field private static final TYPE_EMOJIFUNCTION_2:I = 0x2

.field private static final TYPE_EMOJIFUNCTION_INCOMPLETE:I

.field private static mSelf:Ljp/co/omronsoft/android/emoji/EmojiAssist;


# instance fields
.field private mContextView:Landroid/widget/TextView;

.field private mEmojiDrawable:Ljp/co/omronsoft/android/text/EmojiDrawable;

.field private mIsAnimating:Z

.field private mIsAnimationRequested:Z

.field private mIsType2:Z

.field private mTextWatcher:Landroid/text/TextWatcher;

.field private mViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    new-instance v0, Ljp/co/omronsoft/android/emoji/EmojiAssist;

    invoke-direct {v0}, Ljp/co/omronsoft/android/emoji/EmojiAssist;-><init>()V

    sput-object v0, Ljp/co/omronsoft/android/emoji/EmojiAssist;->mSelf:Ljp/co/omronsoft/android/emoji/EmojiAssist;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    return-void
.end method

.method static synthetic access$000()Ljp/co/omronsoft/android/emoji/EmojiAssist;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Ljp/co/omronsoft/android/emoji/EmojiAssist;->mSelf:Ljp/co/omronsoft/android/emoji/EmojiAssist;

    return-object v0
.end method

.method static synthetic access$100(Ljp/co/omronsoft/android/emoji/EmojiAssist;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-boolean v0, p0, Ljp/co/omronsoft/android/emoji/EmojiAssist;->mIsAnimating:Z

    return v0
.end method

.method static synthetic access$200(Ljp/co/omronsoft/android/emoji/EmojiAssist;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Ljp/co/omronsoft/android/emoji/EmojiAssist;->mViewList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getInstance()Ljp/co/omronsoft/android/emoji/EmojiAssist;
    .locals 1

    .prologue
    .line 126
    sget-object v0, Ljp/co/omronsoft/android/emoji/EmojiAssist;->mSelf:Ljp/co/omronsoft/android/emoji/EmojiAssist;

    return-object v0
.end method

.method private setVendorEmojiSpan(Landroid/text/Spannable;I)V
    .locals 0
    .parameter "text"
    .parameter "start"

    .prologue
    .line 186
    return-void
.end method


# virtual methods
.method public addView(Landroid/widget/TextView;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 134
    return-void
.end method

.method public clearView()V
    .locals 0

    .prologue
    .line 147
    return-void
.end method

.method public dressEmojiSpan(Landroid/text/Spannable;II)V
    .locals 0
    .parameter "text"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 178
    return-void
.end method

.method public getDecoEmojiText(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "uri"

    .prologue
    .line 194
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEmojiFunctionType()I
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x0

    .line 204
    .local v0, type:I
    return v0
.end method

.method public getEmojiImage(IF)[B
    .locals 1
    .parameter "code"
    .parameter "textsize"

    .prologue
    .line 226
    const/4 v0, 0x0

    return-object v0
.end method

.method public removeView(Landroid/widget/TextView;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 141
    return-void
.end method

.method public replaceExtractEditText(Landroid/view/ViewGroup;I)Landroid/inputmethodservice/ExtractEditText;
    .locals 1
    .parameter "view"
    .parameter "id"

    .prologue
    .line 216
    const/4 v0, 0x0

    return-object v0
.end method

.method public startAnimation()V
    .locals 0

    .prologue
    .line 153
    return-void
.end method

.method public stopAnimation()V
    .locals 0

    .prologue
    .line 159
    return-void
.end method

.method public undressEmojiSpan(Landroid/text/Spannable;IIZ)V
    .locals 0
    .parameter "text"
    .parameter "from"
    .parameter "to"
    .parameter "annotation"

    .prologue
    .line 169
    return-void
.end method
