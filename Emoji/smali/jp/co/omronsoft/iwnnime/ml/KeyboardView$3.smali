.class Ljp/co/omronsoft/iwnnime/ml/KeyboardView$3;
.super Ljava/lang/Object;
.source "KeyboardView.java"

# interfaces
.implements Ljp/co/omronsoft/iwnnime/ml/KeyboardView$OnKeyboardActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->onLongPress(Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;


# direct methods
.method constructor <init>(Ljp/co/omronsoft/iwnnime/ml/KeyboardView;)V
    .locals 0
    .parameter

    .prologue
    .line 1316
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(I[I)V
    .locals 1
    .parameter "primaryCode"
    .parameter "keyCodes"

    .prologue
    .line 1318
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mKeyboardActionListener:Ljp/co/omronsoft/iwnnime/ml/KeyboardView$OnKeyboardActionListener;
    invoke-static {v0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->access$1300(Ljp/co/omronsoft/iwnnime/ml/KeyboardView;)Ljp/co/omronsoft/iwnnime/ml/KeyboardView$OnKeyboardActionListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView$OnKeyboardActionListener;->onKey(I[I)V

    .line 1319
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->dismissPopupKeyboard()V

    .line 1320
    return-void
.end method

.method public onPress(I)V
    .locals 1
    .parameter "primaryCode"

    .prologue
    .line 1332
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mKeyboardActionListener:Ljp/co/omronsoft/iwnnime/ml/KeyboardView$OnKeyboardActionListener;
    invoke-static {v0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->access$1300(Ljp/co/omronsoft/iwnnime/ml/KeyboardView;)Ljp/co/omronsoft/iwnnime/ml/KeyboardView$OnKeyboardActionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView$OnKeyboardActionListener;->onPress(I)V

    .line 1333
    return-void
.end method

.method public onRelease(I)V
    .locals 1
    .parameter "primaryCode"

    .prologue
    .line 1335
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mKeyboardActionListener:Ljp/co/omronsoft/iwnnime/ml/KeyboardView$OnKeyboardActionListener;
    invoke-static {v0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->access$1300(Ljp/co/omronsoft/iwnnime/ml/KeyboardView;)Ljp/co/omronsoft/iwnnime/ml/KeyboardView$OnKeyboardActionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView$OnKeyboardActionListener;->onRelease(I)V

    .line 1336
    return-void
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 1323
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mKeyboardActionListener:Ljp/co/omronsoft/iwnnime/ml/KeyboardView$OnKeyboardActionListener;
    invoke-static {v0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->access$1300(Ljp/co/omronsoft/iwnnime/ml/KeyboardView;)Ljp/co/omronsoft/iwnnime/ml/KeyboardView$OnKeyboardActionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView$OnKeyboardActionListener;->onText(Ljava/lang/CharSequence;)V

    .line 1324
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->dismissPopupKeyboard()V

    .line 1325
    return-void
.end method

.method public swipeDown()V
    .locals 0

    .prologue
    .line 1330
    return-void
.end method

.method public swipeLeft()V
    .locals 0

    .prologue
    .line 1327
    return-void
.end method

.method public swipeRight()V
    .locals 0

    .prologue
    .line 1328
    return-void
.end method

.method public swipeUp()V
    .locals 0

    .prologue
    .line 1329
    return-void
.end method
