.class public Lcom/android/dreams/phototable/KeyboardInterpreter;
.super Ljava/lang/Object;
.source "KeyboardInterpreter.java"


# instance fields
.field private final mBounce:J

.field private mLastDeckNavigation:J

.field private final mTable:Lcom/android/dreams/phototable/PhotoTable;


# direct methods
.method public constructor <init>(Lcom/android/dreams/phototable/PhotoTable;)V
    .locals 2
    .param p1, "table"    # Lcom/android/dreams/phototable/PhotoTable;

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/dreams/phototable/KeyboardInterpreter;->mBounce:J

    .line 35
    iput-object p1, p0, Lcom/android/dreams/phototable/KeyboardInterpreter;->mTable:Lcom/android/dreams/phototable/PhotoTable;

    .line 36
    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 38
    iget-object v2, p0, Lcom/android/dreams/phototable/KeyboardInterpreter;->mTable:Lcom/android/dreams/phototable/PhotoTable;

    invoke-virtual {v2}, Lcom/android/dreams/phototable/PhotoTable;->getFocus()Landroid/view/View;

    move-result-object v1

    .line 39
    .local v1, "focus":Landroid/view/View;
    const/4 v0, 0x1

    .line 40
    .local v0, "consumed":Z
    iget-object v2, p0, Lcom/android/dreams/phototable/KeyboardInterpreter;->mTable:Lcom/android/dreams/phototable/PhotoTable;

    invoke-virtual {v2}, Lcom/android/dreams/phototable/PhotoTable;->hasSelection()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 67
    const/4 v0, 0x0

    .line 69
    iget-object v2, p0, Lcom/android/dreams/phototable/KeyboardInterpreter;->mTable:Lcom/android/dreams/phototable/PhotoTable;

    invoke-virtual {v2}, Lcom/android/dreams/phototable/PhotoTable;->refreshSelection()V

    .line 120
    :cond_0
    :goto_0
    return v0

    .line 45
    :sswitch_0
    iget-object v2, p0, Lcom/android/dreams/phototable/KeyboardInterpreter;->mTable:Lcom/android/dreams/phototable/PhotoTable;

    iget-object v3, p0, Lcom/android/dreams/phototable/KeyboardInterpreter;->mTable:Lcom/android/dreams/phototable/PhotoTable;

    invoke-virtual {v3}, Lcom/android/dreams/phototable/PhotoTable;->getSelection()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/dreams/phototable/PhotoTable;->setFocus(Landroid/view/View;)V

    .line 46
    iget-object v2, p0, Lcom/android/dreams/phototable/KeyboardInterpreter;->mTable:Lcom/android/dreams/phototable/PhotoTable;

    invoke-virtual {v2}, Lcom/android/dreams/phototable/PhotoTable;->clearSelection()V

    goto :goto_0

    .line 51
    :sswitch_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/dreams/phototable/KeyboardInterpreter;->mLastDeckNavigation:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/android/dreams/phototable/KeyboardInterpreter;->mBounce:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/dreams/phototable/KeyboardInterpreter;->mLastDeckNavigation:J

    .line 53
    iget-object v2, p0, Lcom/android/dreams/phototable/KeyboardInterpreter;->mTable:Lcom/android/dreams/phototable/PhotoTable;

    invoke-virtual {v2}, Lcom/android/dreams/phototable/PhotoTable;->selectPrevious()V

    goto :goto_0

    .line 59
    :sswitch_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/dreams/phototable/KeyboardInterpreter;->mLastDeckNavigation:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/android/dreams/phototable/KeyboardInterpreter;->mBounce:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/dreams/phototable/KeyboardInterpreter;->mLastDeckNavigation:J

    .line 61
    iget-object v2, p0, Lcom/android/dreams/phototable/KeyboardInterpreter;->mTable:Lcom/android/dreams/phototable/PhotoTable;

    invoke-virtual {v2}, Lcom/android/dreams/phototable/PhotoTable;->selectNext()V

    goto :goto_0

    .line 73
    :cond_1
    sparse-switch p1, :sswitch_data_1

    .line 113
    const/4 v0, 0x0

    .line 115
    iget-object v2, p0, Lcom/android/dreams/phototable/KeyboardInterpreter;->mTable:Lcom/android/dreams/phototable/PhotoTable;

    invoke-virtual {v2}, Lcom/android/dreams/phototable/PhotoTable;->refreshFocus()V

    goto :goto_0

    .line 76
    :sswitch_3
    iget-object v2, p0, Lcom/android/dreams/phototable/KeyboardInterpreter;->mTable:Lcom/android/dreams/phototable/PhotoTable;

    invoke-virtual {v2}, Lcom/android/dreams/phototable/PhotoTable;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 77
    iget-object v2, p0, Lcom/android/dreams/phototable/KeyboardInterpreter;->mTable:Lcom/android/dreams/phototable/PhotoTable;

    iget-object v3, p0, Lcom/android/dreams/phototable/KeyboardInterpreter;->mTable:Lcom/android/dreams/phototable/PhotoTable;

    invoke-virtual {v3}, Lcom/android/dreams/phototable/PhotoTable;->getFocus()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/dreams/phototable/PhotoTable;->setSelection(Landroid/view/View;)V

    .line 78
    iget-object v2, p0, Lcom/android/dreams/phototable/KeyboardInterpreter;->mTable:Lcom/android/dreams/phototable/PhotoTable;

    invoke-virtual {v2}, Lcom/android/dreams/phototable/PhotoTable;->clearFocus()V

    goto :goto_0

    .line 80
    :cond_2
    iget-object v2, p0, Lcom/android/dreams/phototable/KeyboardInterpreter;->mTable:Lcom/android/dreams/phototable/PhotoTable;

    invoke-virtual {v2}, Lcom/android/dreams/phototable/PhotoTable;->setDefaultFocus()V

    goto :goto_0

    .line 86
    :sswitch_4
    iget-object v2, p0, Lcom/android/dreams/phototable/KeyboardInterpreter;->mTable:Lcom/android/dreams/phototable/PhotoTable;

    invoke-virtual {v2}, Lcom/android/dreams/phototable/PhotoTable;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    iget-object v2, p0, Lcom/android/dreams/phototable/KeyboardInterpreter;->mTable:Lcom/android/dreams/phototable/PhotoTable;

    iget-object v3, p0, Lcom/android/dreams/phototable/KeyboardInterpreter;->mTable:Lcom/android/dreams/phototable/PhotoTable;

    invoke-virtual {v3}, Lcom/android/dreams/phototable/PhotoTable;->getFocus()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/dreams/phototable/PhotoTable;->fling(Landroid/view/View;)V

    goto :goto_0

    .line 93
    :sswitch_5
    iget-object v2, p0, Lcom/android/dreams/phototable/KeyboardInterpreter;->mTable:Lcom/android/dreams/phototable/PhotoTable;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/android/dreams/phototable/PhotoTable;->moveFocus(Landroid/view/View;F)Landroid/view/View;

    goto/16 :goto_0

    .line 98
    :sswitch_6
    iget-object v2, p0, Lcom/android/dreams/phototable/KeyboardInterpreter;->mTable:Lcom/android/dreams/phototable/PhotoTable;

    const/high16 v3, 0x42b40000

    invoke-virtual {v2, v1, v3}, Lcom/android/dreams/phototable/PhotoTable;->moveFocus(Landroid/view/View;F)Landroid/view/View;

    goto/16 :goto_0

    .line 103
    :sswitch_7
    iget-object v2, p0, Lcom/android/dreams/phototable/KeyboardInterpreter;->mTable:Lcom/android/dreams/phototable/PhotoTable;

    const/high16 v3, 0x43340000

    invoke-virtual {v2, v1, v3}, Lcom/android/dreams/phototable/PhotoTable;->moveFocus(Landroid/view/View;F)Landroid/view/View;

    goto/16 :goto_0

    .line 108
    :sswitch_8
    iget-object v2, p0, Lcom/android/dreams/phototable/KeyboardInterpreter;->mTable:Lcom/android/dreams/phototable/PhotoTable;

    const/high16 v3, 0x43870000

    invoke-virtual {v2, v1, v3}, Lcom/android/dreams/phototable/PhotoTable;->moveFocus(Landroid/view/View;F)Landroid/view/View;

    goto/16 :goto_0

    .line 41
    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_2
        0x16 -> :sswitch_1
        0x17 -> :sswitch_0
        0x24 -> :sswitch_2
        0x28 -> :sswitch_1
        0x42 -> :sswitch_0
        0x6f -> :sswitch_0
    .end sparse-switch

    .line 73
    :sswitch_data_1
    .sparse-switch
        0x13 -> :sswitch_5
        0x14 -> :sswitch_7
        0x15 -> :sswitch_8
        0x16 -> :sswitch_6
        0x17 -> :sswitch_3
        0x24 -> :sswitch_8
        0x26 -> :sswitch_7
        0x27 -> :sswitch_5
        0x28 -> :sswitch_6
        0x34 -> :sswitch_4
        0x42 -> :sswitch_3
        0x43 -> :sswitch_4
    .end sparse-switch
.end method
