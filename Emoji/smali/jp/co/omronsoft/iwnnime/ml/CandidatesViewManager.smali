.class public abstract Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;
.super Ljava/lang/Object;
.source "CandidatesViewManager.java"


# static fields
.field public static final ATTRIBUTE_AUTO_GENERATED:I = 0x4

.field public static final ATTRIBUTE_BEST:I = 0x2

.field public static final ATTRIBUTE_HISTORY:I = 0x1

.field public static final ATTRIBUTE_NONE:I = 0x0

.field public static final VIEW_TYPE_CLOSE:I = 0x2

.field public static final VIEW_TYPE_FULL:I = 0x1

.field public static final VIEW_TYPE_NORMAL:I


# instance fields
.field protected mDialog:Landroid/app/Dialog;

.field protected mEnableMushroom:Z

.field protected mViewCandidateWord:Landroid/widget/TextView;

.field protected mViewLongPressDialog:Landroid/view/View;

.field protected mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

.field protected mWord:Ljp/co/omronsoft/iwnnime/ml/WnnWord;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->mViewLongPressDialog:Landroid/view/View;

    .line 64
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->mDialog:Landroid/app/Dialog;

    .line 67
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->mViewCandidateWord:Landroid/widget/TextView;

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->mEnableMushroom:Z

    return-void
.end method


# virtual methods
.method public abstract clearCandidates()V
.end method

.method public closeDialog()V
    .locals 2

    .prologue
    .line 267
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->mDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    .line 268
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 269
    const/4 v1, 0x0

    iput-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->mDialog:Landroid/app/Dialog;

    .line 270
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->mViewLongPressDialog:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 271
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->mViewLongPressDialog:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 272
    .local v0, parent:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 273
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->mViewLongPressDialog:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 277
    .end local v0           #parent:Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method public abstract displayCandidates(Ljp/co/omronsoft/iwnnime/ml/WnnEngine;)V
.end method

