.class Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;
.super Lcom/android/gallery3d/anim/Animation;
.source "SlotView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/SlotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntegerAnimation"
.end annotation


# instance fields
.field private mCurrent:I

.field private mEnabled:Z

.field private mFrom:I

.field private mTarget:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 751
    invoke-direct {p0}, Lcom/android/gallery3d/anim/Animation;-><init>()V

    .line 753
    iput v0, p0, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->mCurrent:I

    .line 754
    iput v0, p0, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->mFrom:I

    .line 755
    iput-boolean v0, p0, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->mEnabled:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/ui/SlotView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/gallery3d/ui/SlotView$1;

    .prologue
    .line 751
    invoke-direct {p0}, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;-><init>()V

    return-void
.end method


# virtual methods
.method public get()I
    .locals 1

    .prologue
    .line 775
    iget v0, p0, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->mCurrent:I

    return v0
.end method

.method public getTarget()I
    .locals 1

    .prologue
    .line 779
    iget v0, p0, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->mTarget:I

    return v0
.end method

.method protected onCalculate(F)V
    .locals 3
    .param p1, "progress"    # F

    .prologue
    .line 784
    iget v0, p0, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->mFrom:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->mTarget:I

    iget v2, p0, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->mFrom:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->mCurrent:I

    .line 785
    const/high16 v0, 0x3f800000

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->mEnabled:Z

    .line 786
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 758
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->mEnabled:Z

    .line 759
    return-void
.end method

.method public startAnimateTo(I)V
    .locals 1
    .param p1, "target"    # I

    .prologue
    .line 762
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->mEnabled:Z

    if-nez v0, :cond_1

    .line 763
    iput p1, p0, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->mCurrent:I

    iput p1, p0, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->mTarget:I

    .line 772
    :cond_0
    :goto_0
    return-void

    .line 766
    :cond_1
    iget v0, p0, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->mTarget:I

    if-eq p1, v0, :cond_0

    .line 768
    iget v0, p0, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->mCurrent:I

    iput v0, p0, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->mFrom:I

    .line 769
    iput p1, p0, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->mTarget:I

    .line 770
    const/16 v0, 0xb4

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->setDuration(I)V

    .line 771
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->start()V

    goto :goto_0
.end method
