.class Lcom/android/camera/ui/PieRenderer$LinearAnimation;
.super Landroid/view/animation/Animation;
.source "PieRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/PieRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LinearAnimation"
.end annotation


# instance fields
.field private mFrom:F

.field private mTo:F

.field private mValue:F

.field final synthetic this$0:Lcom/android/camera/ui/PieRenderer;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/PieRenderer;FF)V
    .locals 1
    .param p2, "from"    # F
    .param p3, "to"    # F

    .prologue
    .line 1087
    iput-object p1, p0, Lcom/android/camera/ui/PieRenderer$LinearAnimation;->this$0:Lcom/android/camera/ui/PieRenderer;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 1088
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/PieRenderer$LinearAnimation;->setFillAfter(Z)V

    .line 1089
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/PieRenderer$LinearAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1090
    iput p2, p0, Lcom/android/camera/ui/PieRenderer$LinearAnimation;->mFrom:F

    .line 1091
    iput p3, p0, Lcom/android/camera/ui/PieRenderer$LinearAnimation;->mTo:F

    .line 1092
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 1100
    iget v0, p0, Lcom/android/camera/ui/PieRenderer$LinearAnimation;->mFrom:F

    iget v1, p0, Lcom/android/camera/ui/PieRenderer$LinearAnimation;->mTo:F

    iget v2, p0, Lcom/android/camera/ui/PieRenderer$LinearAnimation;->mFrom:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/PieRenderer$LinearAnimation;->mValue:F

    .line 1101
    return-void
.end method

.method public getValue()F
    .locals 1

    .prologue
    .line 1095
    iget v0, p0, Lcom/android/camera/ui/PieRenderer$LinearAnimation;->mValue:F

    return v0
.end method
