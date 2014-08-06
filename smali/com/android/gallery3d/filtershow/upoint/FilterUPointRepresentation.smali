.class public Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;
.super Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
.source "FilterUPointRepresentation.java"

# interfaces
.implements Lcom/android/gallery3d/filtershow/imageshow/Oval;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;
    }
.end annotation


# static fields
.field private static sLock:Ljava/lang/Object;


# instance fields
.field mCurrentPoint:Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;

.field mPoints:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    const-string v0, "UPoint"

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;-><init>(Ljava/lang/String;)V

    .line 62
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->mPoints:Ljava/util/Vector;

    .line 45
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->creatExample()V

    .line 46
    const-class v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterUPoint;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->setFilterClass(Ljava/lang/Class;)V

    .line 47
    const v0, 0x7f0b00b0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->setTextId(I)V

    .line 48
    const v0, 0x7f0a0029

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->setButtonId(I)V

    .line 49
    const v0, 0x7f0a002a

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->setEditorId(I)V

    .line 50
    return-void
.end method

.method private creatExample()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 114
    new-instance v0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;-><init>()V

    .line 115
    .local v0, "p":Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;
    # setter for: Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->mask:Z
    invoke-static {v0, v2}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->access$002(Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;Z)Z

    .line 116
    const/4 v1, 0x1

    # setter for: Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->active:Z
    invoke-static {v0, v1}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->access$102(Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;Z)Z

    .line 117
    const/4 v1, -0x1

    # setter for: Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->xPos:I
    invoke-static {v0, v1}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->access$202(Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;I)I

    .line 118
    const/16 v1, 0x64

    # setter for: Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->yPos:I
    invoke-static {v0, v1}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->access$302(Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;I)I

    .line 119
    const/16 v1, 0xc8

    # setter for: Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->size:I
    invoke-static {v0, v1}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->access$402(Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;I)I

    .line 120
    const/16 v1, 0x28

    # setter for: Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->brightness:I
    invoke-static {v0, v1}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->access$502(Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;I)I

    .line 121
    # setter for: Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->contrast:I
    invoke-static {v0, v2}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->access$602(Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;I)I

    .line 122
    # setter for: Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->saturation:I
    invoke-static {v0, v2}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->access$702(Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;I)I

    .line 123
    # setter for: Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->inking:Z
    invoke-static {v0, v2}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->access$802(Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;Z)Z

    .line 124
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->mPoints:Ljava/util/Vector;

    invoke-virtual {v1, v2, v0}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 125
    iput-object v0, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->mCurrentPoint:Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;

    .line 126
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->trimVector()V

    .line 127
    return-void
.end method


