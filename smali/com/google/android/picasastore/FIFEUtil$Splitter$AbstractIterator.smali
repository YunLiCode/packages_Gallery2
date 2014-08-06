.class abstract Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator;
.super Ljava/lang/Object;
.source "FIFEUtil.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/picasastore/FIFEUtil$Splitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "AbstractIterator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field next:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field state:Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator$State;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 481
    .local p0, "this":Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator;, "Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator<TT;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 482
    sget-object v0, Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator$State;->NOT_READY:Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator$State;

    iput-object v0, p0, Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator;->state:Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator$State;

    .line 484
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/picasastore/FIFEUtil$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/picasastore/FIFEUtil$1;

    .prologue
    .line 481
    .local p0, "this":Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator;, "Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator<TT;>;"
    invoke-direct {p0}, Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract computeNext()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected final endOfData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 493
    .local p0, "this":Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator;, "Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator<TT;>;"
    sget-object v0, Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator$State;->DONE:Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator$State;

    iput-object v0, p0, Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator;->state:Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator$State;

    .line 494
    const/4 v0, 0x0

    return-object v0
.end method

.method public final hasNext()Z
    .locals 2

    .prologue
    .line 499
    .local p0, "this":Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator;, "Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator<TT;>;"
    iget-object v0, p0, Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator;->state:Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator$State;

    sget-object v1, Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator$State;->FAILED:Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator$State;

    if-ne v0, v1, :cond_0

    .line 500
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 503
    :cond_0
    sget-object v0, Lcom/google/android/picasastore/FIFEUtil$1;->$SwitchMap$com$google$android$picasastore$FIFEUtil$Splitter$AbstractIterator$State:[I

    iget-object v1, p0, Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator;->state:Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator$State;

    invoke-virtual {v1}, Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 510
    invoke-virtual {p0}, Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator;->tryToComputeNext()Z

    move-result v0

    :goto_0
    return v0

    .line 505
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 507
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 503
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 525
    .local p0, "this":Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator;, "Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator<TT;>;"
    invoke-virtual {p0}, Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 526
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 528
    :cond_0
    sget-object v0, Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator$State;->NOT_READY:Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator$State;

    iput-object v0, p0, Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator;->state:Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator$State;

    .line 529
    iget-object v0, p0, Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator;->next:Ljava/lang/Object;

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 534
    .local p0, "this":Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator;, "Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method tryToComputeNext()Z
    .locals 2

    .prologue
    .line 514
    .local p0, "this":Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator;, "Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator<TT;>;"
    sget-object v0, Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator$State;->FAILED:Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator$State;

    iput-object v0, p0, Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator;->state:Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator$State;

    .line 515
    invoke-virtual {p0}, Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator;->computeNext()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator;->next:Ljava/lang/Object;

    .line 516
    iget-object v0, p0, Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator;->state:Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator$State;

    sget-object v1, Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator$State;->DONE:Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator$State;

    if-eq v0, v1, :cond_0

    .line 517
    sget-object v0, Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator$State;->READY:Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator$State;

    iput-object v0, p0, Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator;->state:Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator$State;

    .line 518
    const/4 v0, 0x1

    .line 520
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
