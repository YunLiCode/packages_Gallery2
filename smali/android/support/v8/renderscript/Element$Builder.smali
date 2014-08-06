.class public Landroid/support/v8/renderscript/Element$Builder;
.super Ljava/lang/Object;
.source "Element.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v8/renderscript/Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mArraySizes:[I

.field mCount:I

.field mElementNames:[Ljava/lang/String;

.field mElements:[Landroid/support/v8/renderscript/Element;

.field mRS:Landroid/support/v8/renderscript/RenderScript;

.field mSkipPadding:I

.field mT:Landroid/support/v8/renderscript/ElementThunker$BuilderThunker;


# direct methods
.method public constructor <init>(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 3
    .param p1, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    const/16 v2, 0x8

    .line 921
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 922
    sget-boolean v1, Landroid/support/v8/renderscript/RenderScript;->isNative:Z

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 923
    check-cast v0, Landroid/support/v8/renderscript/RenderScriptThunker;

    .line 924
    .local v0, "rst":Landroid/support/v8/renderscript/RenderScriptThunker;
    new-instance v1, Landroid/support/v8/renderscript/ElementThunker$BuilderThunker;

    invoke-direct {v1, p1}, Landroid/support/v8/renderscript/ElementThunker$BuilderThunker;-><init>(Landroid/support/v8/renderscript/RenderScript;)V

    iput-object v1, p0, Landroid/support/v8/renderscript/Element$Builder;->mT:Landroid/support/v8/renderscript/ElementThunker$BuilderThunker;

    .line 926
    .end local v0    # "rst":Landroid/support/v8/renderscript/RenderScriptThunker;
    :cond_0
    iput-object p1, p0, Landroid/support/v8/renderscript/Element$Builder;->mRS:Landroid/support/v8/renderscript/RenderScript;

    .line 927
    const/4 v1, 0x0

    iput v1, p0, Landroid/support/v8/renderscript/Element$Builder;->mCount:I

    .line 928
    new-array v1, v2, [Landroid/support/v8/renderscript/Element;

    iput-object v1, p0, Landroid/support/v8/renderscript/Element$Builder;->mElements:[Landroid/support/v8/renderscript/Element;

    .line 929
    new-array v1, v2, [Ljava/lang/String;

    iput-object v1, p0, Landroid/support/v8/renderscript/Element$Builder;->mElementNames:[Ljava/lang/String;

    .line 930
    new-array v1, v2, [I

    iput-object v1, p0, Landroid/support/v8/renderscript/Element$Builder;->mArraySizes:[I

    .line 931
    return-void
.end method


# virtual methods
.method public add(Landroid/support/v8/renderscript/Element;Ljava/lang/String;)Landroid/support/v8/renderscript/Element$Builder;
    .locals 1
    .param p1, "element"    # Landroid/support/v8/renderscript/Element;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 990
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v8/renderscript/Element$Builder;->add(Landroid/support/v8/renderscript/Element;Ljava/lang/String;I)Landroid/support/v8/renderscript/Element$Builder;

    move-result-object v0

    return-object v0
.end method

.method public add(Landroid/support/v8/renderscript/Element;Ljava/lang/String;I)Landroid/support/v8/renderscript/Element$Builder;
    .locals 7
    .param p1, "element"    # Landroid/support/v8/renderscript/Element;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "arraySize"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 941
    iget-object v3, p0, Landroid/support/v8/renderscript/Element$Builder;->mT:Landroid/support/v8/renderscript/ElementThunker$BuilderThunker;

    if-eqz v3, :cond_0

    .line 942
    iget-object v3, p0, Landroid/support/v8/renderscript/Element$Builder;->mT:Landroid/support/v8/renderscript/ElementThunker$BuilderThunker;

    invoke-virtual {v3, p1, p2, p3}, Landroid/support/v8/renderscript/ElementThunker$BuilderThunker;->add(Landroid/support/v8/renderscript/Element;Ljava/lang/String;I)V

    .line 980
    :goto_0
    return-object p0

    .line 946
    :cond_0
    if-ge p3, v6, :cond_1

    .line 947
    new-instance v3, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v4, "Array size cannot be less than 1."

    invoke-direct {v3, v4}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 951
    :cond_1
    iget v3, p0, Landroid/support/v8/renderscript/Element$Builder;->mSkipPadding:I

    if-eqz v3, :cond_2

    .line 952
    const-string v3, "#padding_"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 953
    iput v5, p0, Landroid/support/v8/renderscript/Element$Builder;->mSkipPadding:I

    goto :goto_0

    .line 958
    :cond_2
    iget v3, p1, Landroid/support/v8/renderscript/Element;->mVectorSize:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_4

    .line 959
    iput v6, p0, Landroid/support/v8/renderscript/Element$Builder;->mSkipPadding:I

    .line 964
    :goto_1
    iget v3, p0, Landroid/support/v8/renderscript/Element$Builder;->mCount:I

    iget-object v4, p0, Landroid/support/v8/renderscript/Element$Builder;->mElements:[Landroid/support/v8/renderscript/Element;

    array-length v4, v4

    if-ne v3, v4, :cond_3

    .line 965
    iget v3, p0, Landroid/support/v8/renderscript/Element$Builder;->mCount:I

    add-int/lit8 v3, v3, 0x8

    new-array v1, v3, [Landroid/support/v8/renderscript/Element;

    .line 966
    .local v1, "e":[Landroid/support/v8/renderscript/Element;
    iget v3, p0, Landroid/support/v8/renderscript/Element$Builder;->mCount:I

    add-int/lit8 v3, v3, 0x8

    new-array v2, v3, [Ljava/lang/String;

    .line 967
    .local v2, "s":[Ljava/lang/String;
    iget v3, p0, Landroid/support/v8/renderscript/Element$Builder;->mCount:I

    add-int/lit8 v3, v3, 0x8

    new-array v0, v3, [I

    .line 968
    .local v0, "as":[I
    iget-object v3, p0, Landroid/support/v8/renderscript/Element$Builder;->mElements:[Landroid/support/v8/renderscript/Element;

    iget v4, p0, Landroid/support/v8/renderscript/Element$Builder;->mCount:I

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 969
    iget-object v3, p0, Landroid/support/v8/renderscript/Element$Builder;->mElementNames:[Ljava/lang/String;

    iget v4, p0, Landroid/support/v8/renderscript/Element$Builder;->mCount:I

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 970
    iget-object v3, p0, Landroid/support/v8/renderscript/Element$Builder;->mArraySizes:[I

    iget v4, p0, Landroid/support/v8/renderscript/Element$Builder;->mCount:I

    invoke-static {v3, v5, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 971
    iput-object v1, p0, Landroid/support/v8/renderscript/Element$Builder;->mElements:[Landroid/support/v8/renderscript/Element;

    .line 972
    iput-object v2, p0, Landroid/support/v8/renderscript/Element$Builder;->mElementNames:[Ljava/lang/String;

    .line 973
    iput-object v0, p0, Landroid/support/v8/renderscript/Element$Builder;->mArraySizes:[I

    .line 975
    .end local v0    # "as":[I
    .end local v1    # "e":[Landroid/support/v8/renderscript/Element;
    .end local v2    # "s":[Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Landroid/support/v8/renderscript/Element$Builder;->mElements:[Landroid/support/v8/renderscript/Element;

    iget v4, p0, Landroid/support/v8/renderscript/Element$Builder;->mCount:I

    aput-object p1, v3, v4

    .line 976
    iget-object v3, p0, Landroid/support/v8/renderscript/Element$Builder;->mElementNames:[Ljava/lang/String;

    iget v4, p0, Landroid/support/v8/renderscript/Element$Builder;->mCount:I

    aput-object p2, v3, v4

    .line 977
    iget-object v3, p0, Landroid/support/v8/renderscript/Element$Builder;->mArraySizes:[I

    iget v4, p0, Landroid/support/v8/renderscript/Element$Builder;->mCount:I

    aput p3, v3, v4

    .line 978
    iget v3, p0, Landroid/support/v8/renderscript/Element$Builder;->mCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/support/v8/renderscript/Element$Builder;->mCount:I

    goto :goto_0

    .line 961
    :cond_4
    iput v5, p0, Landroid/support/v8/renderscript/Element$Builder;->mSkipPadding:I

    goto :goto_1
.end method

.method public create()Landroid/support/v8/renderscript/Element;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1000
    iget-object v0, p0, Landroid/support/v8/renderscript/Element$Builder;->mT:Landroid/support/v8/renderscript/ElementThunker$BuilderThunker;

    if-eqz v0, :cond_0

    .line 1001
    iget-object v0, p0, Landroid/support/v8/renderscript/Element$Builder;->mT:Landroid/support/v8/renderscript/ElementThunker$BuilderThunker;

    iget-object v2, p0, Landroid/support/v8/renderscript/Element$Builder;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/ElementThunker$BuilderThunker;->create(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    .line 1018
    :goto_0
    return-object v0

    .line 1004
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/Element$Builder;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 1005
    iget v0, p0, Landroid/support/v8/renderscript/Element$Builder;->mCount:I

    new-array v3, v0, [Landroid/support/v8/renderscript/Element;

    .line 1006
    .local v3, "ein":[Landroid/support/v8/renderscript/Element;
    iget v0, p0, Landroid/support/v8/renderscript/Element$Builder;->mCount:I

    new-array v4, v0, [Ljava/lang/String;

    .line 1007
    .local v4, "sin":[Ljava/lang/String;
    iget v0, p0, Landroid/support/v8/renderscript/Element$Builder;->mCount:I

    new-array v5, v0, [I

    .line 1008
    .local v5, "asin":[I
    iget-object v0, p0, Landroid/support/v8/renderscript/Element$Builder;->mElements:[Landroid/support/v8/renderscript/Element;

    iget v2, p0, Landroid/support/v8/renderscript/Element$Builder;->mCount:I

    invoke-static {v0, v8, v3, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1009
    iget-object v0, p0, Landroid/support/v8/renderscript/Element$Builder;->mElementNames:[Ljava/lang/String;

    iget v2, p0, Landroid/support/v8/renderscript/Element$Builder;->mCount:I

    invoke-static {v0, v8, v4, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1010
    iget-object v0, p0, Landroid/support/v8/renderscript/Element$Builder;->mArraySizes:[I

    iget v2, p0, Landroid/support/v8/renderscript/Element$Builder;->mCount:I

    invoke-static {v0, v8, v5, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1012
    array-length v0, v3

    new-array v7, v0, [I

    .line 1013
    .local v7, "ids":[I
    const/4 v6, 0x0

    .local v6, "ct":I
    :goto_1
    array-length v0, v3

    if-ge v6, v0, :cond_1

    .line 1014
    aget-object v0, v3, v6

    iget-object v2, p0, Landroid/support/v8/renderscript/Element$Builder;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Element;->getID(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v0

    aput v0, v7, v6

    .line 1013
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1017
    :cond_1
    iget-object v0, p0, Landroid/support/v8/renderscript/Element$Builder;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v0, v7, v4, v5}, Landroid/support/v8/renderscript/RenderScript;->nElementCreate2([I[Ljava/lang/String;[I)I

    move-result v1

    .line 1018
    .local v1, "id":I
    new-instance v0, Landroid/support/v8/renderscript/Element;

    iget-object v2, p0, Landroid/support/v8/renderscript/Element$Builder;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-direct/range {v0 .. v5}, Landroid/support/v8/renderscript/Element;-><init>(ILandroid/support/v8/renderscript/RenderScript;[Landroid/support/v8/renderscript/Element;[Ljava/lang/String;[I)V

    goto :goto_0
.end method
