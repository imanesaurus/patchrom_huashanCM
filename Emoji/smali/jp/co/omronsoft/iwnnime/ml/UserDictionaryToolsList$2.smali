.class Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList$2;
.super Ljava/lang/Object;
.source "UserDictionaryToolsList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;


# direct methods
.method constructor <init>(Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;)V
    .locals 0
    .parameter

    .prologue
    .line 186
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList$2;->this$0:Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 188
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList$2;->this$0:Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mWordCount:I
    invoke-static {v1}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->access$000(Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;)I

    move-result v1

    add-int/lit8 v0, v1, 0x32

    .line 189
    .local v0, pos:I
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList$2;->this$0:Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mWordList:Ljava/util/ArrayList;
    invoke-static {v1}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->access$200(Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 190
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList$2;->this$0:Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;

    #setter for: Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mWordCount:I
    invoke-static {v1, v0}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->access$002(Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;I)I

    .line 191
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList$2;->this$0:Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;

    const/4 v2, 0x0

    #calls: Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->updateWordList(Z)V
    invoke-static {v1, v2}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->access$100(Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;Z)V

    .line 193
    :cond_0
    return-void
.end method