.method protected displayDialog(Landroid/view/View;Ljp/co/omronsoft/iwnnime/ml/WnnWord;)V
    .locals 15
    .parameter "view"
    .parameter "word"

    .prologue
    .line 186
    move-object/from16 v0, p1

    instance-of v12, v0, Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;

    if-eqz v12, :cond_4

    iget-object v12, p0, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->mViewLongPressDialog:Landroid/view/View;

    if-eqz v12, :cond_4

    .line 187
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->closeDialog()V

    .line 188
    new-instance v12, Landroid/app/Dialog;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    const v14, 0x7f0e0001

    invoke-direct {v12, v13, v14}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v12, p0, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->mDialog:Landroid/app/Dialog;

    .line 191
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v7, v12}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 192
    .local v7, mainlayout:Landroid/widget/LinearLayout;
    const/4 v12, 0x1

    invoke-virtual {v7, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 193
    const/16 v12, 0x11

    invoke-virtual {v7, v12}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 194
    new-instance v12, Landroid/view/ViewGroup$LayoutParams;

    const/4 v13, -0x1

    const/4 v14, -0x2

    invoke-direct {v12, v13, v14}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v12}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 197
    invoke-static {}, Ljp/co/omronsoft/android/emoji/EmojiAssist;->getInstance()Ljp/co/omronsoft/android/emoji/EmojiAssist;

    move-result-object v4

    .line 198
    .local v4, emojiIns:Ljp/co/omronsoft/android/emoji/EmojiAssist;
    iget-object v12, p0, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->mViewCandidateWord:Landroid/widget/TextView;

    if-eqz v12, :cond_0

    .line 199
    iget-object v12, p0, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->mViewCandidateWord:Landroid/widget/TextView;

    invoke-virtual {v4, v12}, Ljp/co/omronsoft/android/emoji/EmojiAssist;->removeView(Landroid/widget/TextView;)V

    .line 200
    const/4 v12, 0x0

    iput-object v12, p0, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->mViewCandidateWord:Landroid/widget/TextView;

    .line 203
    :cond_0
    new-instance v12, Landroid/widget/TextView;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v12, v13}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v12, p0, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->mViewCandidateWord:Landroid/widget/TextView;

    .line 204
    invoke-static/range {p2 .. p2}, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiUtil;->getSpannedCandidate(Ljp/co/omronsoft/iwnnime/ml/WnnWord;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 205
    .local v2, candidate:Ljava/lang/CharSequence;
    iget-object v12, p0, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->mViewCandidateWord:Landroid/widget/TextView;

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v12, p0, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-virtual {v12}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 207
    .local v9, res:Landroid/content/res/Resources;
    const v12, 0x7f0a0015

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    .line 208
    .local v11, textColor:I
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getInstance()Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;

    move-result-object v6

    .line 209
    .local v6, keyskin:Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;
    invoke-virtual {v6}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->isValid()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 210
    invoke-virtual {v6}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getCandidateDialogBack()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 211
    .local v1, background:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 212
    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 214
    :cond_1
    iget-object v12, p0, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    const v13, 0x7f0a0015

    invoke-virtual {v6, v12, v13}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getColor(Landroid/content/Context;I)I

    move-result v11

    .line 216
    .end local v1           #background:Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v12, p0, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->mViewCandidateWord:Landroid/widget/TextView;

    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 217
    iget-object v12, p0, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->mViewCandidateWord:Landroid/widget/TextView;

    const/16 v13, 0x11

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 219
    move-object/from16 v0, p2

    iget-object v12, v0, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->candidate:Ljava/lang/String;

    invoke-static {v12}, Ljp/co/omronsoft/android/text/EmojiDrawable;->isEmoji(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_3

    move-object/from16 v0, p2

    iget-object v12, v0, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->candidate:Ljava/lang/String;

    invoke-static {v12}, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiUtil;->isDecoEmoji(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 221
    :cond_3
    iget-object v12, p0, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->mViewCandidateWord:Landroid/widget/TextView;

    const/4 v13, 0x1

    const v14, 0x7f0c0002

    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    int-to-float v14, v14

    invoke-virtual {v12, v13, v14}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 222
    new-instance v10, Landroid/widget/LinearLayout;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v10, v12}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 223
    .local v10, sublayout:Landroid/widget/LinearLayout;
    new-instance v12, Landroid/view/ViewGroup$LayoutParams;

    const/4 v13, -0x1

    const/4 v14, -0x2

    invoke-direct {v12, v13, v14}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v12}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    const/16 v12, 0x11

    invoke-virtual {v10, v12}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 226
    new-instance v5, Landroid/widget/HorizontalScrollView;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v5, v12}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 227
    .local v5, horizonalView:Landroid/widget/HorizontalScrollView;
    new-instance v12, Landroid/view/ViewGroup$LayoutParams;

    const/4 v13, -0x2

    const/4 v14, -0x2

    invoke-direct {v12, v13, v14}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v12}, Landroid/widget/HorizontalScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 228
    iget-object v12, p0, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->mViewCandidateWord:Landroid/widget/TextView;

    invoke-virtual {v5, v12}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 230
    invoke-virtual {v10, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 231
    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 237
    .end local v5           #horizonalView:Landroid/widget/HorizontalScrollView;
    .end local v10           #sublayout:Landroid/widget/LinearLayout;
    :goto_0
    iget-object v12, p0, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->mViewCandidateWord:Landroid/widget/TextView;

    invoke-virtual {v4, v12}, Ljp/co/omronsoft/android/emoji/EmojiAssist;->addView(Landroid/widget/TextView;)V

    .line 240
    iget-object v12, p0, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->mViewLongPressDialog:Landroid/view/View;

    const v13, 0x7f080014

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 241
    .local v8, mashup:Landroid/view/View;
    iget-boolean v12, p0, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->mEnableMushroom:Z

    if-eqz v12, :cond_6

    .line 242
    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Landroid/view/View;->setVisibility(I)V

    .line 247
    :goto_1
    iget-object v12, p0, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->mViewLongPressDialog:Landroid/view/View;

    const v13, 0x7f080015

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 248
    .local v3, delete:Landroid/view/View;
    move-object/from16 v0, p2

    iget v12, v0, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->attribute:I

    and-int/lit8 v12, v12, 0x2

    if-eqz v12, :cond_7

    .line 249
    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Landroid/view/View;->setVisibility(I)V

    .line 254
    :goto_2
    iget-object v12, p0, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->mViewLongPressDialog:Landroid/view/View;

    invoke-virtual {v7, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 257
    iget-object v12, p0, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v12, v7}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 258
    check-cast p1, Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;

    .end local p1
    iget-object v12, p0, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->mDialog:Landroid/app/Dialog;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;->displayCandidateDialog(Landroid/app/Dialog;)V

    .line 260
    .end local v2           #candidate:Ljava/lang/CharSequence;
    .end local v3           #delete:Landroid/view/View;
    .end local v4           #emojiIns:Ljp/co/omronsoft/android/emoji/EmojiAssist;
    .end local v6           #keyskin:Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;
    .end local v7           #mainlayout:Landroid/widget/LinearLayout;
    .end local v8           #mashup:Landroid/view/View;
    .end local v9           #res:Landroid/content/res/Resources;
    .end local v11           #textColor:I
    :cond_4
    return-void

    .line 234
    .restart local v2       #candidate:Ljava/lang/CharSequence;
    .restart local v4       #emojiIns:Ljp/co/omronsoft/android/emoji/EmojiAssist;
    .restart local v6       #keyskin:Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;
    .restart local v7       #mainlayout:Landroid/widget/LinearLayout;
    .restart local v9       #res:Landroid/content/res/Resources;
    .restart local v11       #textColor:I
    .restart local p1
    :cond_5
    iget-object v12, p0, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->mViewCandidateWord:Landroid/widget/TextView;

    const/4 v13, 0x1

    const v14, 0x7f0c0001

    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    int-to-float v14, v14

    invoke-virtual {v12, v13, v14}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 235
    iget-object v12, p0, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->mViewCandidateWord:Landroid/widget/TextView;

    invoke-virtual {v7, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 244
    .restart local v8       #mashup:Landroid/view/View;
    :cond_6
    const/16 v12, 0x8

    invoke-virtual {v8, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 251
    .restart local v3       #delete:Landroid/view/View;
    :cond_7
    const/16 v12, 0x8

    invoke-virtual {v3, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method public abstract getCurrentView()Landroid/view/View;
.end method

.method public abstract getFocusedWnnWord()Ljp/co/omronsoft/iwnnime/ml/WnnWord;
.end method

.method public abstract getTextViewArray1st()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getViewType()I
.end method

.method public abstract initView(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;II)Landroid/view/View;
.end method

.method public abstract isFocusCandidate()Z
.end method

.method public abstract processMoveKeyEvent(I)V
.end method

.method public abstract scrollPageAndUpdateFocus(Z)V
.end method

.method public abstract selectFocusCandidate()V
.end method

.method public abstract setCandidateMsgRemove()V
.end method

.method public abstract setEnableCandidateLongClick(Z)V
.end method

.method public abstract setPreferences(Landroid/content/SharedPreferences;)V
.end method

.method public abstract setViewType(I)V
.end method
