.class public Lcom/android/camera/ui/RenderOverlay;
.super Landroid/widget/FrameLayout;
.source "RenderOverlay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/RenderOverlay$RenderView;,
        Lcom/android/camera/ui/RenderOverlay$Renderer;
    }
.end annotation


# instance fields
.field private mClients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/ui/RenderOverlay$Renderer;",
            ">;"
        }
    .end annotation
.end field

.field private mPosition:[I

.field private mRenderView:Lcom/android/camera/ui/RenderOverlay$RenderView;

.field private mTouchClients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/ui/RenderOverlay$Renderer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v3, 0xa

    const/4 v2, -0x1

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/camera/ui/RenderOverlay;->mPosition:[I

    .line 52
    new-instance v0, Lcom/android/camera/ui/RenderOverlay$RenderView;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/ui/RenderOverlay$RenderView;-><init>(Lcom/android/camera/ui/RenderOverlay;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/ui/RenderOverlay;->mRenderView:Lcom/android/camera/ui/RenderOverlay$RenderView;

    .line 53
    iget-object v0, p0, Lcom/android/camera/ui/RenderOverlay;->mRenderView:Lcom/android/camera/ui/RenderOverlay$RenderView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/RenderOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/ui/RenderOverlay;->mClients:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/ui/RenderOverlay;->mTouchClients:Ljava/util/List;

    .line 57
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/RenderOverlay;->setWillNotDraw(Z)V

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/RenderOverlay;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/RenderOverlay;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/camera/ui/RenderOverlay;->mTouchClients:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/RenderOverlay;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/RenderOverlay;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/camera/ui/RenderOverlay;->adjustPosition()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/ui/RenderOverlay;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/RenderOverlay;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/camera/ui/RenderOverlay;->mClients:Ljava/util/List;

    return-object v0
.end method

.method private adjustPosition()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/camera/ui/RenderOverlay;->mPosition:[I

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/RenderOverlay;->getLocationInWindow([I)V

    .line 98
    return-void
.end method


# virtual methods
.method public addRenderer(Lcom/android/camera/ui/RenderOverlay$Renderer;)V
    .locals 4
    .param p1, "renderer"    # Lcom/android/camera/ui/RenderOverlay$Renderer;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/ui/RenderOverlay;->mClients:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    invoke-interface {p1, p0}, Lcom/android/camera/ui/RenderOverlay$Renderer;->setOverlay(Lcom/android/camera/ui/RenderOverlay;)V

    .line 63
    invoke-interface {p1}, Lcom/android/camera/ui/RenderOverlay$Renderer;->handlesTouch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/android/camera/ui/RenderOverlay;->mTouchClients:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/RenderOverlay;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/ui/RenderOverlay;->getTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/camera/ui/RenderOverlay;->getRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/camera/ui/RenderOverlay;->getBottom()I

    move-result v3

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/android/camera/ui/RenderOverlay$Renderer;->layout(IIII)V

    .line 67
    return-void
.end method

.method public directDispatchTouch(Landroid/view/MotionEvent;Lcom/android/camera/ui/RenderOverlay$Renderer;)Z
    .locals 3
    .param p1, "m"    # Landroid/view/MotionEvent;
    .param p2, "target"    # Lcom/android/camera/ui/RenderOverlay$Renderer;

    .prologue
    .line 90
    iget-object v1, p0, Lcom/android/camera/ui/RenderOverlay;->mRenderView:Lcom/android/camera/ui/RenderOverlay$RenderView;

    invoke-virtual {v1, p2}, Lcom/android/camera/ui/RenderOverlay$RenderView;->setTouchTarget(Lcom/android/camera/ui/RenderOverlay$Renderer;)V

    .line 91
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 92
    .local v0, "res":Z
    iget-object v1, p0, Lcom/android/camera/ui/RenderOverlay;->mRenderView:Lcom/android/camera/ui/RenderOverlay$RenderView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/RenderOverlay$RenderView;->setTouchTarget(Lcom/android/camera/ui/RenderOverlay$Renderer;)V

    .line 93
    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "m"    # Landroid/view/MotionEvent;

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public getWindowPositionX()I
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/camera/ui/RenderOverlay;->mPosition:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getWindowPositionY()I
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/camera/ui/RenderOverlay;->mPosition:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public update()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/camera/ui/RenderOverlay;->mRenderView:Lcom/android/camera/ui/RenderOverlay$RenderView;

    invoke-virtual {v0}, Lcom/android/camera/ui/RenderOverlay$RenderView;->invalidate()V

    .line 110
    return-void
.end method
