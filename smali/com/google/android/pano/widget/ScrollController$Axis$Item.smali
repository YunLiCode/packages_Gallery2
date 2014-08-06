.class public Lcom/google/android/pano/widget/ScrollController$Axis$Item;
.super Ljava/lang/Object;
.source "ScrollController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/pano/widget/ScrollController$Axis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field private mCenter:I

.field private mHigh:I

.field private mIndex:I

.field private mLow:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 208
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 209
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis$Item;->mIndex:I

    .line 210
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/pano/widget/ScrollController$Axis$Item;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/pano/widget/ScrollController$Axis$Item;

    .prologue
    .line 201
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis$Item;->mIndex:I

    return v0
.end method


# virtual methods
.method public final getCenter()I
    .locals 1

    .prologue
    .line 221
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis$Item;->mCenter:I

    return v0
.end method

.method public final getHigh()I
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis$Item;->mHigh:I

    return v0
.end method

.method public final getIndex()I
    .locals 1

    .prologue
    .line 225
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis$Item;->mIndex:I

    return v0
.end method

.method public final getLow()I
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis$Item;->mLow:I

    return v0
.end method

.method public final isValid()Z
    .locals 1

    .prologue
    .line 237
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis$Item;->mIndex:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setValue(III)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "low"    # I
    .param p3, "high"    # I

    .prologue
    .line 230
    iput p1, p0, Lcom/google/android/pano/widget/ScrollController$Axis$Item;->mIndex:I

    .line 231
    iput p2, p0, Lcom/google/android/pano/widget/ScrollController$Axis$Item;->mLow:I

    .line 232
    iput p3, p0, Lcom/google/android/pano/widget/ScrollController$Axis$Item;->mHigh:I

    .line 233
    add-int v0, p2, p3

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis$Item;->mCenter:I

    .line 234
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/google/android/pano/widget/ScrollController$Axis$Item;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/pano/widget/ScrollController$Axis$Item;->mLow:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/pano/widget/ScrollController$Axis$Item;->mHigh:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
