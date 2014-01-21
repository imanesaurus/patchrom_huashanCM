.class Ljp/co/omronsoft/android/emoji/EmojiAssist$UpdateHandler;
.super Landroid/os/Handler;
.source "EmojiAssist.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/co/omronsoft/android/emoji/EmojiAssist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateHandler"
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .parameter "looper"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 75
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 80
    invoke-static {}, Ljp/co/omronsoft/android/emoji/EmojiAssist;->access$000()Ljp/co/omronsoft/android/emoji/EmojiAssist;

    move-result-object v0

    .line 81
    .local v0, assist:Ljp/co/omronsoft/android/emoji/EmojiAssist;
    #getter for: Ljp/co/omronsoft/android/emoji/EmojiAssist;->mIsAnimating:Z
    invoke-static {v0}, Ljp/co/omronsoft/android/emoji/EmojiAssist;->access$100(Ljp/co/omronsoft/android/emoji/EmojiAssist;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 82
    #getter for: Ljp/co/omronsoft/android/emoji/EmojiAssist;->mViewList:Ljava/util/ArrayList;
    invoke-static {v0}, Ljp/co/omronsoft/android/emoji/EmojiAssist;->access$200(Ljp/co/omronsoft/android/emoji/EmojiAssist;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 83
    .local v2, v:Landroid/widget/TextView;
    invoke-virtual {v2}, Landroid/widget/TextView;->invalidate()V

    goto :goto_0

    .line 90
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #v:Landroid/widget/TextView;
    :cond_0
    return-void
.end method
