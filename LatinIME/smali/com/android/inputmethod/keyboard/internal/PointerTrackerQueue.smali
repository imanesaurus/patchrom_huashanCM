.class public final Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;
.super Ljava/lang/Object;
.source "PointerTrackerQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue$Element;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mArraySize:I

.field private final mExpandableArrayOfActivePointers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue$Element;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/16 v0, 0xa

    invoke-static {v0}, Lcom/android/inputmethod/latin/CollectionUtils;->newArrayList(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;->mExpandableArrayOfActivePointers:Ljava/util/ArrayList;

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;->mArraySize:I

    return-void
.end method


# virtual methods
.method public declared-synchronized add(Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue$Element;)V
    .locals 3
    .parameter "pointer"

    .prologue
    .line 45
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;->mExpandableArrayOfActivePointers:Ljava/util/ArrayList;

    .line 46
    .local v1, expandableArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue$Element;>;"
    iget v0, p0, Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;->mArraySize:I

    .line 47
    .local v0, arraySize:I
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 48
    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 52
    :goto_0
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;->mArraySize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    monitor-exit p0

    return-void

    .line 50
    :cond_0
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 45
    .end local v0           #arraySize:I
    .end local v1           #expandableArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue$Element;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getOldestElement()Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue$Element;
    .locals 2

    .prologue
    .line 77
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;->mArraySize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;->mExpandableArrayOfActivePointers:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue$Element;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hasModifierKeyOlderThan(Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue$Element;)Z
    .locals 6
    .parameter "pointer"

    .prologue
    const/4 v4, 0x0

    .line 159
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;->mExpandableArrayOfActivePointers:Ljava/util/ArrayList;

    .line 160
    .local v2, expandableArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue$Element;>;"
    iget v0, p0, Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;->mArraySize:I

    .line 161
    .local v0, arraySize:I
    const/4 v3, 0x0

    .local v3, index:I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 162
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue$Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    .local v1, element:Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue$Element;
    if-ne v1, p1, :cond_1

    .line 170
    .end local v1           #element:Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue$Element;
    :cond_0
    :goto_1
    monitor-exit p0

    return v4

    .line 166
    .restart local v1       #element:Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue$Element;
    :cond_1
    :try_start_1
    invoke-interface {v1}, Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue$Element;->isModifier()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-eqz v5, :cond_2

    .line 167
    const/4 v4, 0x1

    goto :goto_1

    .line 161
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 159
    .end local v0           #arraySize:I
    .end local v1           #element:Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue$Element;
    .end local v2           #expandableArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue$Element;>;"
    .end local v3           #index:I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized isAnyInSlidingKeyInput()Z
    .locals 5

    .prologue
    .line 174
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;->mExpandableArrayOfActivePointers:Ljava/util/ArrayList;

    .line 175
    .local v2, expandableArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue$Element;>;"
    iget v0, p0, Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;->mArraySize:I

    .line 176
    .local v0, arraySize:I
    const/4 v3, 0x0

    .local v3, index:I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 177
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue$Element;

    .line 178
    .local v1, element:Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue$Element;
    invoke-interface {v1}, Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue$Element;->isInSlidingKeyInput()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 179
    const/4 v4, 0x1

    .line 182
    .end local v1           #element:Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue$Element;
    :goto_1
    monitor-exit p0

    return v4

    .line 176
    .restart local v1       #element:Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue$Element;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 182
    .end local v1           #element:Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue$Element;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 174
    .end local v0           #arraySize:I
    .end local v2           #expandableArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue$Element;>;"
    .end local v3           #index:I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public releaseAllPointers(J)V
    .locals 1
    .parameter "eventTime"

    .prologue
    .line 123
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;->releaseAllPointersExcept(Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue$Element;J)V

    .line 124
    return-void
.end method

.method public declared-synchronized releaseAllPointersExcept(Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue$Element;J)V
    .locals 9
    .parameter "pointer"
    .parameter "eventTime"

    .prologue
    .line 135
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;->mExpandableArrayOfActivePointers:Ljava/util/ArrayList;

    .line 136
    .local v3, expandableArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue$Element;>;"
    iget v0, p0, Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;->mArraySize:I

    .line 137
    .local v0, arraySize:I
    const/4 v5, 0x0

    .local v5, newSize:I
    const/4 v1, 0x0

    .line 138
    .local v1, count:I
    const/4 v4, 0x0

    .local v4, index:I
    :goto_0
    if-ge v4, v0, :cond_3

    .line 139
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue$Element;

    .line 140
    .local v2, element:Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue$Element;
    if-ne v2, p1, :cond_2

    .line 141
    if-lez v1, :cond_0

    .line 142
    sget-object v6, Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Found duplicated element in releaseAllPointersExcept: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 149
    if-eq v5, v4, :cond_1

    .line 151
    invoke-virtual {v3, v5, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 153
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 138
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 146
    :cond_2
    invoke-interface {v2, p2, p3}, Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue$Element;->onPhantomUpEvent(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 135
    .end local v0           #arraySize:I
    .end local v1           #count:I
    .end local v2           #element:Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue$Element;
    .end local v3           #expandableArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue$Element;>;"
    .end local v4           #index:I
    .end local v5           #newSize:I
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 155
    .restart local v0       #arraySize:I
    .restart local v1       #count:I
    .restart local v3       #expandableArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue$Element;>;"
    .restart local v4       #index:I
    .restart local v5       #newSize:I
    :cond_3
    :try_start_1
    iput v5, p0, Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;->mArraySize:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized releaseAllPointersOlderThan(Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue$Element;J)V
    .locals 9
    .parameter "pointer"
    .parameter "eventTime"

    .prologue
    .line 85
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;->mExpandableArrayOfActivePointers:Ljava/util/ArrayList;

    .line 86
    .local v3, expandableArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue$Element;>;"
    iget v0, p0, Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;->mArraySize:I

    .line 88
    .local v0, arraySize:I
    const/4 v4, 0x0

    .local v4, index:I
    move v5, v4

    .local v5, newSize:I
    :goto_0
    if-ge v4, v0, :cond_0

    .line 89
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue$Element;

    .line 90
    .local v2, element:Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue$Element;
    if-ne v2, p1, :cond_4

    .line 104
    .end local v2           #element:Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue$Element;
    :cond_0
    const/4 v1, 0x0

    .line 105
    .local v1, count:I
    :goto_1
    if-ge v4, v0, :cond_7

    .line 106
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue$Element;

    .line 107
    .restart local v2       #element:Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue$Element;
    if-ne v2, p1, :cond_2

    .line 108
    if-lez v1, :cond_1

    .line 109
    sget-object v6, Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Found duplicated element in releaseAllPointersOlderThan: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 114
    :cond_2
    if-eq v5, v4, :cond_3

    .line 115
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 116
    add-int/lit8 v5, v5, 0x1

    .line 105
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 93
    .end local v1           #count:I
    :cond_4
    invoke-interface {v2}, Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue$Element;->isModifier()Z

    move-result v6

    if-nez v6, :cond_5

    .line 94
    invoke-interface {v2, p2, p3}, Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue$Element;->onPhantomUpEvent(J)V

    .line 88
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 97
    :cond_5
    if-eq v5, v4, :cond_6

    .line 99
    invoke-virtual {v3, v5, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 101
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 119
    .end local v2           #element:Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue$Element;
    .restart local v1       #count:I
    :cond_7
    iput v5, p0, Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;->mArraySize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    monitor-exit p0

    return-void

    .line 85
    .end local v0           #arraySize:I
    .end local v1           #count:I
    .end local v3           #expandableArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue$Element;>;"
    .end local v4           #index:I
    .end local v5           #newSize:I
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public declared-synchronized remove(Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue$Element;)V
    .locals 8
    .parameter "pointer"

    .prologue
    .line 56
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;->mExpandableArrayOfActivePointers:Ljava/util/ArrayList;

    .line 57
    .local v2, expandableArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue$Element;>;"
    iget v0, p0, Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;->mArraySize:I

    .line 58
    .local v0, arraySize:I
    const/4 v4, 0x0

    .line 59
    .local v4, newSize:I
    const/4 v3, 0x0

    .local v3, index:I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 60
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue$Element;

    .line 61
    .local v1, element:Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue$Element;
    if-ne v1, p1, :cond_1

    .line 62
    if-eq v4, v3, :cond_0

    .line 63
    sget-object v5, Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found duplicated element in remove: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 67
    :cond_1
    if-eq v4, v3, :cond_2

    .line 69
    invoke-virtual {v2, v4, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 71
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 73
    .end local v1           #element:Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue$Element;
    :cond_3
    iput v4, p0, Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;->mArraySize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    monitor-exit p0

    return-void

    .line 56
    .end local v0           #arraySize:I
    .end local v2           #expandableArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue$Element;>;"
    .end local v3           #index:I
    .end local v4           #newSize:I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized size()I
    .locals 1

    .prologue
    .line 41
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;->mArraySize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 187
    monitor-enter p0

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    .local v4, sb:Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;->mExpandableArrayOfActivePointers:Ljava/util/ArrayList;

    .line 189
    .local v2, expandableArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue$Element;>;"
    iget v0, p0, Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;->mArraySize:I

    .line 190
    .local v0, arraySize:I
    const/4 v3, 0x0

    .local v3, index:I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 191
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue$Element;

    .line 192
    .local v1, element:Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue$Element;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 193
    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 196
    .end local v1           #element:Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue$Element;
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    monitor-exit p0

    return-object v5

    .line 187
    .end local v0           #arraySize:I
    .end local v2           #expandableArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue$Element;>;"
    .end local v3           #index:I
    .end local v4           #sb:Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method
