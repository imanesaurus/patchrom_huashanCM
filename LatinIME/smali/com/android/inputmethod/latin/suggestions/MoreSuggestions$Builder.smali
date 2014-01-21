.class public final Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$Builder;
.super Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;
.source "MoreSuggestions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/suggestions/MoreSuggestions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder",
        "<",
        "Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$MoreSuggestionsParam;",
        ">;"
    }
.end annotation


# instance fields
.field private mFromPos:I

.field private final mPaneView:Lcom/android/inputmethod/latin/suggestions/MoreSuggestionsView;

.field private mSuggestions:Lcom/android/inputmethod/latin/SuggestedWords;

.field private mToPos:I


# direct methods
.method public constructor <init>(Lcom/android/inputmethod/latin/suggestions/MoreSuggestionsView;)V
    .locals 2
    .parameter "paneView"

    .prologue
    .line 174
    invoke-virtual {p1}, Lcom/android/inputmethod/latin/suggestions/MoreSuggestionsView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$MoreSuggestionsParam;

    invoke-direct {v1}, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$MoreSuggestionsParam;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;-><init>(Landroid/content/Context;Lcom/android/inputmethod/keyboard/internal/KeyboardParams;)V

    .line 175
    iput-object p1, p0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$Builder;->mPaneView:Lcom/android/inputmethod/latin/suggestions/MoreSuggestionsView;

    .line 176
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/android/inputmethod/keyboard/Keyboard;
    .locals 1

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$Builder;->build()Lcom/android/inputmethod/latin/suggestions/MoreSuggestions;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/android/inputmethod/latin/suggestions/MoreSuggestions;
    .locals 21

    .prologue
    .line 196
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$Builder;->mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    check-cast v2, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$MoreSuggestionsParam;

    .line 197
    .local v2, params:Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$MoreSuggestionsParam;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$Builder;->mFromPos:I

    move/from16 v20, v0

    .local v20, pos:I
    :goto_0
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$Builder;->mToPos:I

    move/from16 v0, v20

    if-ge v0, v5, :cond_1

    .line 198
    move/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$MoreSuggestionsParam;->getX(I)I

    move-result v8

    .line 199
    .local v8, x:I
    move/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$MoreSuggestionsParam;->getY(I)I

    move-result v9

    .line 200
    .local v9, y:I
    move/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$MoreSuggestionsParam;->getWidth(I)I

    move-result v10

    .line 201
    .local v10, width:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$Builder;->mSuggestions:Lcom/android/inputmethod/latin/SuggestedWords;

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Lcom/android/inputmethod/latin/SuggestedWords;->getWord(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    .line 202
    .local v3, word:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$Builder;->mSuggestions:Lcom/android/inputmethod/latin/SuggestedWords;

    move/from16 v0, v20

    invoke-static {v5, v0}, Lcom/android/inputmethod/latin/Utils;->getDebugInfo(Lcom/android/inputmethod/latin/SuggestedWords;I)Ljava/lang/String;

    move-result-object v4

    .line 203
    .local v4, info:Ljava/lang/String;
    move/from16 v0, v20

    add-int/lit16 v6, v0, 0x400

    .line 204
    .local v6, index:I
    new-instance v1, Lcom/android/inputmethod/keyboard/Key;

    const/4 v5, 0x0

    const/4 v7, 0x0

    iget v11, v2, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$MoreSuggestionsParam;->mDefaultRowHeight:I

    const/4 v12, 0x0

    invoke-direct/range {v1 .. v12}, Lcom/android/inputmethod/keyboard/Key;-><init>(Lcom/android/inputmethod/keyboard/internal/KeyboardParams;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;IIIII)V

    .line 207
    .local v1, key:Lcom/android/inputmethod/keyboard/Key;
    move/from16 v0, v20

    invoke-virtual {v2, v1, v0}, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$MoreSuggestionsParam;->markAsEdgeKey(Lcom/android/inputmethod/keyboard/Key;I)V

    .line 208
    invoke-virtual {v2, v1}, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$MoreSuggestionsParam;->onAddKey(Lcom/android/inputmethod/keyboard/Key;)V

    .line 209
    move/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$MoreSuggestionsParam;->getColumnNumber(I)I

    move-result v18

    .line 210
    .local v18, columnNumber:I
    move/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$MoreSuggestionsParam;->getNumColumnInRow(I)I

    move-result v19

    .line 211
    .local v19, numColumnInRow:I
    add-int/lit8 v5, v19, -0x1

    move/from16 v0, v18

    if-ge v0, v5, :cond_0

    .line 212
    new-instance v11, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$Divider;

    iget-object v13, v2, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$MoreSuggestionsParam;->mDivider:Landroid/graphics/drawable/Drawable;

    add-int v14, v8, v10

    iget v0, v2, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$MoreSuggestionsParam;->mDividerWidth:I

    move/from16 v16, v0

    iget v0, v2, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$MoreSuggestionsParam;->mDefaultRowHeight:I

    move/from16 v17, v0

    move-object v12, v2

    move v15, v9

    invoke-direct/range {v11 .. v17}, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$Divider;-><init>(Lcom/android/inputmethod/keyboard/internal/KeyboardParams;Landroid/graphics/drawable/Drawable;IIII)V

    .line 214
    .local v11, divider:Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$Divider;
    invoke-virtual {v2, v11}, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$MoreSuggestionsParam;->onAddKey(Lcom/android/inputmethod/keyboard/Key;)V

    .line 197
    .end local v11           #divider:Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$Divider;
    :cond_0
    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    .line 217
    .end local v1           #key:Lcom/android/inputmethod/keyboard/Key;
    .end local v3           #word:Ljava/lang/String;
    .end local v4           #info:Ljava/lang/String;
    .end local v6           #index:I
    .end local v8           #x:I
    .end local v9           #y:I
    .end local v10           #width:I
    .end local v18           #columnNumber:I
    .end local v19           #numColumnInRow:I
    :cond_1
    new-instance v5, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions;

    invoke-direct {v5, v2}, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions;-><init>(Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$MoreSuggestionsParam;)V

    return-object v5
.end method

.method public layout(Lcom/android/inputmethod/latin/SuggestedWords;IIII)Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$Builder;
    .locals 10
    .parameter "suggestions"
    .parameter "fromPos"
    .parameter "maxWidth"
    .parameter "minWidth"
    .parameter "maxRow"

    .prologue
    .line 180
    invoke-static {}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getInstance()Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getKeyboard()Lcom/android/inputmethod/keyboard/Keyboard;

    move-result-object v8

    .line 181
    .local v8, keyboard:Lcom/android/inputmethod/keyboard/Keyboard;
    const v9, 0x7f06001b

    .line 182
    .local v9, xmlId:I
    const v0, 0x7f06001b

    iget-object v1, v8, Lcom/android/inputmethod/keyboard/Keyboard;->mId:Lcom/android/inputmethod/keyboard/KeyboardId;

    invoke-virtual {p0, v0, v1}, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$Builder;->load(ILcom/android/inputmethod/keyboard/KeyboardId;)Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;

    .line 183
    iget-object v0, p0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$Builder;->mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    check-cast v0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$MoreSuggestionsParam;

    iget-object v1, p0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$Builder;->mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    check-cast v1, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$MoreSuggestionsParam;

    iget v2, v8, Lcom/android/inputmethod/keyboard/Keyboard;->mVerticalGap:I

    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$MoreSuggestionsParam;->mTopPadding:I

    iput v2, v0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$MoreSuggestionsParam;->mVerticalGap:I

    .line 185
    iget-object v1, p0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$Builder;->mPaneView:Lcom/android/inputmethod/latin/suggestions/MoreSuggestionsView;

    iget-object v0, p0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$Builder;->mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    check-cast v0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$MoreSuggestionsParam;

    iget v0, v0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$MoreSuggestionsParam;->mDefaultRowHeight:I

    invoke-virtual {v1, v0}, Lcom/android/inputmethod/latin/suggestions/MoreSuggestionsView;->updateKeyboardGeometry(I)V

    .line 186
    iget-object v0, p0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$Builder;->mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    check-cast v0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$MoreSuggestionsParam;

    iget-object v6, p0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$Builder;->mPaneView:Lcom/android/inputmethod/latin/suggestions/MoreSuggestionsView;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$MoreSuggestionsParam;->layout(Lcom/android/inputmethod/latin/SuggestedWords;IIIILcom/android/inputmethod/latin/suggestions/MoreSuggestionsView;)I

    move-result v7

    .line 188
    .local v7, count:I
    iput p2, p0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$Builder;->mFromPos:I

    .line 189
    add-int v0, p2, v7

    iput v0, p0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$Builder;->mToPos:I

    .line 190
    iput-object p1, p0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$Builder;->mSuggestions:Lcom/android/inputmethod/latin/SuggestedWords;

    .line 191
    return-object p0
.end method
