.class Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;
.super Ljava/lang/Object;
.source "PlaybackControlsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/pano/widget/PlaybackControlsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SeekTracker"
.end annotation


# instance fields
.field seeking:Z

.field final synthetic this$0:Lcom/google/android/pano/widget/PlaybackControlsView;

.field value:F


# direct methods
.method private constructor <init>(Lcom/google/android/pano/widget/PlaybackControlsView;)V
    .locals 1

    .prologue
    .line 143
    iput-object p1, p0, Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;->this$0:Lcom/google/android/pano/widget/PlaybackControlsView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;->seeking:Z

    .line 145
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;->value:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/pano/widget/PlaybackControlsView;Lcom/google/android/pano/widget/PlaybackControlsView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/pano/widget/PlaybackControlsView;
    .param p2, "x1"    # Lcom/google/android/pano/widget/PlaybackControlsView$1;

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;-><init>(Lcom/google/android/pano/widget/PlaybackControlsView;)V

    return-void
.end method
