.class public Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;
.super Ljava/lang/Object;
.source "OpenWnnEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent$Mode;
    }
.end annotation


# static fields
.field public static final ADD_WORD:I = -0xfffffea

.field public static final AUTO_LEARNING:I = -0xfffeffb

.field public static final CALL_MUSHROOM:I = -0xfffe000

.field public static final CANCEL_WEBAPI:I = -0xfffeffd

.field public static final CANDIDATE_VIEW_SCROLL_DOWN:I = -0xfffcfff

.field public static final CANDIDATE_VIEW_SCROLL_FULL_DOWN:I = -0xfffcffd

.field public static final CANDIDATE_VIEW_SCROLL_FULL_UP:I = -0xfffcffe

.field public static final CANDIDATE_VIEW_SCROLL_UP:I = -0xfffd000

.field public static final CANDIDATE_VIEW_TOUCH:I = -0xfffffe3

.field public static final CHANGE_INPUT_VIEW:I = -0xfffffe4

.field public static final CHANGE_MODE:I = -0xffffff1

.field public static final CHANGE_SYMBOL_CATEGORY_JUMP:I = -0xfffa000

.field public static final CHANGE_SYMBOL_CATEGORY_NEXT:I = -0xfff9ffe

.field public static final CHANGE_SYMBOL_CATEGORY_PREV:I = -0xfff9fff

.field public static final CLOSE_VIEW:I = -0xffffffb

.field public static final COMMIT_COMPOSING_TEXT:I = -0xffffff0

.field public static final CONVERT:I = -0xffffffe

.field public static final DELETE_WORD:I = -0xfffffe9

.field public static final EDIT_WORDS_IN_USER_DICTIONARY:I = -0xfffffe6

.field public static final FLICK_INPUT_CHAR:I = -0xfffffdd

.field public static final FOCUS_CANDIDATE_END:I = -0xfffbfff

.field public static final FOCUS_CANDIDATE_START:I = -0xfffc000

.field public static final FOCUS_OUT_CANDIDATE_VIEW:I = -0xffffff6

.field public static final FOCUS_TO_CANDIDATE_VIEW:I = -0xffffff7

.field public static final GET_WORD:I = -0xfffffe8

.field public static final INITIALIZE_LEARNING_DICTIONARY:I = -0xfffffec

.field public static final INITIALIZE_USER_DICTIONARY:I = -0xfffffed

.field public static final INPUT_CHAR:I = -0xffffffa

.field public static final INPUT_KEY:I = -0xffffff9

.field public static final INPUT_SOFT_KEY:I = -0xffffff2

.field public static final KEYLONGPRESS:I = -0xfffffdc

.field public static final KEYUP:I = -0xfffffe1

.field public static final LIST_CANDIDATES_FULL:I = -0xffffffc

.field public static final LIST_CANDIDATES_NORMAL:I = -0xffffffd

.field public static final LIST_SYMBOLS:I = -0xfffffef

.field public static final LIST_WORDS_IN_USER_DICTIONARY:I = -0xfffffeb

.field public static final PREDICT:I = -0xffffff8

.field public static final PRIVATE_EVENT_OFFSET:I = -0x1000000

.field public static final RECEIVE_DECOEMOJI:I = -0xfffb000

.field public static final REPLACE_CHAR:I = -0xffffff3

.field public static final RESULT_WEBAPI_NG:I = -0xfffeffe

.field public static final RESULT_WEBAPI_OK:I = -0xfffefff

.field public static final SELECT_CANDIDATE:I = -0xffffff5

.field public static final SELECT_WEBAPI:I = -0xffff000

.field public static final SELECT_WEBAPI_GET_AGAIN:I = -0xfffeffa

.field public static final SWITCH_LANGUAGE:I = -0xfffffee

.field public static final TIMEOUT_WEBAPI:I = -0xfffeffc

.field public static final TOGGLE_CHAR:I = -0xffffff4

.field public static final TOGGLE_REVERSE_CHAR:I = -0xfffffff

.field public static final TOUCH_OTHER_KEY:I = -0xfffffe0

.field public static final UNDEFINED:I = 0x0

.field public static final UNDO:I = -0xfffffe5

.field public static final UPDATE_CANDIDATE:I = -0xfffffe7

.field public static final VOICE_INPUT:I = -0xfffffdb


# instance fields
.field public chars:[C

.field public code:I

.field public dictionaryType:I

.field public errorCode:I

.field public keyEvent:Landroid/view/KeyEvent;

.field public mode:I

.field public replaceTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<**>;"
        }
    .end annotation
