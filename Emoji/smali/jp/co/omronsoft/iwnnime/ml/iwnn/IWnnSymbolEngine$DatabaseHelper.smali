.class Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "IWnnSymbolEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DatabaseHelper"
.end annotation


# instance fields
.field final synthetic this$0:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;


# direct methods
.method constructor <init>(Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "str"

    .prologue
    .line 610
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine$DatabaseHelper;->this$0:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;

    .line 611
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p2, p3, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 612
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter "db"

    .prologue
    .line 621
    :try_start_0
    const-string v1, "create table SymbolEngine (rowid integer primary key autoincrement, history_data text not null, integer);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 625
    :goto_0
    return-void

    .line 622
    :catch_0
    move-exception v0

    .line 623
    .local v0, e:Landroid/database/SQLException;
    const-string v1, "iWnn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IWnnSymbolEngine::onCreate "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 4
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 634
    :try_start_0
    const-string v1, "DROP TABLE IF EXISTS notes"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 638
    :goto_0
    invoke-virtual {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 639
    return-void

    .line 635
    :catch_0
    move-exception v0

    .line 636
    .local v0, e:Landroid/database/SQLException;
    const-string v1, "iWnn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IWnnSymbolEngine::onUpgrade "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
