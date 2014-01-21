.class public Ljp/co/omronsoft/iwnnime/ml/Mushroom;
.super Landroid/app/LauncherActivity;
.source "Mushroom.java"


# static fields
.field private static final MSG_START_MUSHROOM:I = 0x1

.field public static final MUSHROOM_ACTION:Ljava/lang/String; = "com.adamrocker.android.simeji.ACTION_INTERCEPT"

.field public static final MUSHROOM_CATEGORY:Ljava/lang/String; = "com.adamrocker.android.simeji.REPLACE"

.field public static final MUSHROOM_REPLACE_KEY:Ljava/lang/String; = "replace_key"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/LauncherActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTargetIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 37
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.adamrocker.android.simeji.ACTION_INTERCEPT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 38
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.adamrocker.android.simeji.REPLACE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 56
    invoke-super {p0, p1, p2, p3}, Landroid/app/LauncherActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 57
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 58
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/MushroomControl;->getInstance()Ljp/co/omronsoft/iwnnime/ml/MushroomControl;

    move-result-object v0

    const-string v1, "replace_key"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/MushroomControl;->setResultString(Ljava/lang/String;)V

    .line 60
    :cond_0
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/Mushroom;->finish()V

    .line 61
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 65
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/MushroomControl;->getInstance()Ljp/co/omronsoft/iwnnime/ml/MushroomControl;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/MushroomControl;->setResultString(Ljava/lang/String;)V

    .line 66
    invoke-super {p0}, Landroid/app/LauncherActivity;->onBackPressed()V

    .line 67
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 5
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 45
    invoke-virtual {p0, p3}, Ljp/co/omronsoft/iwnnime/ml/Mushroom;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v1

    .line 46
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "replace_key"

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/Mushroom;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "replace_key"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0, v1, v2}, Ljp/co/omronsoft/iwnnime/ml/Mushroom;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    const-string v2, "OpenWnn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Mushroom::onListItemClick "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
