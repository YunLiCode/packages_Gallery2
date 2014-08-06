.class Lcom/android/camera/ui/PieRenderer$FadeOutAnimation;
.super Landroid/view/animation/Animation;
.source "PieRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/PieRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FadeOutAnimation"
.end annotation


# instance fields
.field private mAlpha:F

.field final synthetic this$0:Lcom/android/camera/ui/PieRenderer;


# direct methods
.method private constructor <init>(Lcom/android/camera/ui/PieRenderer;)V
    .locals 0

    .prologue
    .line 1043
    iput-object p1, p0, Lcom/android/camera/ui/PieRenderer$FadeOutAnimation;->this$0:Lcom/android/camera/ui/PieRenderer;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ui/PieRenderer;Lcom/android/camera/ui/PieRenderer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/ui/PieRenderer;
    .param p2, "x1"    # Lcom/android/camera/ui/PieRenderer$1;

    .prologue
    .line 1043
    invoke-direct {p0, p1}, Lcom/android/camera/ui/PieRenderer$FadeOutAnimation;-><init>(Lcom/android/camera/ui/PieRenderer;)V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 5
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    const/high16 v4, 0x3f800000

    .line 1053
    float-to-double v0, p1

    const-wide v2, 0x3fc999999999999aL

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 1054
    iput v4, p0, Lcom/android/camera/ui/PieRenderer$FadeOutAnimation;->mAlpha:F

    .line 1060
    :goto_0
    return-void

    .line 1055
    :cond_0
    float-to-double v0, p1

    const-wide v2, 0x3fd3333333333333L

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    .line 1056
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/PieRenderer$FadeOutAnimation;->mAlpha:F

    goto :goto_0

    .line 1058
    :cond_1
    const v0, 0x3e99999a

    sub-float v0, p1, v0

    const v1, 0x3f333333

    div-float/2addr v0, v1

    sub-float v0, v4, v0

    iput v0, p0, Lcom/android/camera/ui/PieRenderer$FadeOutAnimation;->mAlpha:F

    goto :goto_0
.end method

.method public getValue()F
    .locals 1

    .prologue
    .line 1048
    iget v0, p0, Lcom/android/camera/ui/PieRenderer$FadeOutAnimation;->mAlpha:F

    return v0
.end method
