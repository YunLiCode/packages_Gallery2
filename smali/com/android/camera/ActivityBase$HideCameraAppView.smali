.class Lcom/android/camera/ActivityBase$HideCameraAppView;
.super Ljava/lang/Object;
.source "ActivityBase.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ActivityBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HideCameraAppView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ActivityBase;


# direct methods
.method private constructor <init>(Lcom/android/camera/ActivityBase;)V
    .locals 0

    .prologue
    .line 425
    iput-object p1, p0, Lcom/android/camera/ActivityBase$HideCameraAppView;->this$0:Lcom/android/camera/ActivityBase;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ActivityBase;Lcom/android/camera/ActivityBase$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/ActivityBase;
    .param p2, "x1"    # Lcom/android/camera/ActivityBase$1;

    .prologue
    .line 425
    invoke-direct {p0, p1}, Lcom/android/camera/ActivityBase$HideCameraAppView;-><init>(Lcom/android/camera/ActivityBase;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 430
    iget-object v0, p0, Lcom/android/camera/ActivityBase$HideCameraAppView;->this$0:Lcom/android/camera/ActivityBase;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mCameraAppView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 431
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 435
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 439
    return-void
.end method