.class public Lcom/android/gallery3d/ui/RelativePosition;
.super Ljava/lang/Object;
.source "RelativePosition.java"


# instance fields
.field private mReferenceX:F

.field private mReferenceY:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setReferencePosition(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 31
    int-to-float v0, p1

    iput v0, p0, Lcom/android/gallery3d/ui/RelativePosition;->mReferenceX:F

    .line 32
    int-to-float v0, p2

    iput v0, p0, Lcom/android/gallery3d/ui/RelativePosition;->mReferenceY:F

    .line 33
    return-void
.end method
