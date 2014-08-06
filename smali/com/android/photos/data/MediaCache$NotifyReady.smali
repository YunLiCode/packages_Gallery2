.class interface abstract Lcom/android/photos/data/MediaCache$NotifyReady;
.super Ljava/lang/Object;
.source "MediaCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/photos/data/MediaCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "NotifyReady"
.end annotation


# virtual methods
.method public abstract isPrefetch()Z
.end method

.method public abstract notifyReady()V
.end method

.method public abstract setFile(Ljava/io/File;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method