.end field

.field public string:Ljava/lang/String;

.field public toggleTable:[Ljava/lang/String;

.field public word:Ljp/co/omronsoft/iwnnime/ml/WnnWord;


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .parameter "code"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->code:I

    .line 333
    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->mode:I

    .line 335
    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->dictionaryType:I

    .line 337
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->chars:[C

    .line 339
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->keyEvent:Landroid/view/KeyEvent;

    .line 341
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->toggleTable:[Ljava/lang/String;

    .line 343
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->replaceTable:Ljava/util/HashMap;

    .line 345
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->word:Ljp/co/omronsoft/iwnnime/ml/WnnWord;

    .line 349
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->string:Ljava/lang/String;

    .line 357
    iput p1, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->code:I

    .line 358
    return-void
.end method

.method public constructor <init>(IC)V
    .locals 2
    .parameter "code"
    .parameter "c"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->code:I

    .line 333
    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->mode:I

    .line 335
    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->dictionaryType:I

    .line 337
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->chars:[C

    .line 339
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->keyEvent:Landroid/view/KeyEvent;

    .line 341
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->toggleTable:[Ljava/lang/String;

    .line 343
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->replaceTable:Ljava/util/HashMap;

    .line 345
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->word:Ljp/co/omronsoft/iwnnime/ml/WnnWord;

    .line 349
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->string:Ljava/lang/String;

    .line 376
    iput p1, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->code:I

    .line 377
    const/4 v0, 0x1

    new-array v0, v0, [C

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->chars:[C

    .line 378
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->chars:[C

    aput-char p2, v0, v1

    .line 379
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .parameter "code"
    .parameter "mode"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->code:I

    .line 333
    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->mode:I

    .line 335
    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->dictionaryType:I

    .line 337
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->chars:[C

    .line 339
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->keyEvent:Landroid/view/KeyEvent;

    .line 341
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->toggleTable:[Ljava/lang/String;

    .line 343
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->replaceTable:Ljava/util/HashMap;

    .line 345
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->word:Ljp/co/omronsoft/iwnnime/ml/WnnWord;

    .line 349
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->string:Ljava/lang/String;

    .line 366
    iput p1, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->code:I

    .line 367
    iput p2, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->mode:I

    .line 368
    return-void
.end method

.method public constructor <init>(III)V
    .locals 2
    .parameter "code"
    .parameter "language"
    .parameter "dictionary"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->code:I

    .line 333
    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->mode:I

    .line 335
    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->dictionaryType:I

    .line 337
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->chars:[C

    .line 339
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->keyEvent:Landroid/view/KeyEvent;

    .line 341
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->toggleTable:[Ljava/lang/String;

    .line 343
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->replaceTable:Ljava/util/HashMap;

    .line 345
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->word:Ljp/co/omronsoft/iwnnime/ml/WnnWord;

    .line 349
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->string:Ljava/lang/String;

    .line 454
    iput p1, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->code:I

    .line 455
    iput p2, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->mode:I

    .line 456
    iput p3, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->dictionaryType:I

    .line 457
    return-void
.end method

.method public constructor <init>(ILandroid/view/KeyEvent;)V
    .locals 2
    .parameter "code"
    .parameter "ev"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->code:I

    .line 333
    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->mode:I

    .line 335
    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->dictionaryType:I

    .line 337
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->chars:[C

    .line 339
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->keyEvent:Landroid/view/KeyEvent;

    .line 341
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->toggleTable:[Ljava/lang/String;

    .line 343
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->replaceTable:Ljava/util/HashMap;

    .line 345
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->word:Ljp/co/omronsoft/iwnnime/ml/WnnWord;

    .line 349
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->string:Ljava/lang/String;

    .line 432
    iput p1, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->code:I

    .line 433
    iput-object p2, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->keyEvent:Landroid/view/KeyEvent;

    .line 434
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 2
    .parameter "code"
    .parameter "string"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->code:I

    .line 333
    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->mode:I

    .line 335
    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->dictionaryType:I

    .line 337
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->chars:[C

    .line 339
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->keyEvent:Landroid/view/KeyEvent;

    .line 341
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->toggleTable:[Ljava/lang/String;

    .line 343
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->replaceTable:Ljava/util/HashMap;

    .line 345
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->word:Ljp/co/omronsoft/iwnnime/ml/WnnWord;

    .line 349
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->string:Ljava/lang/String;

    .line 466
    iput p1, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->code:I

    .line 467
    iput-object p2, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->string:Ljava/lang/String;

    .line 468
    return-void
.end method

.method public constructor <init>(ILjava/util/HashMap;)V
    .locals 2
    .parameter "code"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .local p2, replaceTable:Ljava/util/HashMap;,"Ljava/util/HashMap<**>;"
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->code:I

    .line 333
    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->mode:I

    .line 335
    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->dictionaryType:I

    .line 337
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->chars:[C

    .line 339
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->keyEvent:Landroid/view/KeyEvent;

    .line 341
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->toggleTable:[Ljava/lang/String;

    .line 343
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->replaceTable:Ljava/util/HashMap;

    .line 345
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->word:Ljp/co/omronsoft/iwnnime/ml/WnnWord;

    .line 349
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->string:Ljava/lang/String;

    .line 407
    iput p1, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->code:I

    .line 408
    invoke-virtual {p2}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->replaceTable:Ljava/util/HashMap;

    .line 409
    return-void
.end method

.method public constructor <init>(ILjp/co/omronsoft/iwnnime/ml/WnnWord;)V
    .locals 2
    .parameter "code"
    .parameter "word"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->code:I

    .line 333
    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->mode:I

    .line 335
    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->dictionaryType:I

    .line 337
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->chars:[C

    .line 339
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->keyEvent:Landroid/view/KeyEvent;

    .line 341
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->toggleTable:[Ljava/lang/String;

    .line 343
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->replaceTable:Ljava/util/HashMap;

    .line 345
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->word:Ljp/co/omronsoft/iwnnime/ml/WnnWord;

    .line 349
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->string:Ljava/lang/String;

    .line 442
    iput p1, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->code:I

    .line 443
    iput-object p2, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->word:Ljp/co/omronsoft/iwnnime/ml/WnnWord;

    .line 444
    return-void
.end method

.method public constructor <init>(I[C)V
    .locals 2
    .parameter "code"
    .parameter "c"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->code:I

    .line 333
    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->mode:I

    .line 335
    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->dictionaryType:I

    .line 337
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->chars:[C

    .line 339
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->keyEvent:Landroid/view/KeyEvent;

    .line 341
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->toggleTable:[Ljava/lang/String;

    .line 343
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->replaceTable:Ljava/util/HashMap;

    .line 345
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->word:Ljp/co/omronsoft/iwnnime/ml/WnnWord;

    .line 349
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->string:Ljava/lang/String;

    .line 387
    iput p1, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->code:I

    .line 388
    invoke-virtual {p2}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    check-cast v0, [C

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->chars:[C

    .line 389
    return-void
.end method

.method public constructor <init>(I[Ljava/lang/String;)V
    .locals 2
    .parameter "code"
    .parameter "toggleTable"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->code:I

    .line 333
    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->mode:I

    .line 335
    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->dictionaryType:I

    .line 337
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->chars:[C

    .line 339
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->keyEvent:Landroid/view/KeyEvent;

    .line 341
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->toggleTable:[Ljava/lang/String;

    .line 343
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->replaceTable:Ljava/util/HashMap;

    .line 345
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->word:Ljp/co/omronsoft/iwnnime/ml/WnnWord;

    .line 349
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->string:Ljava/lang/String;

    .line 397
    iput p1, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->code:I

    .line 398
    invoke-virtual {p2}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->toggleTable:[Ljava/lang/String;

    .line 399
    return-void
.end method

.method public constructor <init>(Landroid/view/KeyEvent;)V
    .locals 2
    .parameter "ev"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->code:I

    .line 333
    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->mode:I

    .line 335
    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->dictionaryType:I

    .line 337
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->chars:[C

    .line 339
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->keyEvent:Landroid/view/KeyEvent;

    .line 341
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->toggleTable:[Ljava/lang/String;

    .line 343
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->replaceTable:Ljava/util/HashMap;

    .line 345
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->word:Ljp/co/omronsoft/iwnnime/ml/WnnWord;

    .line 349
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->string:Ljava/lang/String;

    .line 418
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 419
    const v0, -0xffffff9

    iput v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->code:I

    .line 423
    :goto_0
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->keyEvent:Landroid/view/KeyEvent;

    .line 424
    return-void

    .line 421
    :cond_0
    const v0, -0xfffffe1

    iput v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->code:I

    goto :goto_0
.end method
