.class Lcom/android/gallery3d/filtershow/state/DragListener;
.super Ljava/lang/Object;
.source "DragListener.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# static fields
.field private static sSlope:F


# instance fields
.field private mStatePanelTrack:Lcom/android/gallery3d/filtershow/state/PanelTrack;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const v0, 0x3e4ccccd

    sput v0, Lcom/android/gallery3d/filtershow/state/DragListener;->sSlope:F

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/filtershow/state/PanelTrack;)V
    .locals 0
    .param p1, "statePanelTrack"    # Lcom/android/gallery3d/filtershow/state/PanelTrack;

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/state/DragListener;->mStatePanelTrack:Lcom/android/gallery3d/filtershow/state/PanelTrack;

    .line 32
    return-void
.end method

.method private setState(Landroid/view/DragEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/DragEvent;

    .prologue
    const/high16 v4, 0x3f800000

    .line 35
    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/state/DragListener;->mStatePanelTrack:Lcom/android/gallery3d/filtershow/state/PanelTrack;

    invoke-interface {v3}, Lcom/android/gallery3d/filtershow/state/PanelTrack;->getTouchPoint()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    sub-float v1, v2, v3

    .line 36
    .local v1, "translation":F
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/state/DragListener;->mStatePanelTrack:Lcom/android/gallery3d/filtershow/state/PanelTrack;

    invoke-interface {v3}, Lcom/android/gallery3d/filtershow/state/PanelTrack;->getCurrentView()Lcom/android/gallery3d/filtershow/state/StateView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/state/StateView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    sub-float v0, v4, v2

    .line 38
    .local v0, "alpha":F
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/state/DragListener;->mStatePanelTrack:Lcom/android/gallery3d/filtershow/state/PanelTrack;

    invoke-interface {v2}, Lcom/android/gallery3d/filtershow/state/PanelTrack;->getOrientation()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 39
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/state/DragListener;->mStatePanelTrack:Lcom/android/gallery3d/filtershow/state/PanelTrack;

    invoke-interface {v3}, Lcom/android/gallery3d/filtershow/state/PanelTrack;->getTouchPoint()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    sub-float v1, v2, v3

    .line 40
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/state/DragListener;->mStatePanelTrack:Lcom/android/gallery3d/filtershow/state/PanelTrack;

    invoke-interface {v3}, Lcom/android/gallery3d/filtershow/state/PanelTrack;->getCurrentView()Lcom/android/gallery3d/filtershow/state/StateView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/state/StateView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    sub-float v0, v4, v2

    .line 42
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/state/DragListener;->mStatePanelTrack:Lcom/android/gallery3d/filtershow/state/PanelTrack;

    invoke-interface {v2}, Lcom/android/gallery3d/filtershow/state/PanelTrack;->getCurrentView()Lcom/android/gallery3d/filtershow/state/StateView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/gallery3d/filtershow/state/StateView;->setTranslationX(F)V

    .line 46
    :goto_0
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/state/DragListener;->mStatePanelTrack:Lcom/android/gallery3d/filtershow/state/PanelTrack;

    invoke-interface {v2}, Lcom/android/gallery3d/filtershow/state/PanelTrack;->getCurrentView()Lcom/android/gallery3d/filtershow/state/StateView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/filtershow/state/StateView;->setBackgroundAlpha(F)V

    .line 47
    return-void

    .line 44
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/state/DragListener;->mStatePanelTrack:Lcom/android/gallery3d/filtershow/state/PanelTrack;

    invoke-interface {v2}, Lcom/android/gallery3d/filtershow/state/PanelTrack;->getCurrentView()Lcom/android/gallery3d/filtershow/state/StateView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/gallery3d/filtershow/state/StateView;->setTranslationY(F)V

    goto :goto_0
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 12
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/DragEvent;

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 51
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 108
    :cond_0
    :goto_0
    :pswitch_0
    return v10

    .line 56
    :pswitch_1
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/state/DragListener;->mStatePanelTrack:Lcom/android/gallery3d/filtershow/state/PanelTrack;

    invoke-interface {v6}, Lcom/android/gallery3d/filtershow/state/PanelTrack;->getCurrentView()Lcom/android/gallery3d/filtershow/state/StateView;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 57
    invoke-direct {p0, p2}, Lcom/android/gallery3d/filtershow/state/DragListener;->setState(Landroid/view/DragEvent;)V

    .line 58
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/state/DragListener;->mStatePanelTrack:Lcom/android/gallery3d/filtershow/state/PanelTrack;

    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    invoke-interface {v6, v7, v8}, Lcom/android/gallery3d/filtershow/state/PanelTrack;->findChildAt(II)Landroid/view/View;

    move-result-object v3

    .line 60
    .local v3, "over":Landroid/view/View;
    if-eqz v3, :cond_0

    iget-object v6, p0, Lcom/android/gallery3d/filtershow/state/DragListener;->mStatePanelTrack:Lcom/android/gallery3d/filtershow/state/PanelTrack;

    invoke-interface {v6}, Lcom/android/gallery3d/filtershow/state/PanelTrack;->getCurrentView()Lcom/android/gallery3d/filtershow/state/StateView;

    move-result-object v6

    if-eq v3, v6, :cond_0

    move-object v5, v3

    .line 61
    check-cast v5, Lcom/android/gallery3d/filtershow/state/StateView;

    .line 62
    .local v5, "stateView":Lcom/android/gallery3d/filtershow/state/StateView;
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/state/DragListener;->mStatePanelTrack:Lcom/android/gallery3d/filtershow/state/PanelTrack;

    invoke-interface {v6}, Lcom/android/gallery3d/filtershow/state/PanelTrack;->getCurrentView()Lcom/android/gallery3d/filtershow/state/StateView;

    move-result-object v6

    if-eq v5, v6, :cond_0

    .line 63
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/state/DragListener;->mStatePanelTrack:Lcom/android/gallery3d/filtershow/state/PanelTrack;

    invoke-interface {v6, v3}, Lcom/android/gallery3d/filtershow/state/PanelTrack;->findChild(Landroid/view/View;)I

    move-result v4

    .line 64
    .local v4, "pos":I
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/state/DragListener;->mStatePanelTrack:Lcom/android/gallery3d/filtershow/state/PanelTrack;

    iget-object v7, p0, Lcom/android/gallery3d/filtershow/state/DragListener;->mStatePanelTrack:Lcom/android/gallery3d/filtershow/state/PanelTrack;

    invoke-interface {v7}, Lcom/android/gallery3d/filtershow/state/PanelTrack;->getCurrentView()Lcom/android/gallery3d/filtershow/state/StateView;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/android/gallery3d/filtershow/state/PanelTrack;->findChild(Landroid/view/View;)I

    move-result v2

    .line 66
    .local v2, "origin":I
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/state/DragListener;->mStatePanelTrack:Lcom/android/gallery3d/filtershow/state/PanelTrack;

    invoke-interface {v6}, Lcom/android/gallery3d/filtershow/state/PanelTrack;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    .line 67
    .local v0, "array":Landroid/widget/ArrayAdapter;
    if-eq v2, v11, :cond_0

    if-eq v4, v11, :cond_0

    .line 68
    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/state/State;

    .line 69
    .local v1, "current":Lcom/android/gallery3d/filtershow/state/State;
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    .line 70
    invoke-virtual {v0, v1, v4}, Landroid/widget/ArrayAdapter;->insert(Ljava/lang/Object;I)V

    .line 71
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/state/DragListener;->mStatePanelTrack:Lcom/android/gallery3d/filtershow/state/PanelTrack;

    invoke-interface {v6, v9}, Lcom/android/gallery3d/filtershow/state/PanelTrack;->fillContent(Z)V

    .line 72
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/state/DragListener;->mStatePanelTrack:Lcom/android/gallery3d/filtershow/state/PanelTrack;

    iget-object v7, p0, Lcom/android/gallery3d/filtershow/state/DragListener;->mStatePanelTrack:Lcom/android/gallery3d/filtershow/state/PanelTrack;

    invoke-interface {v7, v4}, Lcom/android/gallery3d/filtershow/state/PanelTrack;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/android/gallery3d/filtershow/state/PanelTrack;->setCurrentView(Landroid/view/View;)V

    goto :goto_0

    .line 80
    .end local v0    # "array":Landroid/widget/ArrayAdapter;
    .end local v1    # "current":Lcom/android/gallery3d/filtershow/state/State;
    .end local v2    # "origin":I
    .end local v3    # "over":Landroid/view/View;
    .end local v4    # "pos":I
    .end local v5    # "stateView":Lcom/android/gallery3d/filtershow/state/StateView;
    :pswitch_2
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/state/DragListener;->mStatePanelTrack:Lcom/android/gallery3d/filtershow/state/PanelTrack;

    invoke-interface {v6, v9}, Lcom/android/gallery3d/filtershow/state/PanelTrack;->setExited(Z)V

    .line 81
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/state/DragListener;->mStatePanelTrack:Lcom/android/gallery3d/filtershow/state/PanelTrack;

    invoke-interface {v6}, Lcom/android/gallery3d/filtershow/state/PanelTrack;->getCurrentView()Lcom/android/gallery3d/filtershow/state/StateView;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 82
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/state/DragListener;->mStatePanelTrack:Lcom/android/gallery3d/filtershow/state/PanelTrack;

    invoke-interface {v6}, Lcom/android/gallery3d/filtershow/state/PanelTrack;->getCurrentView()Lcom/android/gallery3d/filtershow/state/StateView;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/android/gallery3d/filtershow/state/StateView;->setVisibility(I)V

    goto/16 :goto_0

    .line 87
    :pswitch_3
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/state/DragListener;->mStatePanelTrack:Lcom/android/gallery3d/filtershow/state/PanelTrack;

    invoke-interface {v6}, Lcom/android/gallery3d/filtershow/state/PanelTrack;->getCurrentView()Lcom/android/gallery3d/filtershow/state/StateView;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 88
    invoke-direct {p0, p2}, Lcom/android/gallery3d/filtershow/state/DragListener;->setState(Landroid/view/DragEvent;)V

    .line 89
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/state/DragListener;->mStatePanelTrack:Lcom/android/gallery3d/filtershow/state/PanelTrack;

    invoke-interface {v6}, Lcom/android/gallery3d/filtershow/state/PanelTrack;->getCurrentView()Lcom/android/gallery3d/filtershow/state/StateView;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/android/gallery3d/filtershow/state/StateView;->setVisibility(I)V

    .line 91
    :cond_1
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/state/DragListener;->mStatePanelTrack:Lcom/android/gallery3d/filtershow/state/PanelTrack;

    invoke-interface {v6, v10}, Lcom/android/gallery3d/filtershow/state/PanelTrack;->setExited(Z)V

    goto/16 :goto_0

    .line 98
    :pswitch_4
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/state/DragListener;->mStatePanelTrack:Lcom/android/gallery3d/filtershow/state/PanelTrack;

    invoke-interface {v6}, Lcom/android/gallery3d/filtershow/state/PanelTrack;->getCurrentView()Lcom/android/gallery3d/filtershow/state/StateView;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/gallery3d/filtershow/state/DragListener;->mStatePanelTrack:Lcom/android/gallery3d/filtershow/state/PanelTrack;

    invoke-interface {v6}, Lcom/android/gallery3d/filtershow/state/PanelTrack;->getCurrentView()Lcom/android/gallery3d/filtershow/state/StateView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/gallery3d/filtershow/state/StateView;->getAlpha()F

    move-result v6

    sget v7, Lcom/android/gallery3d/filtershow/state/DragListener;->sSlope:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    .line 100
    invoke-direct {p0, p2}, Lcom/android/gallery3d/filtershow/state/DragListener;->setState(Landroid/view/DragEvent;)V

    .line 102
    :cond_2
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/state/DragListener;->mStatePanelTrack:Lcom/android/gallery3d/filtershow/state/PanelTrack;

    invoke-interface {v6}, Lcom/android/gallery3d/filtershow/state/PanelTrack;->checkEndState()V

    goto/16 :goto_0

    .line 51
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
