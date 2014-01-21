.class Ljp/co/omronsoft/iwnnime/ml/MushroomListPreference$1;
.super Ljava/lang/Object;
.source "MushroomListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/co/omronsoft/iwnnime/ml/MushroomListPreference;->onDialogClosed(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/co/omronsoft/iwnnime/ml/MushroomListPreference;


# direct methods
.method constructor <init>(Ljp/co/omronsoft/iwnnime/ml/MushroomListPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/MushroomListPreference$1;->this$0:Ljp/co/omronsoft/iwnnime/ml/MushroomListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 42
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/MushroomListPreference$1;->this$0:Ljp/co/omronsoft/iwnnime/ml/MushroomListPreference;

    const-string v1, "use"

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/MushroomListPreference;->setValue(Ljava/lang/String;)V

    .line 43
    return-void
.end method
