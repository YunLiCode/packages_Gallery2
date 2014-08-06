.class Lcom/android/gallery3d/filtershow/state/StatePanelTrack$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "StatePanelTrack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/state/StatePanelTrack;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/filtershow/state/StatePanelTrack;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/state/StatePanelTrack;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack$2;->this$0:Lcom/android/gallery3d/filtershow/state/StatePanelTrack;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack$2;->this$0:Lcom/android/gallery3d/filtershow/state/StatePanelTrack;

    # invokes: Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->addDuplicate(Landroid/view/MotionEvent;)V
    invoke-static {v0, p1}, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->access$100(Lcom/android/gallery3d/filtershow/state/StatePanelTrack;Landroid/view/MotionEvent;)V

    .line 100
    const/4 v0, 0x1

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack$2;->this$0:Lcom/android/gallery3d/filtershow/state/StatePanelTrack;

    # invokes: Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->longPress(Landroid/view/MotionEvent;)V
    invoke-static {v0, p1}, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->access$000(Lcom/android/gallery3d/filtershow/state/StatePanelTrack;Landroid/view/MotionEvent;)V

    .line 96
    return-void
.end method
