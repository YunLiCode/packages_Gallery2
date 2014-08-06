.class Lcom/google/android/pano/dialog/ActionAdapter$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ActionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/pano/dialog/ActionAdapter;->prepareAndAnimateView(Landroid/view/View;FFIILandroid/view/animation/Interpolator;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/pano/dialog/ActionAdapter;

.field final synthetic val$action:Lcom/google/android/pano/dialog/Action;

.field final synthetic val$pressed:Z

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/google/android/pano/dialog/ActionAdapter;Landroid/view/View;ZLcom/google/android/pano/dialog/Action;)V
    .locals 0

    .prologue
    .line 311
    iput-object p1, p0, Lcom/google/android/pano/dialog/ActionAdapter$1;->this$0:Lcom/google/android/pano/dialog/ActionAdapter;

    iput-object p2, p0, Lcom/google/android/pano/dialog/ActionAdapter$1;->val$v:Landroid/view/View;

    iput-boolean p3, p0, Lcom/google/android/pano/dialog/ActionAdapter$1;->val$pressed:Z

    iput-object p4, p0, Lcom/google/android/pano/dialog/ActionAdapter$1;->val$action:Lcom/google/android/pano/dialog/Action;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 314
    iget-object v0, p0, Lcom/google/android/pano/dialog/ActionAdapter$1;->val$v:Landroid/view/View;

    if-nez v0, :cond_1

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 318
    :cond_1
    iget-object v0, p0, Lcom/google/android/pano/dialog/ActionAdapter$1;->val$v:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 319
    iget-boolean v0, p0, Lcom/google/android/pano/dialog/ActionAdapter$1;->val$pressed:Z

    if-eqz v0, :cond_2

    .line 320
    iget-object v0, p0, Lcom/google/android/pano/dialog/ActionAdapter$1;->this$0:Lcom/google/android/pano/dialog/ActionAdapter;

    # getter for: Lcom/google/android/pano/dialog/ActionAdapter;->mOnKeyListener:Lcom/google/android/pano/dialog/ActionAdapter$OnKeyListener;
    invoke-static {v0}, Lcom/google/android/pano/dialog/ActionAdapter;->access$000(Lcom/google/android/pano/dialog/ActionAdapter;)Lcom/google/android/pano/dialog/ActionAdapter$OnKeyListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/google/android/pano/dialog/ActionAdapter$1;->this$0:Lcom/google/android/pano/dialog/ActionAdapter;

    # getter for: Lcom/google/android/pano/dialog/ActionAdapter;->mOnKeyListener:Lcom/google/android/pano/dialog/ActionAdapter$OnKeyListener;
    invoke-static {v0}, Lcom/google/android/pano/dialog/ActionAdapter;->access$000(Lcom/google/android/pano/dialog/ActionAdapter;)Lcom/google/android/pano/dialog/ActionAdapter$OnKeyListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/pano/dialog/ActionAdapter$1;->val$action:Lcom/google/android/pano/dialog/Action;

    invoke-interface {v0, v1}, Lcom/google/android/pano/dialog/ActionAdapter$OnKeyListener;->onActionSelect(Lcom/google/android/pano/dialog/Action;)V

    goto :goto_0

    .line 324
    :cond_2
    iget-object v0, p0, Lcom/google/android/pano/dialog/ActionAdapter$1;->this$0:Lcom/google/android/pano/dialog/ActionAdapter;

    # getter for: Lcom/google/android/pano/dialog/ActionAdapter;->mOnKeyListener:Lcom/google/android/pano/dialog/ActionAdapter$OnKeyListener;
    invoke-static {v0}, Lcom/google/android/pano/dialog/ActionAdapter;->access$000(Lcom/google/android/pano/dialog/ActionAdapter;)Lcom/google/android/pano/dialog/ActionAdapter$OnKeyListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 325
    iget-object v0, p0, Lcom/google/android/pano/dialog/ActionAdapter$1;->this$0:Lcom/google/android/pano/dialog/ActionAdapter;

    # getter for: Lcom/google/android/pano/dialog/ActionAdapter;->mOnKeyListener:Lcom/google/android/pano/dialog/ActionAdapter$OnKeyListener;
    invoke-static {v0}, Lcom/google/android/pano/dialog/ActionAdapter;->access$000(Lcom/google/android/pano/dialog/ActionAdapter;)Lcom/google/android/pano/dialog/ActionAdapter$OnKeyListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/pano/dialog/ActionAdapter$1;->val$action:Lcom/google/android/pano/dialog/Action;

    invoke-interface {v0, v1}, Lcom/google/android/pano/dialog/ActionAdapter$OnKeyListener;->onActionUnselect(Lcom/google/android/pano/dialog/Action;)V

    .line 327
    :cond_3
    iget-object v0, p0, Lcom/google/android/pano/dialog/ActionAdapter$1;->this$0:Lcom/google/android/pano/dialog/ActionAdapter;

    # getter for: Lcom/google/android/pano/dialog/ActionAdapter;->mListener:Lcom/google/android/pano/dialog/ActionAdapter$Listener;
    invoke-static {v0}, Lcom/google/android/pano/dialog/ActionAdapter;->access$100(Lcom/google/android/pano/dialog/ActionAdapter;)Lcom/google/android/pano/dialog/ActionAdapter$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/google/android/pano/dialog/ActionAdapter$1;->this$0:Lcom/google/android/pano/dialog/ActionAdapter;

    # getter for: Lcom/google/android/pano/dialog/ActionAdapter;->mListener:Lcom/google/android/pano/dialog/ActionAdapter$Listener;
    invoke-static {v0}, Lcom/google/android/pano/dialog/ActionAdapter;->access$100(Lcom/google/android/pano/dialog/ActionAdapter;)Lcom/google/android/pano/dialog/ActionAdapter$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/pano/dialog/ActionAdapter$1;->val$action:Lcom/google/android/pano/dialog/Action;

    invoke-interface {v0, v1}, Lcom/google/android/pano/dialog/ActionAdapter$Listener;->onActionClicked(Lcom/google/android/pano/dialog/Action;)V

    goto :goto_0
.end method
