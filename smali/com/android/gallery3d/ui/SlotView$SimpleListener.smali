.class public Lcom/android/gallery3d/ui/SlotView$SimpleListener;
.super Ljava/lang/Object;
.source "SlotView.java"

# interfaces
.implements Lcom/android/gallery3d/ui/SlotView$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/SlotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 49
    return-void
.end method

.method public onLongTap(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 52
    return-void
.end method

.method public onScrollPositionChanged(II)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "total"    # I

    .prologue
    .line 53
    return-void
.end method

.method public onSingleTapUp(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 51
    return-void
.end method

.method public onUp(Z)V
    .locals 0
    .param p1, "followedByLongPress"    # Z

    .prologue
    .line 50
    return-void
.end method
