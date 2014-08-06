.class Lcom/android/photos/data/MediaCache$NotifyOriginalReady;
.super Ljava/lang/Object;
.source "MediaCache.java"

# interfaces
.implements Lcom/android/photos/data/MediaCache$NotifyReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/photos/data/MediaCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NotifyOriginalReady"
.end annotation


# instance fields
.field private final mCallback:Lcom/android/photos/data/MediaCache$OriginalReady;

.field private mFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/android/photos/data/MediaCache$OriginalReady;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/photos/data/MediaCache$OriginalReady;

    .prologue
    .line 118
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p1, p0, Lcom/android/photos/data/MediaCache$NotifyOriginalReady;->mCallback:Lcom/android/photos/data/MediaCache$OriginalReady;

    .line 120
    return-void
.end method


# virtual methods
.method public isPrefetch()Z
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/photos/data/MediaCache$NotifyOriginalReady;->mCallback:Lcom/android/photos/data/MediaCache$OriginalReady;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyReady()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/photos/data/MediaCache$NotifyOriginalReady;->mCallback:Lcom/android/photos/data/MediaCache$OriginalReady;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/photos/data/MediaCache$NotifyOriginalReady;->mCallback:Lcom/android/photos/data/MediaCache$OriginalReady;

    iget-object v1, p0, Lcom/android/photos/data/MediaCache$NotifyOriginalReady;->mFile:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/android/photos/data/MediaCache$OriginalReady;->originalReady(Ljava/io/File;)V

    .line 127
    :cond_0
    return-void
.end method

.method public setFile(Ljava/io/File;)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/photos/data/MediaCache$NotifyOriginalReady;->mFile:Ljava/io/File;

    .line 132
    return-void
.end method
