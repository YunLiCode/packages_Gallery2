.class Lcom/google/android/picasastore/FIFEUtil$Splitter$1$1;
.super Lcom/google/android/picasastore/FIFEUtil$Splitter$SplittingIterator;
.source "FIFEUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/picasastore/FIFEUtil$Splitter$1;->iterator(Lcom/google/android/picasastore/FIFEUtil$Splitter;Ljava/lang/CharSequence;)Lcom/google/android/picasastore/FIFEUtil$Splitter$SplittingIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/picasastore/FIFEUtil$Splitter$1;


# direct methods
.method constructor <init>(Lcom/google/android/picasastore/FIFEUtil$Splitter$1;Lcom/google/android/picasastore/FIFEUtil$Splitter;Ljava/lang/CharSequence;)V
    .locals 0
    .param p2, "x0"    # Lcom/google/android/picasastore/FIFEUtil$Splitter;
    .param p3, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 396
    iput-object p1, p0, Lcom/google/android/picasastore/FIFEUtil$Splitter$1$1;->this$0:Lcom/google/android/picasastore/FIFEUtil$Splitter$1;

    invoke-direct {p0, p2, p3}, Lcom/google/android/picasastore/FIFEUtil$Splitter$SplittingIterator;-><init>(Lcom/google/android/picasastore/FIFEUtil$Splitter;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public separatorEnd(I)I
    .locals 1
    .param p1, "separatorPosition"    # I

    .prologue
    .line 417
    iget-object v0, p0, Lcom/google/android/picasastore/FIFEUtil$Splitter$1$1;->this$0:Lcom/google/android/picasastore/FIFEUtil$Splitter$1;

    iget-object v0, v0, Lcom/google/android/picasastore/FIFEUtil$Splitter$1;->val$separator:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method public separatorStart(I)I
    .locals 6
    .param p1, "start"    # I

    .prologue
    .line 399
    iget-object v4, p0, Lcom/google/android/picasastore/FIFEUtil$Splitter$1$1;->this$0:Lcom/google/android/picasastore/FIFEUtil$Splitter$1;

    iget-object v4, v4, Lcom/google/android/picasastore/FIFEUtil$Splitter$1;->val$separator:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    .line 402
    .local v0, "delimeterLength":I
    move v3, p1

    .local v3, "p":I
    iget-object v4, p0, Lcom/google/android/picasastore/FIFEUtil$Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    sub-int v2, v4, v0

    .line 403
    .local v2, "last":I
    :goto_0
    if-gt v3, v2, :cond_1

    .line 405
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 406
    iget-object v4, p0, Lcom/google/android/picasastore/FIFEUtil$Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    add-int v5, v1, v3

    invoke-interface {v4, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    iget-object v5, p0, Lcom/google/android/picasastore/FIFEUtil$Splitter$1$1;->this$0:Lcom/google/android/picasastore/FIFEUtil$Splitter$1;

    iget-object v5, v5, Lcom/google/android/picasastore/FIFEUtil$Splitter$1;->val$separator:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_0

    .line 404
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 405
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 412
    .end local v1    # "i":I
    :cond_1
    const/4 v3, -0x1

    .end local v3    # "p":I
    :cond_2
    return v3
.end method
