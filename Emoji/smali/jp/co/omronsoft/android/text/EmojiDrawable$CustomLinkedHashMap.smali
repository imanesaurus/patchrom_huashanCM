.class Ljp/co/omronsoft/android/text/EmojiDrawable$CustomLinkedHashMap;
.super Ljava/util/LinkedHashMap;
.source "EmojiDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/co/omronsoft/android/text/EmojiDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CustomLinkedHashMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedHashMap",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field public mCacheSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 261
    .local p0, this:Ljp/co/omronsoft/android/text/EmojiDrawable$CustomLinkedHashMap;,"Ljp/co/omronsoft/android/text/EmojiDrawable$CustomLinkedHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 259
    const/16 v0, 0x320

    iput v0, p0, Ljp/co/omronsoft/android/text/EmojiDrawable$CustomLinkedHashMap;->mCacheSize:I

    .line 263
    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 273
    .local p0, this:Ljp/co/omronsoft/android/text/EmojiDrawable$CustomLinkedHashMap;,"Ljp/co/omronsoft/android/text/EmojiDrawable$CustomLinkedHashMap<TK;TV;>;"
    .local p1, eldest:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    const/4 v0, 0x0

    return v0
.end method
