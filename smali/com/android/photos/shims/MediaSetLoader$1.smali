.class final Lcom/android/photos/shims/MediaSetLoader$1;
.super Ljava/lang/Object;
.source "MediaSetLoader.java"

# interfaces
.implements Lcom/android/gallery3d/data/MediaSet$SyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/photos/shims/MediaSetLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSyncDone(Lcom/android/gallery3d/data/MediaSet;I)V
    .locals 0
    .param p1, "mediaSet"    # Lcom/android/gallery3d/data/MediaSet;
    .param p2, "resultCode"    # I

    .prologue
    .line 47
    return-void
.end method