# virtual methods
.method public addPoint(Landroid/graphics/Rect;)I
    .locals 18
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 181
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->mPoints:Ljava/util/Vector;

    const/4 v14, 0x0

    new-instance v15, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerY()I

    move-result v17

    invoke-direct/range {v15 .. v17}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;-><init>(II)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->mCurrentPoint:Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;

    invoke-virtual {v13, v14, v15}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 182
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->mCurrentPoint:Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;

    const/4 v14, 0x0

    # setter for: Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->mask:Z
    invoke-static {v13, v14}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->access$002(Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;Z)Z

    .line 183
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->mCurrentPoint:Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;

    const/16 v14, 0x64

    # setter for: Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->size:I
    invoke-static {v13, v14}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->access$402(Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;I)I

    .line 184
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->mCurrentPoint:Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;

    # getter for: Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->xPos:I
    invoke-static {v13}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->access$200(Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;)I

    move-result v11

    .line 185
    .local v11, "x":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->mCurrentPoint:Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;

    # getter for: Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->yPos:I
    invoke-static {v13}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->access$300(Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;)I

    move-result v12

    .line 186
    .local v12, "y":I
    const-wide v13, 0x3fa999999999999aL

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v16

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(II)I

    move-result v15

    int-to-double v15, v15

    mul-double v1, v13, v15

    .line 187
    .local v1, "addDelta":D
    const/4 v8, 0x1

    .line 188
    .local v8, "moved":Z
    const/4 v3, 0x0

    .line 189
    .local v3, "count":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->mPoints:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->mCurrentPoint:Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;

    invoke-virtual {v13, v14}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v10

    .line 191
    .local v10, "toMove":I
    :cond_0
    if-eqz v8, :cond_1

    .line 192
    const/4 v8, 0x0

    .line 193
    add-int/lit8 v3, v3, 0x1

    .line 194
    const/16 v13, 0xe

    if-le v3, v13, :cond_2

    .line 229
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->trimVector()V

    .line 230
    const/4 v13, 0x0

    return v13

    .line 198
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->mPoints:Ljava/util/Vector;

    invoke-virtual {v13}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;

    .line 199
    .local v9, "point":Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;
    # getter for: Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->mask:Z
    invoke-static {v9}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->access$000(Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 204
    .end local v9    # "point":Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->mPoints:Ljava/util/Vector;

    invoke-virtual {v13}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;

    .line 205
    .restart local v9    # "point":Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;
    # getter for: Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->mask:Z
    invoke-static {v9}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->access$000(Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 208
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->mPoints:Ljava/util/Vector;

    invoke-virtual {v13, v9}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 210
    .local v7, "index":I
    if-eq v10, v7, :cond_5

    .line 211
    # getter for: Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->xPos:I
    invoke-static {v9}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->access$200(Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;)I

    move-result v13

    sub-int/2addr v13, v11

    int-to-double v13, v13

    # getter for: Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->yPos:I
    invoke-static {v9}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->access$300(Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;)I

    move-result v15

    sub-int/2addr v15, v12

    int-to-double v15, v15

    invoke-static/range {v13 .. v16}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    .line 212
    .local v4, "dist":D
    cmpg-double v13, v4, v1

    if-gez v13, :cond_5

    .line 213
    const/4 v8, 0x1

    .line 214
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->mCurrentPoint:Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;

    # += operator for: Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->xPos:I
    invoke-static {v13, v1, v2}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->access$218(Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;D)I

    .line 215
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->mCurrentPoint:Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;

    # += operator for: Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->yPos:I
    invoke-static {v13, v1, v2}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->access$318(Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;D)I

    .line 216
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->mCurrentPoint:Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;

    # getter for: Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->xPos:I
    invoke-static {v13}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->access$200(Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;)I

    move-result v11

    .line 217
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->mCurrentPoint:Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;

    # getter for: Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->yPos:I
    invoke-static {v13}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->access$300(Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;)I

    move-result v12

    .line 219
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->mCurrentPoint:Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;

    # getter for: Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->yPos:I
    invoke-static {v13}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->access$300(Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;)I

    move-result v13

    move-object/from16 v0, p1

    iget v14, v0, Landroid/graphics/Rect;->bottom:I

    if-le v13, v14, :cond_6

    .line 220
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->mCurrentPoint:Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/graphics/Rect;->top:I

    int-to-double v14, v14

    add-double/2addr v14, v1

    double-to-int v14, v14

    # setter for: Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->yPos:I
    invoke-static {v13, v14}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->access$302(Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;I)I

    .line 222
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->mCurrentPoint:Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;

    # getter for: Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->xPos:I
    invoke-static {v13}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->access$200(Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;)I

    move-result v13

    move-object/from16 v0, p1

    iget v14, v0, Landroid/graphics/Rect;->right:I

    if-le v13, v14, :cond_5

    .line 223
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->mCurrentPoint:Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/graphics/Rect;->left:I

    int-to-double v14, v14

    add-double/2addr v14, v1

    double-to-int v14, v14

    # setter for: Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->xPos:I
    invoke-static {v13, v14}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->access$202(Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;I)I

    goto/16 :goto_0
.end method

.method public clone()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 146
    invoke-super {p0}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->clone()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;

    .line 147
    .local v0, "ret":Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;
    invoke-virtual {v0, p0}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->useParametersFrom(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)V

    .line 148
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->clone()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v0

    return-object v0
.end method

.method public deleteCurrentPoint()V
    .locals 3

    .prologue
    .line 234
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->mPoints:Ljava/util/Vector;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->mCurrentPoint:Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 235
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->mPoints:Ljava/util/Vector;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->mCurrentPoint:Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 236
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->trimVector()V

    .line 237
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->getNumberOfPoints()I

    move-result v1

    if-nez v1, :cond_0

    .line 238
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImage()Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImageLoader()Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->getOriginalBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->addPoint(Landroid/graphics/Rect;)I

    .line 240
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->mPoints:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->mCurrentPoint:Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;

    .line 241
    return-void
.end method

.method public equals(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)Z
    .locals 1
    .param p1, "representation"    # Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .prologue
    .line 153
    instance-of v0, p1, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;

    if-eqz v0, :cond_0

    .line 154
    const/4 v0, 0x1

    .line 156
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getActive()[Z
    .locals 8

    .prologue
    .line 277
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->mPoints:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    new-array v4, v6, [Z

    .line 278
    .local v4, "ret":[Z
    const/4 v0, 0x0

    .line 279
    .local v0, "i":I
    const-string v5, ""

    .line 280
    .local v5, "s":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->mPoints:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;

    .line 281
    .local v3, "point":Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    # getter for: Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->active:Z
    invoke-static {v3}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->access$100(Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;)Z

    move-result v6

    aput-boolean v6, v4, v0

    .line 282
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    # getter for: Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->active:Z
    invoke-static {v3}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->access$100(Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "1"

    :goto_1
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    :cond_0
    const-string v6, "0"

    goto :goto_1

    .line 284
    .end local v1    # "i":I
    .end local v3    # "point":Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;
    .restart local v0    # "i":I
    :cond_1
    return-object v4
.end method

.method public getBrightness()[I
    .locals 6

    .prologue
    .line 316
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->mPoints:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    new-array v4, v5, [I

    .line 317
    .local v4, "ret":[I
    const/4 v0, 0x0

    .line 318
    .local v0, "i":I
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->mPoints:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;

    .line 319
    .local v3, "point":Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    # getter for: Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->brightness:I
    invoke-static {v3}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->access$500(Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;)I

    move-result v5

    aput v5, v4, v0

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 321
    .end local v3    # "point":Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;
    :cond_0
    return-object v4
.end method

.method public getCenterX()F
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->mCurrentPoint:Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;

    # getter for: Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->xPos:I
    invoke-static {v0}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->access$200(Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getCenterY()F
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->mCurrentPoint:Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;

    # getter for: Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->yPos:I
    invoke-static {v0}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->access$300(Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getContrast()[I
    .locals 6

    .prologue
    .line 325
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->mPoints:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    new-array v4, v5, [I

    .line 326
    .local v4, "ret":[I
    const/4 v0, 0x0

    .line 327
    .local v0, "i":I
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->mPoints:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;

    .line 328
    .local v3, "point":Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    # getter for: Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->contrast:I
    invoke-static {v3}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->access$600(Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;)I

    move-result v5

    aput v5, v4, v0

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 330
    .end local v3    # "point":Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;
    :cond_0
    return-object v4
.end method

.method public getInking()[Z
    .locals 6

    .prologue
    .line 343
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->mPoints:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    new-array v4, v5, [Z

    .line 344
    .local v4, "ret":[Z
    const/4 v0, 0x0

    .line 345
    .local v0, "i":I
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->mPoints:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;

    .line 346
    .local v3, "point":Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    # getter for: Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->inking:Z
    invoke-static {v3}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->access$800(Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;)Z

    move-result v5

    aput-boolean v5, v4, v0

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 348
    .end local v3    # "point":Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;
    :cond_0
    return-object v4
.end method

.method public getMask()[Z
    .locals 6

    .prologue
    .line 268
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->mPoints:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    new-array v4, v5, [Z

    .line 269
    .local v4, "ret":[Z
    const/4 v0, 0x0

    .line 270
    .local v0, "i":I
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->mPoints:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;

    .line 271
    .local v3, "point":Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    # getter for: Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->mask:Z
    invoke-static {v3}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->access$000(Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x1

    :goto_1
    aput-boolean v5, v4, v0

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    .line 273
    .end local v1    # "i":I
    .end local v3    # "point":Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;
    .restart local v0    # "i":I
    :cond_1
    return-object v4
.end method

.method public getNumberOfPoints()I
    .locals 4

    .prologue
    .line 160
    const/4 v0, 0x0

    .line 161
    .local v0, "count":I
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->mPoints:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;

    .line 162
    .local v2, "point":Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;
    # getter for: Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->mask:Z
    invoke-static {v2}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->access$000(Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    .end local v2    # "point":Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;
    :cond_1
    return v0
.end method

.method public getParameter(I)I
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 352
    packed-switch p1, :pswitch_data_0

    .line 360
    new-instance v0, Ljava/security/InvalidParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no such type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 354
    :pswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->mCurrentPoint:Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;

    # getter for: Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->brightness:I
    invoke-static {v0}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->access$500(Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;)I

    move-result v0

    .line 358
    :goto_0
    return v0

    .line 356
    :pswitch_1
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->mCurrentPoint:Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;

    # getter for: Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->saturation:I
    invoke-static {v0}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->access$700(Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;)I

    move-result v0

    goto :goto_0

    .line 358
    :pswitch_2
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->mCurrentPoint:Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;

    # getter for: Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->contrast:I
    invoke-static {v0}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->access$600(Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;)I

    move-result v0

    goto :goto_0

    .line 352
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getParameterMax(I)I
    .locals 3
    .param p1, "type"    # I

    .prologue
    const/16 v0, 0x64

    .line 364
    packed-switch p1, :pswitch_data_0

    .line 372
    new-instance v0, Ljava/security/InvalidParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no such type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 370
    :pswitch_0
    return v0

    .line 364
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getParameterMin(I)I
    .locals 3
    .param p1, "type"    # I

    .prologue
    const/16 v0, -0x64

    .line 376
    packed-switch p1, :pswitch_data_0

    .line 384
    new-instance v0, Ljava/security/InvalidParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no such type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 382
    :pswitch_0
    return v0

    .line 376
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getRadiusX()F
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->mCurrentPoint:Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;

    # getter for: Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->size:I
    invoke-static {v0}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->access$400(Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getRadiusY()F
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->mCurrentPoint:Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;

    # getter for: Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->size:I
    invoke-static {v0}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->access$400(Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getSaturation()[I
    .locals 6

    .prologue
    .line 334
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->mPoints:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    new-array v4, v5, [I

    .line 335
    .local v4, "ret":[I
    const/4 v0, 0x0

    .line 336
    .local v0, "i":I
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->mPoints:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;

    .line 337
    .local v3, "point":Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    # getter for: Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->saturation:I
    invoke-static {v3}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->access$700(Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;)I

    move-result v5

    aput v5, v4, v0

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 339
    .end local v3    # "point":Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;
    :cond_0
    return-object v4
.end method

.method public getSelectedPoint()I
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->mPoints:Ljava/util/Vector;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->mCurrentPoint:Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getSize()[I
    .locals 7

    .prologue
    .line 306
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->mPoints:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    new-array v4, v5, [I

    .line 307
    .local v4, "ret":[I
    const/4 v0, 0x0

    .line 308
    .local v0, "i":I
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->mPoints:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;

    .line 309
    .local v3, "point":Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    const/4 v5, 0x1

    # getter for: Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->size:I
    invoke-static {v3}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->access$400(Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    aput v5, v4, v0

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 312
    .end local v3    # "point":Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;
    :cond_0
    return-object v4
.end method

.method public getXPos()[I
    .locals 6

    .prologue
    .line 288
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->mPoints:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    new-array v4, v5, [I

    .line 289
    .local v4, "ret":[I
    const/4 v0, 0x0

    .line 290
    .local v0, "i":I
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->mPoints:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;

    .line 291
    .local v3, "point":Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    # getter for: Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->xPos:I
    invoke-static {v3}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->access$200(Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;)I

    move-result v5

    aput v5, v4, v0

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 293
    .end local v3    # "point":Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;
    :cond_0
    return-object v4
.end method

.method public getYPos()[I
    .locals 6

    .prologue
    .line 297
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->mPoints:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    new-array v4, v5, [I

    .line 298
    .local v4, "ret":[I
    const/4 v0, 0x0

    .line 299
    .local v0, "i":I
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->mPoints:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;

    .line 300
    .local v3, "point":Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    # getter for: Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->yPos:I
    invoke-static {v3}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->access$300(Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;)I

    move-result v5

    aput v5, v4, v0

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 302
    .end local v3    # "point":Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;
    :cond_0
    return-object v4
.end method

.method public setCenter(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 406
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->mCurrentPoint:Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;

    float-to-int v1, p1

    # setter for: Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->xPos:I
    invoke-static {v0, v1}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->access$202(Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;I)I

    .line 407
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->mCurrentPoint:Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;

    float-to-int v1, p2

    # setter for: Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->yPos:I
    invoke-static {v0, v1}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->access$302(Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;I)I

    .line 408
    return-void
.end method

.method public setInking(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 174
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->mPoints:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;

    .line 175
    .local v1, "point":Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;
    const/4 v2, 0x0

    # setter for: Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->inking:Z
    invoke-static {v1, v2}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->access$802(Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;Z)Z

    goto :goto_0

    .line 177
    .end local v1    # "point":Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->mCurrentPoint:Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;

    # setter for: Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->inking:Z
    invoke-static {v2, p1}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->access$802(Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;Z)Z

    .line 178
    return-void
.end method

.method public setParameter(II)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "value"    # I

    .prologue
    .line 388
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->mCurrentPoint:Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;

    const/4 v1, 0x0

    # setter for: Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->mask:Z
    invoke-static {v0, v1}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->access$002(Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;Z)Z

    .line 389
    packed-switch p1, :pswitch_data_0

    .line 400
    new-instance v0, Ljava/security/InvalidParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no such type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 391
    :pswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->mCurrentPoint:Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;

    # setter for: Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->brightness:I
    invoke-static {v0, p2}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->access$502(Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;I)I

    .line 402
    :goto_0
    return-void

    .line 394
    :pswitch_1
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->mCurrentPoint:Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;

    # setter for: Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->saturation:I
    invoke-static {v0, p2}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->access$702(Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;I)I

    goto :goto_0

    .line 397
    :pswitch_2
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->mCurrentPoint:Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;

    # setter for: Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->contrast:I
    invoke-static {v0, p2}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->access$602(Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;I)I

    goto :goto_0

    .line 389
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setRadius(FF)V
    .locals 2
    .param p1, "w"    # F
    .param p2, "h"    # F

    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->mCurrentPoint:Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;

    float-to-int v1, p1

    # setter for: Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->size:I
    invoke-static {v0, v1}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->access$402(Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;I)I

    .line 413
    return-void
.end method

.method public setRadiusX(F)V
    .locals 2
    .param p1, "x"    # F

    .prologue
    .line 442
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->mCurrentPoint:Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;

    float-to-int v1, p1

    # setter for: Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->size:I
    invoke-static {v0, v1}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->access$402(Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;I)I

    .line 443
    return-void
.end method

.method public setRadiusY(F)V
    .locals 2
    .param p1, "y"    # F

    .prologue
    .line 437
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->mCurrentPoint:Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;

    float-to-int v1, p1

    # setter for: Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->size:I
    invoke-static {v0, v1}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->access$402(Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;I)I

    .line 438
    return-void
.end method

.method public setSelectedPoint(I)V
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->mPoints:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->mCurrentPoint:Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;

    .line 261
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 104
    const/4 v0, 0x0

    .line 105
    .local v0, "count":I
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->mPoints:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;

    .line 106
    .local v2, "point":Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;
    # getter for: Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->mask:Z
    invoke-static {v2}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;->access$000(Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    .end local v2    # "point":Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "c="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->mPoints:Ljava/util/Vector;

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->mPoints:Ljava/util/Vector;

    invoke-virtual {v4, v5}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->mPoints:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public trimVector()V
    .locals 4

    .prologue
    .line 53
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->mPoints:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v1

    .line 54
    .local v1, "n":I
    move v0, v1

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x10

    if-ge v0, v2, :cond_0

    .line 55
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->mPoints:Ljava/util/Vector;

    new-instance v3, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;

    invoke-direct {v3}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    :cond_0
    const/16 v0, 0x10

    :goto_1
    if-ge v0, v1, :cond_1

    .line 58
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->mPoints:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 60
    :cond_1
    return-void
.end method

.method public useParametersFrom(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)V
    .locals 9
    .param p1, "a"    # Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .prologue
    .line 131
    sget-object v7, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->sLock:Ljava/lang/Object;

    monitor-enter v7

    .line 132
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;

    move-object v4, v0

    .line 133
    .local v4, "rep":Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 134
    .local v5, "tmpPoints":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;>;"
    iget-object v6, v4, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->mCurrentPoint:Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;

    if-nez v6, :cond_0

    const/4 v2, 0x0

    .line 135
    .local v2, "n":I
    :goto_0
    iget-object v6, v4, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->mPoints:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;

    .line 136
    .local v3, "point":Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;
    new-instance v6, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;

    invoke-direct {v6, v3}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;-><init>(Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;)V

    invoke-virtual {v5, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 141
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "n":I
    .end local v3    # "point":Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;
    .end local v4    # "rep":Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;
    .end local v5    # "tmpPoints":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;>;"
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 134
    .restart local v4    # "rep":Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;
    .restart local v5    # "tmpPoints":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;>;"
    :cond_0
    :try_start_1
    iget-object v6, v4, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->mPoints:Ljava/util/Vector;

    iget-object v8, v4, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->mCurrentPoint:Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;

    invoke-virtual {v6, v8}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v2

    goto :goto_0

    .line 138
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "n":I
    :cond_1
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->mCurrentPoint:Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;

    .line 139
    iput-object v5, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->mPoints:Ljava/util/Vector;

    .line 140
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->mPoints:Ljava/util/Vector;

    invoke-virtual {v6, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;

    iput-object v6, p0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->mCurrentPoint:Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation$Point;

    .line 141
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    return-void
.end method
