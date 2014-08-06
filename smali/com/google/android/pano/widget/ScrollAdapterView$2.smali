.class Lcom/google/android/pano/widget/ScrollAdapterView$2;
.super Ljava/lang/Object;
.source "ScrollAdapterView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/pano/widget/ScrollAdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/pano/widget/ScrollAdapterView;


# direct methods
.method constructor <init>(Lcom/google/android/pano/widget/ScrollAdapterView;)V
    .locals 0

    .prologue
    .line 955
    iput-object p1, p0, Lcom/google/android/pano/widget/ScrollAdapterView$2;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private runInternal()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 971
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView$2;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    # setter for: Lcom/google/android/pano/widget/ScrollAdapterView;->mScrollTaskRunning:Z
    invoke-static {v2, v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->access$802(Lcom/google/android/pano/widget/ScrollAdapterView;Z)Z

    .line 973
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView$2;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    # getter for: Lcom/google/android/pano/widget/ScrollAdapterView;->mDataSetChangedFlag:Z
    invoke-static {v2}, Lcom/google/android/pano/widget/ScrollAdapterView;->access$900(Lcom/google/android/pano/widget/ScrollAdapterView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 974
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView$2;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    # invokes: Lcom/google/android/pano/widget/ScrollAdapterView;->reset()V
    invoke-static {v2}, Lcom/google/android/pano/widget/ScrollAdapterView;->access$600(Lcom/google/android/pano/widget/ScrollAdapterView;)V

    .line 976
    :cond_0
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView$2;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    # getter for: Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapter:Lcom/google/android/pano/widget/ScrollAdapter;
    invoke-static {v2}, Lcom/google/android/pano/widget/ScrollAdapterView;->access$1000(Lcom/google/android/pano/widget/ScrollAdapterView;)Lcom/google/android/pano/widget/ScrollAdapter;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView$2;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    # getter for: Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapter:Lcom/google/android/pano/widget/ScrollAdapter;
    invoke-static {v2}, Lcom/google/android/pano/widget/ScrollAdapterView;->access$1000(Lcom/google/android/pano/widget/ScrollAdapterView;)Lcom/google/android/pano/widget/ScrollAdapter;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/pano/widget/ScrollAdapter;->getCount()I

    move-result v2

    if-nez v2, :cond_2

    .line 977
    :cond_1
    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView$2;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    invoke-virtual {v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->invalidate()V

    .line 1025
    :goto_0
    return-void

    .line 980
    :cond_2
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView$2;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    # getter for: Lcom/google/android/pano/widget/ScrollAdapterView;->mScrapView:Landroid/view/View;
    invoke-static {v2}, Lcom/google/android/pano/widget/ScrollAdapterView;->access$1100(Lcom/google/android/pano/widget/ScrollAdapterView;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_3

    .line 982
    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView$2;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    invoke-virtual {v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->requestLayout()V

    .line 983
    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView$2;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    # invokes: Lcom/google/android/pano/widget/ScrollAdapterView;->scheduleScrollTask()V
    invoke-static {v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->access$1200(Lcom/google/android/pano/widget/ScrollAdapterView;)V

    goto :goto_0

    .line 986
    :cond_3
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView$2;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    # invokes: Lcom/google/android/pano/widget/ScrollAdapterView;->restoreLoadingState()V
    invoke-static {v2}, Lcom/google/android/pano/widget/ScrollAdapterView;->access$1300(Lcom/google/android/pano/widget/ScrollAdapterView;)V

    .line 987
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView$2;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    # getter for: Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;
    invoke-static {v2}, Lcom/google/android/pano/widget/ScrollAdapterView;->access$1400(Lcom/google/android/pano/widget/ScrollAdapterView;)Lcom/google/android/pano/widget/ScrollController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/pano/widget/ScrollController;->computeAndSetScrollPosition()V

    .line 989
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView$2;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    invoke-virtual {v2}, Lcom/google/android/pano/widget/ScrollAdapterView;->getChildCount()I

    move-result v2

    if-nez v2, :cond_6

    const/4 v0, 0x1

    .line 991
    .local v0, "noChildBeforeFill":Z
    :goto_1
    if-nez v0, :cond_4

    .line 992
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView$2;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    # invokes: Lcom/google/android/pano/widget/ScrollAdapterView;->updateViewsLocations(Z)V
    invoke-static {v2, v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->access$1500(Lcom/google/android/pano/widget/ScrollAdapterView;Z)V

    .line 993
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView$2;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    # invokes: Lcom/google/android/pano/widget/ScrollAdapterView;->adjustSystemScrollPos()V
    invoke-static {v2}, Lcom/google/android/pano/widget/ScrollAdapterView;->access$1600(Lcom/google/android/pano/widget/ScrollAdapterView;)V

    .line 997
    :cond_4
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView$2;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    # invokes: Lcom/google/android/pano/widget/ScrollAdapterView;->pruneInvisibleViewsInLayout()V
    invoke-static {v2}, Lcom/google/android/pano/widget/ScrollAdapterView;->access$1700(Lcom/google/android/pano/widget/ScrollAdapterView;)V

    .line 1000
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView$2;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    # invokes: Lcom/google/android/pano/widget/ScrollAdapterView;->fillVisibleViewsInLayout()V
    invoke-static {v2}, Lcom/google/android/pano/widget/ScrollAdapterView;->access$1800(Lcom/google/android/pano/widget/ScrollAdapterView;)V

    .line 1002
    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView$2;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    invoke-virtual {v2}, Lcom/google/android/pano/widget/ScrollAdapterView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_5

    .line 1006
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView$2;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    # invokes: Lcom/google/android/pano/widget/ScrollAdapterView;->updateViewsLocations(Z)V
    invoke-static {v2, v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->access$1500(Lcom/google/android/pano/widget/ScrollAdapterView;Z)V

    .line 1007
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView$2;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    # invokes: Lcom/google/android/pano/widget/ScrollAdapterView;->adjustSystemScrollPos()V
    invoke-static {v2}, Lcom/google/android/pano/widget/ScrollAdapterView;->access$1600(Lcom/google/android/pano/widget/ScrollAdapterView;)V

    .line 1011
    :cond_5
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView$2;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    # invokes: Lcom/google/android/pano/widget/ScrollAdapterView;->scrollStateTransition(Z)V
    invoke-static {v2, v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->access$1900(Lcom/google/android/pano/widget/ScrollAdapterView;Z)V

    .line 1014
    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView$2;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    # invokes: Lcom/google/android/pano/widget/ScrollAdapterView;->fireScrollChange()V
    invoke-static {v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->access$2000(Lcom/google/android/pano/widget/ScrollAdapterView;)V

    .line 1015
    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView$2;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    # invokes: Lcom/google/android/pano/widget/ScrollAdapterView;->applyTransformations()V
    invoke-static {v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->access$2100(Lcom/google/android/pano/widget/ScrollAdapterView;)V

    .line 1018
    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView$2;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    # getter for: Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;
    invoke-static {v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->access$1400(Lcom/google/android/pano/widget/ScrollAdapterView;)Lcom/google/android/pano/widget/ScrollController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/pano/widget/ScrollController;->isFinished()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1019
    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView$2;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    # invokes: Lcom/google/android/pano/widget/ScrollAdapterView;->scheduleScrollTask()V
    invoke-static {v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->access$1200(Lcom/google/android/pano/widget/ScrollAdapterView;)V

    goto :goto_0

    .end local v0    # "noChildBeforeFill":Z
    :cond_6
    move v0, v1

    .line 989
    goto :goto_1

    .line 1022
    .restart local v0    # "noChildBeforeFill":Z
    :cond_7
    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView$2;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    invoke-virtual {v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->invalidate()V

    .line 1023
    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView$2;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    # invokes: Lcom/google/android/pano/widget/ScrollAdapterView;->fireItemChange()V
    invoke-static {v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->access$2200(Lcom/google/android/pano/widget/ScrollAdapterView;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 959
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollAdapterView$2;->runInternal()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 968
    :goto_0
    return-void

    .line 960
    :catch_0
    move-exception v0

    .line 961
    .local v0, "ex":Ljava/lang/RuntimeException;
    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView$2;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    # invokes: Lcom/google/android/pano/widget/ScrollAdapterView;->reset()V
    invoke-static {v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->access$600(Lcom/google/android/pano/widget/ScrollAdapterView;)V

    .line 962
    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView$2;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    # getter for: Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapterErrorHandler:Lcom/google/android/pano/widget/ScrollAdapterErrorHandler;
    invoke-static {v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->access$700(Lcom/google/android/pano/widget/ScrollAdapterView;)Lcom/google/android/pano/widget/ScrollAdapterErrorHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 963
    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView$2;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    # getter for: Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapterErrorHandler:Lcom/google/android/pano/widget/ScrollAdapterErrorHandler;
    invoke-static {v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->access$700(Lcom/google/android/pano/widget/ScrollAdapterView;)Lcom/google/android/pano/widget/ScrollAdapterErrorHandler;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/pano/widget/ScrollAdapterErrorHandler;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 965
    :cond_0
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method
