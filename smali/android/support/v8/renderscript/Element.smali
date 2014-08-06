.class public Landroid/support/v8/renderscript/Element;
.super Landroid/support/v8/renderscript/BaseObj;
.source "Element.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v8/renderscript/Element$1;,
        Landroid/support/v8/renderscript/Element$Builder;,
        Landroid/support/v8/renderscript/Element$DataKind;,
        Landroid/support/v8/renderscript/Element$DataType;
    }
.end annotation


# instance fields
.field mArraySizes:[I

.field mElementNames:[Ljava/lang/String;

.field mElements:[Landroid/support/v8/renderscript/Element;

.field mKind:Landroid/support/v8/renderscript/Element$DataKind;

.field mNormalized:Z

.field mOffsetInBytes:[I

.field mSize:I

.field mType:Landroid/support/v8/renderscript/Element$DataType;

.field mVectorSize:I

.field mVisibleElementMap:[I


# direct methods
.method constructor <init>(ILandroid/support/v8/renderscript/RenderScript;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 736
    invoke-direct {p0, p1, p2}, Landroid/support/v8/renderscript/BaseObj;-><init>(ILandroid/support/v8/renderscript/RenderScript;)V

    .line 737
    return-void
.end method

.method constructor <init>(ILandroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;Landroid/support/v8/renderscript/Element$DataKind;ZI)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p3, "dt"    # Landroid/support/v8/renderscript/Element$DataType;
    .param p4, "dk"    # Landroid/support/v8/renderscript/Element$DataKind;
    .param p5, "norm"    # Z
    .param p6, "size"    # I

    .prologue
    .line 717
    invoke-direct {p0, p1, p2}, Landroid/support/v8/renderscript/BaseObj;-><init>(ILandroid/support/v8/renderscript/RenderScript;)V

    .line 718
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_5_6_5:Landroid/support/v8/renderscript/Element$DataType;

    if-eq p3, v0, :cond_1

    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_4_4_4_4:Landroid/support/v8/renderscript/Element$DataType;

    if-eq p3, v0, :cond_1

    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_5_5_5_1:Landroid/support/v8/renderscript/Element$DataType;

    if-eq p3, v0, :cond_1

    .line 721
    const/4 v0, 0x3

    if-ne p6, v0, :cond_0

    .line 722
    iget v0, p3, Landroid/support/v8/renderscript/Element$DataType;->mSize:I

    mul-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/support/v8/renderscript/Element;->mSize:I

    .line 729
    :goto_0
    iput-object p3, p0, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    .line 730
    iput-object p4, p0, Landroid/support/v8/renderscript/Element;->mKind:Landroid/support/v8/renderscript/Element$DataKind;

    .line 731
    iput-boolean p5, p0, Landroid/support/v8/renderscript/Element;->mNormalized:Z

    .line 732
    iput p6, p0, Landroid/support/v8/renderscript/Element;->mVectorSize:I

    .line 733
    return-void

    .line 724
    :cond_0
    iget v0, p3, Landroid/support/v8/renderscript/Element$DataType;->mSize:I

    mul-int/2addr v0, p6

    iput v0, p0, Landroid/support/v8/renderscript/Element;->mSize:I

    goto :goto_0

    .line 727
    :cond_1
    iget v0, p3, Landroid/support/v8/renderscript/Element$DataType;->mSize:I

    iput v0, p0, Landroid/support/v8/renderscript/Element;->mSize:I

    goto :goto_0
.end method

.method constructor <init>(ILandroid/support/v8/renderscript/RenderScript;[Landroid/support/v8/renderscript/Element;[Ljava/lang/String;[I)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p3, "e"    # [Landroid/support/v8/renderscript/Element;
    .param p4, "n"    # [Ljava/lang/String;
    .param p5, "as"    # [I

    .prologue
    .line 700
    invoke-direct {p0, p1, p2}, Landroid/support/v8/renderscript/BaseObj;-><init>(ILandroid/support/v8/renderscript/RenderScript;)V

    .line 701
    const/4 v1, 0x0

    iput v1, p0, Landroid/support/v8/renderscript/Element;->mSize:I

    .line 702
    const/4 v1, 0x1

    iput v1, p0, Landroid/support/v8/renderscript/Element;->mVectorSize:I

    .line 703
    iput-object p3, p0, Landroid/support/v8/renderscript/Element;->mElements:[Landroid/support/v8/renderscript/Element;

    .line 704
    iput-object p4, p0, Landroid/support/v8/renderscript/Element;->mElementNames:[Ljava/lang/String;

    .line 705
    iput-object p5, p0, Landroid/support/v8/renderscript/Element;->mArraySizes:[I

    .line 706
    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->NONE:Landroid/support/v8/renderscript/Element$DataType;

    iput-object v1, p0, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    .line 707
    sget-object v1, Landroid/support/v8/renderscript/Element$DataKind;->USER:Landroid/support/v8/renderscript/Element$DataKind;

    iput-object v1, p0, Landroid/support/v8/renderscript/Element;->mKind:Landroid/support/v8/renderscript/Element$DataKind;

    .line 708
    iget-object v1, p0, Landroid/support/v8/renderscript/Element;->mElements:[Landroid/support/v8/renderscript/Element;

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/support/v8/renderscript/Element;->mOffsetInBytes:[I

    .line 709
    const/4 v0, 0x0

    .local v0, "ct":I
    :goto_0
    iget-object v1, p0, Landroid/support/v8/renderscript/Element;->mElements:[Landroid/support/v8/renderscript/Element;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 710
    iget-object v1, p0, Landroid/support/v8/renderscript/Element;->mOffsetInBytes:[I

    iget v2, p0, Landroid/support/v8/renderscript/Element;->mSize:I

    aput v2, v1, v0

    .line 711
    iget v1, p0, Landroid/support/v8/renderscript/Element;->mSize:I

    iget-object v2, p0, Landroid/support/v8/renderscript/Element;->mElements:[Landroid/support/v8/renderscript/Element;

    aget-object v2, v2, v0

    iget v2, v2, Landroid/support/v8/renderscript/Element;->mSize:I

    iget-object v3, p0, Landroid/support/v8/renderscript/Element;->mArraySizes:[I

    aget v3, v3, v0

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, p0, Landroid/support/v8/renderscript/Element;->mSize:I

    .line 709
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 713
    :cond_0
    invoke-direct {p0}, Landroid/support/v8/renderscript/Element;->updateVisibleSubElements()V

    .line 714
    return-void
.end method

.method public static ALLOCATION(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 405
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_ALLOCATION:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 406
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->RS_ALLOCATION:Landroid/support/v8/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/support/v8/renderscript/Element;->createUser(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_ALLOCATION:Landroid/support/v8/renderscript/Element;

    .line 408
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_ALLOCATION:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static A_8(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 427
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_A_8:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 428
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_8:Landroid/support/v8/renderscript/Element$DataType;

    sget-object v1, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_A:Landroid/support/v8/renderscript/Element$DataKind;

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createPixel(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;Landroid/support/v8/renderscript/Element$DataKind;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_A_8:Landroid/support/v8/renderscript/Element;

    .line 430
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_A_8:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static BOOLEAN(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 300
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_BOOLEAN:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 301
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->BOOLEAN:Landroid/support/v8/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/support/v8/renderscript/Element;->createUser(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_BOOLEAN:Landroid/support/v8/renderscript/Element;

    .line 303
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_BOOLEAN:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static ELEMENT(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 391
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_ELEMENT:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 392
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->RS_ELEMENT:Landroid/support/v8/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/support/v8/renderscript/Element;->createUser(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_ELEMENT:Landroid/support/v8/renderscript/Element;

    .line 394
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_ELEMENT:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static F32(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 377
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_F32:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 378
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->FLOAT_32:Landroid/support/v8/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/support/v8/renderscript/Element;->createUser(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_F32:Landroid/support/v8/renderscript/Element;

    .line 380
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_F32:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static F32_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 469
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_FLOAT_2:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 470
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->FLOAT_32:Landroid/support/v8/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_FLOAT_2:Landroid/support/v8/renderscript/Element;

    .line 472
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_FLOAT_2:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static F32_3(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 476
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_FLOAT_3:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 477
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->FLOAT_32:Landroid/support/v8/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_FLOAT_3:Landroid/support/v8/renderscript/Element;

    .line 479
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_FLOAT_3:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static F32_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 483
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_FLOAT_4:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 484
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->FLOAT_32:Landroid/support/v8/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_FLOAT_4:Landroid/support/v8/renderscript/Element;

    .line 486
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_FLOAT_4:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static F64(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 384
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_F64:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 385
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->FLOAT_64:Landroid/support/v8/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/support/v8/renderscript/Element;->createUser(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_F64:Landroid/support/v8/renderscript/Element;

    .line 387
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_F64:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static F64_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 490
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_DOUBLE_2:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 491
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->FLOAT_64:Landroid/support/v8/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_DOUBLE_2:Landroid/support/v8/renderscript/Element;

    .line 493
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_DOUBLE_2:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static F64_3(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 497
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_DOUBLE_3:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 498
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->FLOAT_64:Landroid/support/v8/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_DOUBLE_3:Landroid/support/v8/renderscript/Element;

    .line 500
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_DOUBLE_3:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static F64_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 504
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_DOUBLE_4:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 505
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->FLOAT_64:Landroid/support/v8/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_DOUBLE_4:Landroid/support/v8/renderscript/Element;

    .line 507
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_DOUBLE_4:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static I16(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 342
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_I16:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 343
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_16:Landroid/support/v8/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/support/v8/renderscript/Element;->createUser(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_I16:Landroid/support/v8/renderscript/Element;

    .line 345
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_I16:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static I16_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 574
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_SHORT_2:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 575
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_16:Landroid/support/v8/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_SHORT_2:Landroid/support/v8/renderscript/Element;

    .line 577
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_SHORT_2:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static I16_3(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 581
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_SHORT_3:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 582
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_16:Landroid/support/v8/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_SHORT_3:Landroid/support/v8/renderscript/Element;

    .line 584
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_SHORT_3:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static I16_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 588
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_SHORT_4:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 589
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_16:Landroid/support/v8/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_SHORT_4:Landroid/support/v8/renderscript/Element;

    .line 591
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_SHORT_4:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static I32(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 356
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_I32:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 357
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_32:Landroid/support/v8/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/support/v8/renderscript/Element;->createUser(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_I32:Landroid/support/v8/renderscript/Element;

    .line 359
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_I32:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static I32_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 616
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_INT_2:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 617
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_32:Landroid/support/v8/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_INT_2:Landroid/support/v8/renderscript/Element;

    .line 619
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_INT_2:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static I32_3(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 623
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_INT_3:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 624
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_32:Landroid/support/v8/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_INT_3:Landroid/support/v8/renderscript/Element;

    .line 626
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_INT_3:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static I32_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 630
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_INT_4:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 631
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_32:Landroid/support/v8/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_INT_4:Landroid/support/v8/renderscript/Element;

    .line 633
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_INT_4:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static I64(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 370
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_I64:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 371
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_64:Landroid/support/v8/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/support/v8/renderscript/Element;->createUser(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_I64:Landroid/support/v8/renderscript/Element;

    .line 373
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_I64:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static I64_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 658
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_LONG_2:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 659
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_64:Landroid/support/v8/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_LONG_2:Landroid/support/v8/renderscript/Element;

    .line 661
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_LONG_2:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static I64_3(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 665
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_LONG_3:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 666
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_64:Landroid/support/v8/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_LONG_3:Landroid/support/v8/renderscript/Element;

    .line 668
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_LONG_3:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static I64_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 672
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_LONG_4:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 673
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_64:Landroid/support/v8/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_LONG_4:Landroid/support/v8/renderscript/Element;

    .line 675
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_LONG_4:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static I8(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 328
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_I8:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 329
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_8:Landroid/support/v8/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/support/v8/renderscript/Element;->createUser(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_I8:Landroid/support/v8/renderscript/Element;

    .line 331
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_I8:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static I8_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 532
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_CHAR_2:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 533
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_8:Landroid/support/v8/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_CHAR_2:Landroid/support/v8/renderscript/Element;

    .line 535
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_CHAR_2:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static I8_3(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 539
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_CHAR_3:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 540
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_8:Landroid/support/v8/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_CHAR_3:Landroid/support/v8/renderscript/Element;

    .line 542
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_CHAR_3:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static I8_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 546
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_CHAR_4:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 547
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_8:Landroid/support/v8/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_CHAR_4:Landroid/support/v8/renderscript/Element;

    .line 549
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_CHAR_4:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static MATRIX_2X2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 693
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_MATRIX_2X2:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 694
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->MATRIX_2X2:Landroid/support/v8/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/support/v8/renderscript/Element;->createUser(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_MATRIX_2X2:Landroid/support/v8/renderscript/Element;

    .line 696
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_MATRIX_2X2:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static MATRIX_3X3(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 686
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_MATRIX_3X3:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 687
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->MATRIX_3X3:Landroid/support/v8/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/support/v8/renderscript/Element;->createUser(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_MATRIX_3X3:Landroid/support/v8/renderscript/Element;

    .line 689
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_MATRIX_3X3:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static MATRIX_4X4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 679
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_MATRIX_4X4:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 680
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->MATRIX_4X4:Landroid/support/v8/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/support/v8/renderscript/Element;->createUser(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_MATRIX_4X4:Landroid/support/v8/renderscript/Element;

    .line 682
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_MATRIX_4X4:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static RGBA_4444(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 455
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_RGBA_4444:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 456
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_4_4_4_4:Landroid/support/v8/renderscript/Element$DataType;

    sget-object v1, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/support/v8/renderscript/Element$DataKind;

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createPixel(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;Landroid/support/v8/renderscript/Element$DataKind;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_RGBA_4444:Landroid/support/v8/renderscript/Element;

    .line 458
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_RGBA_4444:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static RGBA_5551(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 448
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_RGBA_5551:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 449
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_5_5_5_1:Landroid/support/v8/renderscript/Element$DataType;

    sget-object v1, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/support/v8/renderscript/Element$DataKind;

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createPixel(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;Landroid/support/v8/renderscript/Element$DataKind;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_RGBA_5551:Landroid/support/v8/renderscript/Element;

    .line 451
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_RGBA_5551:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static RGBA_8888(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 462
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_RGBA_8888:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 463
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_8:Landroid/support/v8/renderscript/Element$DataType;

    sget-object v1, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/support/v8/renderscript/Element$DataKind;

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createPixel(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;Landroid/support/v8/renderscript/Element$DataKind;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_RGBA_8888:Landroid/support/v8/renderscript/Element;

    .line 465
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_RGBA_8888:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static RGB_565(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 434
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_RGB_565:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 435
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_5_6_5:Landroid/support/v8/renderscript/Element$DataType;

    sget-object v1, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_RGB:Landroid/support/v8/renderscript/Element$DataKind;

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createPixel(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;Landroid/support/v8/renderscript/Element$DataKind;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_RGB_565:Landroid/support/v8/renderscript/Element;

    .line 437
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_RGB_565:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static RGB_888(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 441
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_RGB_888:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 442
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_8:Landroid/support/v8/renderscript/Element$DataType;

    sget-object v1, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_RGB:Landroid/support/v8/renderscript/Element$DataKind;

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createPixel(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;Landroid/support/v8/renderscript/Element$DataKind;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_RGB_888:Landroid/support/v8/renderscript/Element;

    .line 444
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_RGB_888:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static SAMPLER(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 412
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_SAMPLER:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 413
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->RS_SAMPLER:Landroid/support/v8/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/support/v8/renderscript/Element;->createUser(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_SAMPLER:Landroid/support/v8/renderscript/Element;

    .line 415
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_SAMPLER:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static SCRIPT(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 419
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_SCRIPT:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 420
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->RS_SCRIPT:Landroid/support/v8/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/support/v8/renderscript/Element;->createUser(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_SCRIPT:Landroid/support/v8/renderscript/Element;

    .line 422
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_SCRIPT:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static TYPE(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 398
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_TYPE:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 399
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->RS_TYPE:Landroid/support/v8/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/support/v8/renderscript/Element;->createUser(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_TYPE:Landroid/support/v8/renderscript/Element;

    .line 401
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_TYPE:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static U16(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 335
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_U16:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 336
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_16:Landroid/support/v8/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/support/v8/renderscript/Element;->createUser(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_U16:Landroid/support/v8/renderscript/Element;

    .line 338
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_U16:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static U16_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 553
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_USHORT_2:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 554
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_16:Landroid/support/v8/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_USHORT_2:Landroid/support/v8/renderscript/Element;

    .line 556
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_USHORT_2:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static U16_3(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 560
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_USHORT_3:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 561
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_16:Landroid/support/v8/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_USHORT_3:Landroid/support/v8/renderscript/Element;

    .line 563
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_USHORT_3:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static U16_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 567
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_USHORT_4:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 568
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_16:Landroid/support/v8/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_USHORT_4:Landroid/support/v8/renderscript/Element;

    .line 570
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_USHORT_4:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static U32(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 349
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_U32:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 350
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_32:Landroid/support/v8/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/support/v8/renderscript/Element;->createUser(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_U32:Landroid/support/v8/renderscript/Element;

    .line 352
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_U32:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static U32_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 595
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_UINT_2:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 596
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_32:Landroid/support/v8/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_UINT_2:Landroid/support/v8/renderscript/Element;

    .line 598
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_UINT_2:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static U32_3(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 602
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_UINT_3:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 603
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_32:Landroid/support/v8/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_UINT_3:Landroid/support/v8/renderscript/Element;

    .line 605
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_UINT_3:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static U32_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 609
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_UINT_4:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 610
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_32:Landroid/support/v8/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_UINT_4:Landroid/support/v8/renderscript/Element;

    .line 612
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_UINT_4:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static U64(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 363
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_U64:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 364
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_64:Landroid/support/v8/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/support/v8/renderscript/Element;->createUser(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_U64:Landroid/support/v8/renderscript/Element;

    .line 366
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_U64:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static U64_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 637
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_ULONG_2:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 638
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_64:Landroid/support/v8/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_ULONG_2:Landroid/support/v8/renderscript/Element;

    .line 640
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_ULONG_2:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static U64_3(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 644
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_ULONG_3:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 645
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_64:Landroid/support/v8/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_ULONG_3:Landroid/support/v8/renderscript/Element;

    .line 647
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_ULONG_3:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static U64_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 651
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_ULONG_4:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 652
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_64:Landroid/support/v8/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_ULONG_4:Landroid/support/v8/renderscript/Element;

    .line 654
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_ULONG_4:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static U8(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 314
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_U8:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 315
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_8:Landroid/support/v8/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/support/v8/renderscript/Element;->createUser(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_U8:Landroid/support/v8/renderscript/Element;

    .line 317
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_U8:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static U8_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 511
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_UCHAR_2:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 512
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_8:Landroid/support/v8/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_UCHAR_2:Landroid/support/v8/renderscript/Element;

    .line 514
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_UCHAR_2:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static U8_3(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 518
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_UCHAR_3:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 519
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_8:Landroid/support/v8/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_UCHAR_3:Landroid/support/v8/renderscript/Element;

    .line 521
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_UCHAR_3:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static U8_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 525
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_UCHAR_4:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 526
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_8:Landroid/support/v8/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_UCHAR_4:Landroid/support/v8/renderscript/Element;

    .line 528
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_UCHAR_4:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static createPixel(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;Landroid/support/v8/renderscript/Element$DataKind;)Landroid/support/v8/renderscript/Element;
    .locals 8
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p1, "dt"    # Landroid/support/v8/renderscript/Element$DataType;
    .param p2, "dk"    # Landroid/support/v8/renderscript/Element$DataKind;

    .prologue
    .line 820
    sget-boolean v0, Landroid/support/v8/renderscript/RenderScript;->isNative:Z

    if-eqz v0, :cond_0

    move-object v7, p0

    .line 821
    check-cast v7, Landroid/support/v8/renderscript/RenderScriptThunker;

    .line 822
    .local v7, "rst":Landroid/support/v8/renderscript/RenderScriptThunker;
    invoke-static {v7, p1, p2}, Landroid/support/v8/renderscript/ElementThunker;->createPixel(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;Landroid/support/v8/renderscript/Element$DataKind;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    .line 870
    .end local v7    # "rst":Landroid/support/v8/renderscript/RenderScriptThunker;
    :goto_0
    return-object v0

    .line 825
    :cond_0
    sget-object v0, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_L:Landroid/support/v8/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_1

    sget-object v0, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_A:Landroid/support/v8/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_1

    sget-object v0, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_LA:Landroid/support/v8/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_1

    sget-object v0, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_RGB:Landroid/support/v8/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_1

    sget-object v0, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/support/v8/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_1

    sget-object v0, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_DEPTH:Landroid/support/v8/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_1

    sget-object v0, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_YUV:Landroid/support/v8/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_1

    .line 832
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v2, "Unsupported DataKind"

    invoke-direct {v0, v2}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 834
    :cond_1
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_8:Landroid/support/v8/renderscript/Element$DataType;

    if-eq p1, v0, :cond_2

    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_16:Landroid/support/v8/renderscript/Element$DataType;

    if-eq p1, v0, :cond_2

    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_5_6_5:Landroid/support/v8/renderscript/Element$DataType;

    if-eq p1, v0, :cond_2

    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_4_4_4_4:Landroid/support/v8/renderscript/Element$DataType;

    if-eq p1, v0, :cond_2

    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_5_5_5_1:Landroid/support/v8/renderscript/Element$DataType;

    if-eq p1, v0, :cond_2

    .line 839
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v2, "Unsupported DataType"

    invoke-direct {v0, v2}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 841
    :cond_2
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_5_6_5:Landroid/support/v8/renderscript/Element$DataType;

    if-ne p1, v0, :cond_3

    sget-object v0, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_RGB:Landroid/support/v8/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_3

    .line 842
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v2, "Bad kind and type combo"

    invoke-direct {v0, v2}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 844
    :cond_3
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_5_5_5_1:Landroid/support/v8/renderscript/Element$DataType;

    if-ne p1, v0, :cond_4

    sget-object v0, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/support/v8/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_4

    .line 845
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v2, "Bad kind and type combo"

    invoke-direct {v0, v2}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 847
    :cond_4
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_4_4_4_4:Landroid/support/v8/renderscript/Element$DataType;

    if-ne p1, v0, :cond_5

    sget-object v0, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/support/v8/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_5

    .line 848
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v2, "Bad kind and type combo"

    invoke-direct {v0, v2}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 850
    :cond_5
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_16:Landroid/support/v8/renderscript/Element$DataType;

    if-ne p1, v0, :cond_6

    sget-object v0, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_DEPTH:Landroid/support/v8/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_6

    .line 852
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v2, "Bad kind and type combo"

    invoke-direct {v0, v2}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 855
    :cond_6
    const/4 v6, 0x1

    .line 856
    .local v6, "size":I
    sget-object v0, Landroid/support/v8/renderscript/Element$1;->$SwitchMap$android$support$v8$renderscript$Element$DataKind:[I

    invoke-virtual {p2}, Landroid/support/v8/renderscript/Element$DataKind;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 868
    :goto_1
    const/4 v5, 0x1

    .line 869
    .local v5, "norm":Z
    iget v0, p1, Landroid/support/v8/renderscript/Element$DataType;->mID:I

    iget v2, p2, Landroid/support/v8/renderscript/Element$DataKind;->mID:I

    invoke-virtual {p0, v0, v2, v5, v6}, Landroid/support/v8/renderscript/RenderScript;->nElementCreate(IIZI)I

    move-result v1

    .line 870
    .local v1, "id":I
    new-instance v0, Landroid/support/v8/renderscript/Element;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Landroid/support/v8/renderscript/Element;-><init>(ILandroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;Landroid/support/v8/renderscript/Element$DataKind;ZI)V

    goto/16 :goto_0

    .line 858
    .end local v1    # "id":I
    .end local v5    # "norm":Z
    :pswitch_0
    const/4 v6, 0x2

    .line 859
    goto :goto_1

    .line 861
    :pswitch_1
    const/4 v6, 0x3

    .line 862
    goto :goto_1

    .line 864
    :pswitch_2
    const/4 v6, 0x4

    goto :goto_1

    .line 856
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static createUser(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;)Landroid/support/v8/renderscript/Element;
    .locals 8
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p1, "dt"    # Landroid/support/v8/renderscript/Element$DataType;

    .prologue
    .line 748
    sget-boolean v0, Landroid/support/v8/renderscript/RenderScript;->isNative:Z

    if-eqz v0, :cond_0

    move-object v7, p0

    .line 749
    check-cast v7, Landroid/support/v8/renderscript/RenderScriptThunker;

    .line 750
    .local v7, "rst":Landroid/support/v8/renderscript/RenderScriptThunker;
    invoke-static {v7, p1}, Landroid/support/v8/renderscript/ElementThunker;->create(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    .line 756
    .end local v7    # "rst":Landroid/support/v8/renderscript/RenderScriptThunker;
    :goto_0
    return-object v0

    .line 752
    :cond_0
    sget-object v4, Landroid/support/v8/renderscript/Element$DataKind;->USER:Landroid/support/v8/renderscript/Element$DataKind;

    .line 753
    .local v4, "dk":Landroid/support/v8/renderscript/Element$DataKind;
    const/4 v5, 0x0

    .line 754
    .local v5, "norm":Z
    const/4 v6, 0x1

    .line 755
    .local v6, "vecSize":I
    iget v0, p1, Landroid/support/v8/renderscript/Element$DataType;->mID:I

    iget v2, v4, Landroid/support/v8/renderscript/Element$DataKind;->mID:I

    invoke-virtual {p0, v0, v2, v5, v6}, Landroid/support/v8/renderscript/RenderScript;->nElementCreate(IIZI)I

    move-result v1

    .line 756
    .local v1, "id":I
    new-instance v0, Landroid/support/v8/renderscript/Element;

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Landroid/support/v8/renderscript/Element;-><init>(ILandroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;Landroid/support/v8/renderscript/Element$DataKind;ZI)V

    goto :goto_0
.end method

.method public static createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;
    .locals 8
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p1, "dt"    # Landroid/support/v8/renderscript/Element$DataType;
    .param p2, "size"    # I

    .prologue
    .line 773
    sget-boolean v0, Landroid/support/v8/renderscript/RenderScript;->isNative:Z

    if-eqz v0, :cond_0

    move-object v7, p0

    .line 774
    check-cast v7, Landroid/support/v8/renderscript/RenderScriptThunker;

    .line 775
    .local v7, "rst":Landroid/support/v8/renderscript/RenderScriptThunker;
    invoke-static {v7, p1, p2}, Landroid/support/v8/renderscript/ElementThunker;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    .line 797
    .end local v7    # "rst":Landroid/support/v8/renderscript/RenderScriptThunker;
    :goto_0
    return-object v0

    .line 777
    :cond_0
    const/4 v0, 0x2

    if-lt p2, v0, :cond_1

    const/4 v0, 0x4

    if-le p2, v0, :cond_2

    .line 778
    :cond_1
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v2, "Vector size out of range 2-4."

    invoke-direct {v0, v2}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 781
    :cond_2
    sget-object v0, Landroid/support/v8/renderscript/Element$1;->$SwitchMap$android$support$v8$renderscript$Element$DataType:[I

    invoke-virtual {p1}, Landroid/support/v8/renderscript/Element$DataType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 801
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v2, "Cannot create vector of non-primitive type."

    invoke-direct {v0, v2}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 794
    :pswitch_0
    sget-object v4, Landroid/support/v8/renderscript/Element$DataKind;->USER:Landroid/support/v8/renderscript/Element$DataKind;

    .line 795
    .local v4, "dk":Landroid/support/v8/renderscript/Element$DataKind;
    const/4 v5, 0x0

    .line 796
    .local v5, "norm":Z
    iget v0, p1, Landroid/support/v8/renderscript/Element$DataType;->mID:I

    iget v2, v4, Landroid/support/v8/renderscript/Element$DataKind;->mID:I

    invoke-virtual {p0, v0, v2, v5, p2}, Landroid/support/v8/renderscript/RenderScript;->nElementCreate(IIZI)I

    move-result v1

    .line 797
    .local v1, "id":I
    new-instance v0, Landroid/support/v8/renderscript/Element;

    move-object v2, p0

    move-object v3, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Landroid/support/v8/renderscript/Element;-><init>(ILandroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;Landroid/support/v8/renderscript/Element$DataKind;ZI)V

    goto :goto_0

    .line 781
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private updateVisibleSubElements()V
    .locals 8

    .prologue
    const/16 v7, 0x23

    const/4 v6, 0x0

    .line 65
    iget-object v5, p0, Landroid/support/v8/renderscript/Element;->mElements:[Landroid/support/v8/renderscript/Element;

    if-nez v5, :cond_1

    .line 85
    :cond_0
    return-void

    .line 69
    :cond_1
    const/4 v4, 0x0

    .line 70
    .local v4, "noPaddingFieldCount":I
    iget-object v5, p0, Landroid/support/v8/renderscript/Element;->mElementNames:[Ljava/lang/String;

    array-length v3, v5

    .line 72
    .local v3, "fieldCount":I
    const/4 v0, 0x0

    .local v0, "ct":I
    :goto_0
    if-ge v0, v3, :cond_3

    .line 73
    iget-object v5, p0, Landroid/support/v8/renderscript/Element;->mElementNames:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v7, :cond_2

    .line 74
    add-int/lit8 v4, v4, 0x1

    .line 72
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    :cond_3
    new-array v5, v4, [I

    iput-object v5, p0, Landroid/support/v8/renderscript/Element;->mVisibleElementMap:[I

    .line 80
    const/4 v0, 0x0

    const/4 v1, 0x0

    .local v1, "ctNoPadding":I
    move v2, v1

    .end local v1    # "ctNoPadding":I
    .local v2, "ctNoPadding":I
    :goto_1
    if-ge v0, v3, :cond_0

    .line 81
    iget-object v5, p0, Landroid/support/v8/renderscript/Element;->mElementNames:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v7, :cond_4

    .line 82
    iget-object v5, p0, Landroid/support/v8/renderscript/Element;->mVisibleElementMap:[I

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "ctNoPadding":I
    .restart local v1    # "ctNoPadding":I
    aput v0, v5, v2

    .line 80
    :goto_2
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    .end local v1    # "ctNoPadding":I
    .restart local v2    # "ctNoPadding":I
    goto :goto_1

    :cond_4
    move v1, v2

    .end local v2    # "ctNoPadding":I
    .restart local v1    # "ctNoPadding":I
    goto :goto_2
.end method


# virtual methods
.method public getBytesSize()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Landroid/support/v8/renderscript/Element;->mSize:I

    return v0
.end method

.method public getDataKind()Landroid/support/v8/renderscript/Element$DataKind;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Landroid/support/v8/renderscript/Element;->mKind:Landroid/support/v8/renderscript/Element$DataKind;

    return-object v0
.end method

.method public getDataType()Landroid/support/v8/renderscript/Element$DataType;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    return-object v0
.end method

.method public getSubElement(I)Landroid/support/v8/renderscript/Element;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 220
    iget-object v0, p0, Landroid/support/v8/renderscript/Element;->mVisibleElementMap:[I

    if-nez v0, :cond_0

    .line 221
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "Element contains no sub-elements"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :cond_0
    if-ltz p1, :cond_1

    iget-object v0, p0, Landroid/support/v8/renderscript/Element;->mVisibleElementMap:[I

    array-length v0, v0

    if-lt p1, v0, :cond_2

    .line 224
    :cond_1
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "Illegal sub-element index"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_2
    iget-object v0, p0, Landroid/support/v8/renderscript/Element;->mElements:[Landroid/support/v8/renderscript/Element;

    iget-object v1, p0, Landroid/support/v8/renderscript/Element;->mVisibleElementMap:[I

    aget v1, v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getSubElementArraySize(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 253
    iget-object v0, p0, Landroid/support/v8/renderscript/Element;->mVisibleElementMap:[I

    if-nez v0, :cond_0

    .line 254
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "Element contains no sub-elements"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_0
    if-ltz p1, :cond_1

    iget-object v0, p0, Landroid/support/v8/renderscript/Element;->mVisibleElementMap:[I

    array-length v0, v0

    if-lt p1, v0, :cond_2

    .line 257
    :cond_1
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "Illegal sub-element index"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :cond_2
    iget-object v0, p0, Landroid/support/v8/renderscript/Element;->mArraySizes:[I

    iget-object v1, p0, Landroid/support/v8/renderscript/Element;->mVisibleElementMap:[I

    aget v1, v1, p1

    aget v0, v0, v1

    return v0
.end method

.method public getSubElementCount()I
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Landroid/support/v8/renderscript/Element;->mVisibleElementMap:[I

    if-nez v0, :cond_0

    .line 208
    const/4 v0, 0x0

    .line 210
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/Element;->mVisibleElementMap:[I

    array-length v0, v0

    goto :goto_0
.end method

.method public getSubElementName(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 236
    iget-object v0, p0, Landroid/support/v8/renderscript/Element;->mVisibleElementMap:[I

    if-nez v0, :cond_0

    .line 237
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "Element contains no sub-elements"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_0
    if-ltz p1, :cond_1

    iget-object v0, p0, Landroid/support/v8/renderscript/Element;->mVisibleElementMap:[I

    array-length v0, v0

    if-lt p1, v0, :cond_2

    .line 240
    :cond_1
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "Illegal sub-element index"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_2
    iget-object v0, p0, Landroid/support/v8/renderscript/Element;->mElementNames:[Ljava/lang/String;

    iget-object v1, p0, Landroid/support/v8/renderscript/Element;->mVisibleElementMap:[I

    aget v1, v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getSubElementOffsetBytes(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 269
    iget-object v0, p0, Landroid/support/v8/renderscript/Element;->mVisibleElementMap:[I

    if-nez v0, :cond_0

    .line 270
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "Element contains no sub-elements"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :cond_0
    if-ltz p1, :cond_1

    iget-object v0, p0, Landroid/support/v8/renderscript/Element;->mVisibleElementMap:[I

    array-length v0, v0

    if-lt p1, v0, :cond_2

    .line 273
    :cond_1
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "Illegal sub-element index"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 275
    :cond_2
    iget-object v0, p0, Landroid/support/v8/renderscript/Element;->mOffsetInBytes:[I

    iget-object v1, p0, Landroid/support/v8/renderscript/Element;->mVisibleElementMap:[I

    aget v1, v1, p1

    aget v0, v0, v1

    return v0
.end method

.method public getVectorSize()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Landroid/support/v8/renderscript/Element;->mVectorSize:I

    return v0
.end method

.method public isCompatible(Landroid/support/v8/renderscript/Element;)Z
    .locals 3
    .param p1, "e"    # Landroid/support/v8/renderscript/Element;

    .prologue
    const/4 v0, 0x1

    .line 886
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/Element;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 894
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Landroid/support/v8/renderscript/Element;->mSize:I

    iget v2, p1, Landroid/support/v8/renderscript/Element;->mSize:I

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    sget-object v2, Landroid/support/v8/renderscript/Element$DataType;->NONE:Landroid/support/v8/renderscript/Element$DataType;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    iget-object v2, p1, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    if-ne v1, v2, :cond_2

    iget v1, p0, Landroid/support/v8/renderscript/Element;->mVectorSize:I

    iget v2, p1, Landroid/support/v8/renderscript/Element;->mVectorSize:I

    if-eq v1, v2, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isComplex()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 188
    iget-object v2, p0, Landroid/support/v8/renderscript/Element;->mElements:[Landroid/support/v8/renderscript/Element;

    if-nez v2, :cond_1

    .line 196
    :cond_0
    :goto_0
    return v1

    .line 191
    :cond_1
    const/4 v0, 0x0

    .local v0, "ct":I
    :goto_1
    iget-object v2, p0, Landroid/support/v8/renderscript/Element;->mElements:[Landroid/support/v8/renderscript/Element;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 192
    iget-object v2, p0, Landroid/support/v8/renderscript/Element;->mElements:[Landroid/support/v8/renderscript/Element;

    aget-object v2, v2, v0

    iget-object v2, v2, Landroid/support/v8/renderscript/Element;->mElements:[Landroid/support/v8/renderscript/Element;

    if-eqz v2, :cond_2

    .line 193
    const/4 v1, 0x1

    goto :goto_0

    .line 191
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
