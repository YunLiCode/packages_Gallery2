.class abstract Lcom/google/android/picasastore/FIFEUtil$Splitter$SplittingIterator;
.super Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator;
.source "FIFEUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/picasastore/FIFEUtil$Splitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "SplittingIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field offset:I

.field final omitEmptyStrings:Z

.field final toSplit:Ljava/lang/CharSequence;


# direct methods
.method protected constructor <init>(Lcom/google/android/picasastore/FIFEUtil$Splitter;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "splitter"    # Lcom/google/android/picasastore/FIFEUtil$Splitter;
    .param p2, "toSplit"    # Ljava/lang/CharSequence;

    .prologue
    .line 451
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator;-><init>(Lcom/google/android/picasastore/FIFEUtil$1;)V

    .line 449
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/picasastore/FIFEUtil$Splitter$SplittingIterator;->offset:I

    .line 452
    # getter for: Lcom/google/android/picasastore/FIFEUtil$Splitter;->omitEmptyStrings:Z
    invoke-static {p1}, Lcom/google/android/picasastore/FIFEUtil$Splitter;->access$200(Lcom/google/android/picasastore/FIFEUtil$Splitter;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/picasastore/FIFEUtil$Splitter$SplittingIterator;->omitEmptyStrings:Z

    .line 453
    iput-object p2, p0, Lcom/google/android/picasastore/FIFEUtil$Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    .line 454
    return-void
.end method


# virtual methods
.method protected bridge synthetic computeNext()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 441
    invoke-virtual {p0}, Lcom/google/android/picasastore/FIFEUtil$Splitter$SplittingIterator;->computeNext()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected computeNext()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 458
    :cond_0
    iget v3, p0, Lcom/google/android/picasastore/FIFEUtil$Splitter$SplittingIterator;->offset:I

    if-eq v3, v4, :cond_3

    .line 459
    iget v2, p0, Lcom/google/android/picasastore/FIFEUtil$Splitter$SplittingIterator;->offset:I

    .line 462
    .local v2, "start":I
    iget v3, p0, Lcom/google/android/picasastore/FIFEUtil$Splitter$SplittingIterator;->offset:I

    invoke-virtual {p0, v3}, Lcom/google/android/picasastore/FIFEUtil$Splitter$SplittingIterator;->separatorStart(I)I

    move-result v1

    .line 463
    .local v1, "separatorPosition":I
    if-ne v1, v4, :cond_2

    .line 464
    iget-object v3, p0, Lcom/google/android/picasastore/FIFEUtil$Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 465
    .local v0, "end":I
    iput v4, p0, Lcom/google/android/picasastore/FIFEUtil$Splitter$SplittingIterator;->offset:I

    .line 471
    :goto_0
    iget-boolean v3, p0, Lcom/google/android/picasastore/FIFEUtil$Splitter$SplittingIterator;->omitEmptyStrings:Z

    if-eqz v3, :cond_1

    if-eq v2, v0, :cond_0

    .line 475
    :cond_1
    iget-object v3, p0, Lcom/google/android/picasastore/FIFEUtil$Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    invoke-interface {v3, v2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 477
    .end local v0    # "end":I
    .end local v1    # "separatorPosition":I
    .end local v2    # "start":I
    :goto_1
    return-object v3

    .line 467
    .restart local v1    # "separatorPosition":I
    .restart local v2    # "start":I
    :cond_2
    move v0, v1

    .line 468
    .restart local v0    # "end":I
    invoke-virtual {p0, v1}, Lcom/google/android/picasastore/FIFEUtil$Splitter$SplittingIterator;->separatorEnd(I)I

    move-result v3

    iput v3, p0, Lcom/google/android/picasastore/FIFEUtil$Splitter$SplittingIterator;->offset:I

    goto :goto_0

    .line 477
    .end local v0    # "end":I
    .end local v1    # "separatorPosition":I
    .end local v2    # "start":I
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/picasastore/FIFEUtil$Splitter$SplittingIterator;->endOfData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_1
.end method

.method abstract separatorEnd(I)I
.end method

.method abstract separatorStart(I)I
.end method
