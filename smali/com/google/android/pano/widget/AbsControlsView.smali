.class public abstract Lcom/google/android/pano/widget/AbsControlsView;
.super Landroid/widget/FrameLayout;
.source "AbsControlsView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/pano/widget/AbsControlsView$Listener;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-virtual {p0}, Lcom/google/android/pano/widget/AbsControlsView;->initDefaults()V

    .line 31
    if-eqz p2, :cond_0

    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/google/android/pano/widget/AbsControlsView;->initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    :cond_0
    return-void
.end method


# virtual methods
.method public handlesHorizontalGestures()Z
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract initDefaults()V
.end method

.method protected abstract initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end method
