.class public Lcom/android/gallery3d/ui/SlotView$RisingAnimation;
.super Lcom/android/gallery3d/ui/SlotView$SlotAnimation;
.source "SlotView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/SlotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RisingAnimation"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 347
    invoke-direct {p0}, Lcom/android/gallery3d/ui/SlotView$SlotAnimation;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/android/gallery3d/glrenderer/GLCanvas;ILandroid/graphics/Rect;)V
    .locals 4
    .param p1, "canvas"    # Lcom/android/gallery3d/glrenderer/GLCanvas;
    .param p2, "slotIndex"    # I
    .param p3, "target"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x0

    .line 352
    const/high16 v0, 0x43000000

    const/high16 v1, 0x3f800000

    iget v2, p0, Lcom/android/gallery3d/ui/SlotView$SlotAnimation;->mProgress:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    invoke-interface {p1, v3, v3, v0}, Lcom/android/gallery3d/glrenderer/GLCanvas;->translate(FFF)V

    .line 353
    return-void
.end method
